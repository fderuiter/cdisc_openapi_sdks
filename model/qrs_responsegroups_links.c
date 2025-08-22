#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_responsegroups_links.h"



static qrs_responsegroups_links_t *qrs_responsegroups_links_create_internal(
    qrs_responsegroups_ref_t *self,
    list_t *responsegroups
    ) {
    qrs_responsegroups_links_t *qrs_responsegroups_links_local_var = malloc(sizeof(qrs_responsegroups_links_t));
    if (!qrs_responsegroups_links_local_var) {
        return NULL;
    }
    qrs_responsegroups_links_local_var->self = self;
    qrs_responsegroups_links_local_var->responsegroups = responsegroups;

    qrs_responsegroups_links_local_var->_library_owned = 1;
    return qrs_responsegroups_links_local_var;
}

__attribute__((deprecated)) qrs_responsegroups_links_t *qrs_responsegroups_links_create(
    qrs_responsegroups_ref_t *self,
    list_t *responsegroups
    ) {
    return qrs_responsegroups_links_create_internal (
        self,
        responsegroups
        );
}

void qrs_responsegroups_links_free(qrs_responsegroups_links_t *qrs_responsegroups_links) {
    if(NULL == qrs_responsegroups_links){
        return ;
    }
    if(qrs_responsegroups_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_responsegroups_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_responsegroups_links->self) {
        qrs_responsegroups_ref_free(qrs_responsegroups_links->self);
        qrs_responsegroups_links->self = NULL;
    }
    if (qrs_responsegroups_links->responsegroups) {
        list_ForEach(listEntry, qrs_responsegroups_links->responsegroups) {
            qrs_responsegroup_ref_element_free(listEntry->data);
        }
        list_freeList(qrs_responsegroups_links->responsegroups);
        qrs_responsegroups_links->responsegroups = NULL;
    }
    free(qrs_responsegroups_links);
}

cJSON *qrs_responsegroups_links_convertToJSON(qrs_responsegroups_links_t *qrs_responsegroups_links) {
    cJSON *item = cJSON_CreateObject();

    // qrs_responsegroups_links->self
    if(qrs_responsegroups_links->self) {
    cJSON *self_local_JSON = qrs_responsegroups_ref_convertToJSON(qrs_responsegroups_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_responsegroups_links->responsegroups
    if(qrs_responsegroups_links->responsegroups) {
    cJSON *responsegroups = cJSON_AddArrayToObject(item, "responsegroups");
    if(responsegroups == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *responsegroupsListEntry;
    if (qrs_responsegroups_links->responsegroups) {
    list_ForEach(responsegroupsListEntry, qrs_responsegroups_links->responsegroups) {
    cJSON *itemLocal = qrs_responsegroup_ref_element_convertToJSON(responsegroupsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(responsegroups, itemLocal);
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

qrs_responsegroups_links_t *qrs_responsegroups_links_parseFromJSON(cJSON *qrs_responsegroups_linksJSON){

    qrs_responsegroups_links_t *qrs_responsegroups_links_local_var = NULL;

    // define the local variable for qrs_responsegroups_links->self
    qrs_responsegroups_ref_t *self_local_nonprim = NULL;

    // define the local list for qrs_responsegroups_links->responsegroups
    list_t *responsegroupsList = NULL;

    // qrs_responsegroups_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(qrs_responsegroups_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_responsegroups_ref_parseFromJSON(self); //nonprimitive
    }

    // qrs_responsegroups_links->responsegroups
    cJSON *responsegroups = cJSON_GetObjectItemCaseSensitive(qrs_responsegroups_linksJSON, "responsegroups");
    if (cJSON_IsNull(responsegroups)) {
        responsegroups = NULL;
    }
    if (responsegroups) { 
    cJSON *responsegroups_local_nonprimitive = NULL;
    if(!cJSON_IsArray(responsegroups)){
        goto end; //nonprimitive container
    }

    responsegroupsList = list_createList();

    cJSON_ArrayForEach(responsegroups_local_nonprimitive,responsegroups )
    {
        if(!cJSON_IsObject(responsegroups_local_nonprimitive)){
            goto end;
        }
        qrs_responsegroup_ref_element_t *responsegroupsItem = qrs_responsegroup_ref_element_parseFromJSON(responsegroups_local_nonprimitive);

        list_addElement(responsegroupsList, responsegroupsItem);
    }
    }


    qrs_responsegroups_links_local_var = qrs_responsegroups_links_create_internal (
        self ? self_local_nonprim : NULL,
        responsegroups ? responsegroupsList : NULL
        );

    return qrs_responsegroups_links_local_var;
end:
    if (self_local_nonprim) {
        qrs_responsegroups_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (responsegroupsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, responsegroupsList) {
            qrs_responsegroup_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(responsegroupsList);
        responsegroupsList = NULL;
    }
    return NULL;

}
