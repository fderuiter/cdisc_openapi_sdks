#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_cdash_domain_field_links.h"



static root_cdash_domain_field_links_t *root_cdash_domain_field_links_create_internal(
    root_cdash_domain_field_ref_t *self,
    list_t *versions
    ) {
    root_cdash_domain_field_links_t *root_cdash_domain_field_links_local_var = malloc(sizeof(root_cdash_domain_field_links_t));
    if (!root_cdash_domain_field_links_local_var) {
        return NULL;
    }
    root_cdash_domain_field_links_local_var->self = self;
    root_cdash_domain_field_links_local_var->versions = versions;

    root_cdash_domain_field_links_local_var->_library_owned = 1;
    return root_cdash_domain_field_links_local_var;
}

__attribute__((deprecated)) root_cdash_domain_field_links_t *root_cdash_domain_field_links_create(
    root_cdash_domain_field_ref_t *self,
    list_t *versions
    ) {
    return root_cdash_domain_field_links_create_internal (
        self,
        versions
        );
}

void root_cdash_domain_field_links_free(root_cdash_domain_field_links_t *root_cdash_domain_field_links) {
    if(NULL == root_cdash_domain_field_links){
        return ;
    }
    if(root_cdash_domain_field_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_cdash_domain_field_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_cdash_domain_field_links->self) {
        root_cdash_domain_field_ref_free(root_cdash_domain_field_links->self);
        root_cdash_domain_field_links->self = NULL;
    }
    if (root_cdash_domain_field_links->versions) {
        list_ForEach(listEntry, root_cdash_domain_field_links->versions) {
            cdash_domain_field_ref_version_free(listEntry->data);
        }
        list_freeList(root_cdash_domain_field_links->versions);
        root_cdash_domain_field_links->versions = NULL;
    }
    free(root_cdash_domain_field_links);
}

cJSON *root_cdash_domain_field_links_convertToJSON(root_cdash_domain_field_links_t *root_cdash_domain_field_links) {
    cJSON *item = cJSON_CreateObject();

    // root_cdash_domain_field_links->self
    if(root_cdash_domain_field_links->self) {
    cJSON *self_local_JSON = root_cdash_domain_field_ref_convertToJSON(root_cdash_domain_field_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // root_cdash_domain_field_links->versions
    if(root_cdash_domain_field_links->versions) {
    cJSON *versions = cJSON_AddArrayToObject(item, "versions");
    if(versions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *versionsListEntry;
    if (root_cdash_domain_field_links->versions) {
    list_ForEach(versionsListEntry, root_cdash_domain_field_links->versions) {
    cJSON *itemLocal = cdash_domain_field_ref_version_convertToJSON(versionsListEntry->data);
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

root_cdash_domain_field_links_t *root_cdash_domain_field_links_parseFromJSON(cJSON *root_cdash_domain_field_linksJSON){

    root_cdash_domain_field_links_t *root_cdash_domain_field_links_local_var = NULL;

    // define the local variable for root_cdash_domain_field_links->self
    root_cdash_domain_field_ref_t *self_local_nonprim = NULL;

    // define the local list for root_cdash_domain_field_links->versions
    list_t *versionsList = NULL;

    // root_cdash_domain_field_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(root_cdash_domain_field_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = root_cdash_domain_field_ref_parseFromJSON(self); //nonprimitive
    }

    // root_cdash_domain_field_links->versions
    cJSON *versions = cJSON_GetObjectItemCaseSensitive(root_cdash_domain_field_linksJSON, "versions");
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
        cdash_domain_field_ref_version_t *versionsItem = cdash_domain_field_ref_version_parseFromJSON(versions_local_nonprimitive);

        list_addElement(versionsList, versionsItem);
    }
    }


    root_cdash_domain_field_links_local_var = root_cdash_domain_field_links_create_internal (
        self ? self_local_nonprim : NULL,
        versions ? versionsList : NULL
        );

    return root_cdash_domain_field_links_local_var;
end:
    if (self_local_nonprim) {
        root_cdash_domain_field_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (versionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, versionsList) {
            cdash_domain_field_ref_version_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(versionsList);
        versionsList = NULL;
    }
    return NULL;

}
