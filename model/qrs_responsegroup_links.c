#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_responsegroup_links.h"



static qrs_responsegroup_links_t *qrs_responsegroup_links_create_internal(
    qrs_responsegroup_ref_t *self,
    list_t *responses
    ) {
    qrs_responsegroup_links_t *qrs_responsegroup_links_local_var = malloc(sizeof(qrs_responsegroup_links_t));
    if (!qrs_responsegroup_links_local_var) {
        return NULL;
    }
    qrs_responsegroup_links_local_var->self = self;
    qrs_responsegroup_links_local_var->responses = responses;

    qrs_responsegroup_links_local_var->_library_owned = 1;
    return qrs_responsegroup_links_local_var;
}

__attribute__((deprecated)) qrs_responsegroup_links_t *qrs_responsegroup_links_create(
    qrs_responsegroup_ref_t *self,
    list_t *responses
    ) {
    return qrs_responsegroup_links_create_internal (
        self,
        responses
        );
}

void qrs_responsegroup_links_free(qrs_responsegroup_links_t *qrs_responsegroup_links) {
    if(NULL == qrs_responsegroup_links){
        return ;
    }
    if(qrs_responsegroup_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_responsegroup_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_responsegroup_links->self) {
        qrs_responsegroup_ref_free(qrs_responsegroup_links->self);
        qrs_responsegroup_links->self = NULL;
    }
    if (qrs_responsegroup_links->responses) {
        list_ForEach(listEntry, qrs_responsegroup_links->responses) {
            qrs_responses_free(listEntry->data);
        }
        list_freeList(qrs_responsegroup_links->responses);
        qrs_responsegroup_links->responses = NULL;
    }
    free(qrs_responsegroup_links);
}

cJSON *qrs_responsegroup_links_convertToJSON(qrs_responsegroup_links_t *qrs_responsegroup_links) {
    cJSON *item = cJSON_CreateObject();

    // qrs_responsegroup_links->self
    if(qrs_responsegroup_links->self) {
    cJSON *self_local_JSON = qrs_responsegroup_ref_convertToJSON(qrs_responsegroup_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_responsegroup_links->responses
    if(qrs_responsegroup_links->responses) {
    cJSON *responses = cJSON_AddArrayToObject(item, "responses");
    if(responses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *responsesListEntry;
    if (qrs_responsegroup_links->responses) {
    list_ForEach(responsesListEntry, qrs_responsegroup_links->responses) {
    cJSON *itemLocal = qrs_responses_convertToJSON(responsesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(responses, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

qrs_responsegroup_links_t *qrs_responsegroup_links_parseFromJSON(cJSON *qrs_responsegroup_linksJSON){

    qrs_responsegroup_links_t *qrs_responsegroup_links_local_var = NULL;

    // define the local variable for qrs_responsegroup_links->self
    qrs_responsegroup_ref_t *self_local_nonprim = NULL;

    // define the local list for qrs_responsegroup_links->responses
    list_t *responsesList = NULL;

    // qrs_responsegroup_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(qrs_responsegroup_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_responsegroup_ref_parseFromJSON(self); //nonprimitive
    }

    // qrs_responsegroup_links->responses
    cJSON *responses = cJSON_GetObjectItemCaseSensitive(qrs_responsegroup_linksJSON, "responses");
    if (cJSON_IsNull(responses)) {
        responses = NULL;
    }
    if (responses) { 
    cJSON *responses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(responses)){
        goto end; //nonprimitive container
    }

    responsesList = list_createList();

    cJSON_ArrayForEach(responses_local_nonprimitive,responses )
    {
        if(!cJSON_IsObject(responses_local_nonprimitive)){
            goto end;
        }
        qrs_responses_t *responsesItem = qrs_responses_parseFromJSON(responses_local_nonprimitive);

        list_addElement(responsesList, responsesItem);
    }
    }


    qrs_responsegroup_links_local_var = qrs_responsegroup_links_create_internal (
        self ? self_local_nonprim : NULL,
        responses ? responsesList : NULL
        );

    return qrs_responsegroup_links_local_var;
end:
    if (self_local_nonprim) {
        qrs_responsegroup_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (responsesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, responsesList) {
            qrs_responses_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(responsesList);
        responsesList = NULL;
    }
    return NULL;

}
