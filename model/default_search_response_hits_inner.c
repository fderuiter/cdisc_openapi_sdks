#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "default_search_response_hits_inner.h"



static default_search_response_hits_inner_t *default_search_response_hits_inner_create_internal(
    char *href,
    char *type
    ) {
    default_search_response_hits_inner_t *default_search_response_hits_inner_local_var = malloc(sizeof(default_search_response_hits_inner_t));
    if (!default_search_response_hits_inner_local_var) {
        return NULL;
    }
    default_search_response_hits_inner_local_var->href = href;
    default_search_response_hits_inner_local_var->type = type;

    default_search_response_hits_inner_local_var->_library_owned = 1;
    return default_search_response_hits_inner_local_var;
}

__attribute__((deprecated)) default_search_response_hits_inner_t *default_search_response_hits_inner_create(
    char *href,
    char *type
    ) {
    return default_search_response_hits_inner_create_internal (
        href,
        type
        );
}

void default_search_response_hits_inner_free(default_search_response_hits_inner_t *default_search_response_hits_inner) {
    if(NULL == default_search_response_hits_inner){
        return ;
    }
    if(default_search_response_hits_inner->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "default_search_response_hits_inner_free");
        return ;
    }
    listEntry_t *listEntry;
    if (default_search_response_hits_inner->href) {
        free(default_search_response_hits_inner->href);
        default_search_response_hits_inner->href = NULL;
    }
    if (default_search_response_hits_inner->type) {
        free(default_search_response_hits_inner->type);
        default_search_response_hits_inner->type = NULL;
    }
    free(default_search_response_hits_inner);
}

cJSON *default_search_response_hits_inner_convertToJSON(default_search_response_hits_inner_t *default_search_response_hits_inner) {
    cJSON *item = cJSON_CreateObject();

    // default_search_response_hits_inner->href
    if (!default_search_response_hits_inner->href) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "href", default_search_response_hits_inner->href) == NULL) {
    goto fail; //String
    }


    // default_search_response_hits_inner->type
    if (!default_search_response_hits_inner->type) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "type", default_search_response_hits_inner->type) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

default_search_response_hits_inner_t *default_search_response_hits_inner_parseFromJSON(cJSON *default_search_response_hits_innerJSON){

    default_search_response_hits_inner_t *default_search_response_hits_inner_local_var = NULL;

    // default_search_response_hits_inner->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(default_search_response_hits_innerJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (!href) {
        goto end;
    }

    
    if(!cJSON_IsString(href))
    {
    goto end; //String
    }

    // default_search_response_hits_inner->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(default_search_response_hits_innerJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (!type) {
        goto end;
    }

    
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }


    default_search_response_hits_inner_local_var = default_search_response_hits_inner_create_internal (
        strdup(href->valuestring),
        strdup(type->valuestring)
        );

    return default_search_response_hits_inner_local_var;
end:
    return NULL;

}
