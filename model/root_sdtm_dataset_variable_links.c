#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_sdtm_dataset_variable_links.h"



static root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links_create_internal(
    root_sdtm_dataset_variable_ref_t *self,
    list_t *versions
    ) {
    root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links_local_var = malloc(sizeof(root_sdtm_dataset_variable_links_t));
    if (!root_sdtm_dataset_variable_links_local_var) {
        return NULL;
    }
    root_sdtm_dataset_variable_links_local_var->self = self;
    root_sdtm_dataset_variable_links_local_var->versions = versions;

    root_sdtm_dataset_variable_links_local_var->_library_owned = 1;
    return root_sdtm_dataset_variable_links_local_var;
}

__attribute__((deprecated)) root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links_create(
    root_sdtm_dataset_variable_ref_t *self,
    list_t *versions
    ) {
    return root_sdtm_dataset_variable_links_create_internal (
        self,
        versions
        );
}

void root_sdtm_dataset_variable_links_free(root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links) {
    if(NULL == root_sdtm_dataset_variable_links){
        return ;
    }
    if(root_sdtm_dataset_variable_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_sdtm_dataset_variable_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_sdtm_dataset_variable_links->self) {
        root_sdtm_dataset_variable_ref_free(root_sdtm_dataset_variable_links->self);
        root_sdtm_dataset_variable_links->self = NULL;
    }
    if (root_sdtm_dataset_variable_links->versions) {
        list_ForEach(listEntry, root_sdtm_dataset_variable_links->versions) {
            sdtm_dataset_variable_ref_version_free(listEntry->data);
        }
        list_freeList(root_sdtm_dataset_variable_links->versions);
        root_sdtm_dataset_variable_links->versions = NULL;
    }
    free(root_sdtm_dataset_variable_links);
}

cJSON *root_sdtm_dataset_variable_links_convertToJSON(root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links) {
    cJSON *item = cJSON_CreateObject();

    // root_sdtm_dataset_variable_links->self
    if(root_sdtm_dataset_variable_links->self) {
    cJSON *self_local_JSON = root_sdtm_dataset_variable_ref_convertToJSON(root_sdtm_dataset_variable_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // root_sdtm_dataset_variable_links->versions
    if(root_sdtm_dataset_variable_links->versions) {
    cJSON *versions = cJSON_AddArrayToObject(item, "versions");
    if(versions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *versionsListEntry;
    if (root_sdtm_dataset_variable_links->versions) {
    list_ForEach(versionsListEntry, root_sdtm_dataset_variable_links->versions) {
    cJSON *itemLocal = sdtm_dataset_variable_ref_version_convertToJSON(versionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(versions, itemLocal);
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

root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links_parseFromJSON(cJSON *root_sdtm_dataset_variable_linksJSON){

    root_sdtm_dataset_variable_links_t *root_sdtm_dataset_variable_links_local_var = NULL;

    // define the local variable for root_sdtm_dataset_variable_links->self
    root_sdtm_dataset_variable_ref_t *self_local_nonprim = NULL;

    // define the local list for root_sdtm_dataset_variable_links->versions
    list_t *versionsList = NULL;

    // root_sdtm_dataset_variable_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(root_sdtm_dataset_variable_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = root_sdtm_dataset_variable_ref_parseFromJSON(self); //nonprimitive
    }

    // root_sdtm_dataset_variable_links->versions
    cJSON *versions = cJSON_GetObjectItemCaseSensitive(root_sdtm_dataset_variable_linksJSON, "versions");
    if (cJSON_IsNull(versions)) {
        versions = NULL;
    }
    if (versions) { 
    cJSON *versions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(versions)){
        goto end; //nonprimitive container
    }

    versionsList = list_createList();

    cJSON_ArrayForEach(versions_local_nonprimitive,versions )
    {
        if(!cJSON_IsObject(versions_local_nonprimitive)){
            goto end;
        }
        sdtm_dataset_variable_ref_version_t *versionsItem = sdtm_dataset_variable_ref_version_parseFromJSON(versions_local_nonprimitive);

        list_addElement(versionsList, versionsItem);
    }
    }


    root_sdtm_dataset_variable_links_local_var = root_sdtm_dataset_variable_links_create_internal (
        self ? self_local_nonprim : NULL,
        versions ? versionsList : NULL
        );

    return root_sdtm_dataset_variable_links_local_var;
end:
    if (self_local_nonprim) {
        root_sdtm_dataset_variable_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (versionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, versionsList) {
            sdtm_dataset_variable_ref_version_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(versionsList);
        versionsList = NULL;
    }
    return NULL;

}
