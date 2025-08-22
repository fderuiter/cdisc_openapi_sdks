#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "default_search_response.h"



static default_search_response_t *default_search_response_create_internal(
    list_t *hits,
    double total_hits
    ) {
    default_search_response_t *default_search_response_local_var = malloc(sizeof(default_search_response_t));
    if (!default_search_response_local_var) {
        return NULL;
    }
    default_search_response_local_var->hits = hits;
    default_search_response_local_var->total_hits = total_hits;

    default_search_response_local_var->_library_owned = 1;
    return default_search_response_local_var;
}

__attribute__((deprecated)) default_search_response_t *default_search_response_create(
    list_t *hits,
    double total_hits
    ) {
    return default_search_response_create_internal (
        hits,
        total_hits
        );
}

void default_search_response_free(default_search_response_t *default_search_response) {
    if(NULL == default_search_response){
        return ;
    }
    if(default_search_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "default_search_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (default_search_response->hits) {
        list_ForEach(listEntry, default_search_response->hits) {
            default_search_response_hits_inner_free(listEntry->data);
        }
        list_freeList(default_search_response->hits);
        default_search_response->hits = NULL;
    }
    free(default_search_response);
}

cJSON *default_search_response_convertToJSON(default_search_response_t *default_search_response) {
    cJSON *item = cJSON_CreateObject();

    // default_search_response->hits
    if(default_search_response->hits) {
    cJSON *hits = cJSON_AddArrayToObject(item, "hits");
    if(hits == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *hitsListEntry;
    if (default_search_response->hits) {
    list_ForEach(hitsListEntry, default_search_response->hits) {
    cJSON *itemLocal = default_search_response_hits_inner_convertToJSON(hitsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(hits, itemLocal);
    }
    }
    }


    // default_search_response->total_hits
    if(default_search_response->total_hits) {
    if(cJSON_AddNumberToObject(item, "totalHits", default_search_response->total_hits) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

default_search_response_t *default_search_response_parseFromJSON(cJSON *default_search_responseJSON){

    default_search_response_t *default_search_response_local_var = NULL;

    // define the local list for default_search_response->hits
    list_t *hitsList = NULL;

    // default_search_response->hits
    cJSON *hits = cJSON_GetObjectItemCaseSensitive(default_search_responseJSON, "hits");
    if (cJSON_IsNull(hits)) {
        hits = NULL;
    }
    if (hits) { 
    cJSON *hits_local_nonprimitive = NULL;
    if(!cJSON_IsArray(hits)){
        goto end; //nonprimitive container
    }

    hitsList = list_createList();

    cJSON_ArrayForEach(hits_local_nonprimitive,hits )
    {
        if(!cJSON_IsObject(hits_local_nonprimitive)){
            goto end;
        }
        default_search_response_hits_inner_t *hitsItem = default_search_response_hits_inner_parseFromJSON(hits_local_nonprimitive);

        list_addElement(hitsList, hitsItem);
    }
    }

    // default_search_response->total_hits
    cJSON *total_hits = cJSON_GetObjectItemCaseSensitive(default_search_responseJSON, "totalHits");
    if (cJSON_IsNull(total_hits)) {
        total_hits = NULL;
    }
    if (total_hits) { 
    if(!cJSON_IsNumber(total_hits))
    {
    goto end; //Numeric
    }
    }


    default_search_response_local_var = default_search_response_create_internal (
        hits ? hitsList : NULL,
        total_hits ? total_hits->valuedouble : 0
        );

    return default_search_response_local_var;
end:
    if (hitsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, hitsList) {
            default_search_response_hits_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(hitsList);
        hitsList = NULL;
    }
    return NULL;

}
