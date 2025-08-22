#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_sdtmig_dataset_variable_links.h"



static root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_create_internal(
    root_sdtmig_dataset_variable_ref_t *self,
    list_t *versions
    ) {
    root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_local_var = malloc(sizeof(root_sdtmig_dataset_variable_links_t));
    if (!root_sdtmig_dataset_variable_links_local_var) {
        return NULL;
    }
    root_sdtmig_dataset_variable_links_local_var->self = self;
    root_sdtmig_dataset_variable_links_local_var->versions = versions;

    root_sdtmig_dataset_variable_links_local_var->_library_owned = 1;
    return root_sdtmig_dataset_variable_links_local_var;
}

__attribute__((deprecated)) root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_create(
    root_sdtmig_dataset_variable_ref_t *self,
    list_t *versions
    ) {
    return root_sdtmig_dataset_variable_links_create_internal (
        self,
        versions
        );
}

void root_sdtmig_dataset_variable_links_free(root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links) {
    if(NULL == root_sdtmig_dataset_variable_links){
        return ;
    }
    if(root_sdtmig_dataset_variable_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_sdtmig_dataset_variable_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_sdtmig_dataset_variable_links->self) {
        root_sdtmig_dataset_variable_ref_free(root_sdtmig_dataset_variable_links->self);
        root_sdtmig_dataset_variable_links->self = NULL;
    }
    if (root_sdtmig_dataset_variable_links->versions) {
        list_ForEach(listEntry, root_sdtmig_dataset_variable_links->versions) {
            sdtmig_dataset_variable_ref_version_free(listEntry->data);
        }
        list_freeList(root_sdtmig_dataset_variable_links->versions);
        root_sdtmig_dataset_variable_links->versions = NULL;
    }
    free(root_sdtmig_dataset_variable_links);
}

cJSON *root_sdtmig_dataset_variable_links_convertToJSON(root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links) {
    cJSON *item = cJSON_CreateObject();

    // root_sdtmig_dataset_variable_links->self
    if(root_sdtmig_dataset_variable_links->self) {
    cJSON *self_local_JSON = root_sdtmig_dataset_variable_ref_convertToJSON(root_sdtmig_dataset_variable_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // root_sdtmig_dataset_variable_links->versions
    if(root_sdtmig_dataset_variable_links->versions) {
    cJSON *versions = cJSON_AddArrayToObject(item, "versions");
    if(versions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *versionsListEntry;
    if (root_sdtmig_dataset_variable_links->versions) {
    list_ForEach(versionsListEntry, root_sdtmig_dataset_variable_links->versions) {
    cJSON *itemLocal = sdtmig_dataset_variable_ref_version_convertToJSON(versionsListEntry->data);
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

root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_parseFromJSON(cJSON *root_sdtmig_dataset_variable_linksJSON){

    root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_local_var = NULL;

    // define the local variable for root_sdtmig_dataset_variable_links->self
    root_sdtmig_dataset_variable_ref_t *self_local_nonprim = NULL;

    // define the local list for root_sdtmig_dataset_variable_links->versions
    list_t *versionsList = NULL;

    // root_sdtmig_dataset_variable_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(root_sdtmig_dataset_variable_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = root_sdtmig_dataset_variable_ref_parseFromJSON(self); //nonprimitive
    }

    // root_sdtmig_dataset_variable_links->versions
    cJSON *versions = cJSON_GetObjectItemCaseSensitive(root_sdtmig_dataset_variable_linksJSON, "versions");
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
        sdtmig_dataset_variable_ref_version_t *versionsItem = sdtmig_dataset_variable_ref_version_parseFromJSON(versions_local_nonprimitive);

        list_addElement(versionsList, versionsItem);
    }
    }


    root_sdtmig_dataset_variable_links_local_var = root_sdtmig_dataset_variable_links_create_internal (
        self ? self_local_nonprim : NULL,
        versions ? versionsList : NULL
        );

    return root_sdtmig_dataset_variable_links_local_var;
end:
    if (self_local_nonprim) {
        root_sdtmig_dataset_variable_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (versionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, versionsList) {
            sdtmig_dataset_variable_ref_version_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(versionsList);
        versionsList = NULL;
    }
    return NULL;

}
