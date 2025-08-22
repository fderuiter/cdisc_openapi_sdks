#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_packages_links.h"



static ct_packages_links_t *ct_packages_links_create_internal(
    ct_packages_ref_t *self,
    list_t *packages
    ) {
    ct_packages_links_t *ct_packages_links_local_var = malloc(sizeof(ct_packages_links_t));
    if (!ct_packages_links_local_var) {
        return NULL;
    }
    ct_packages_links_local_var->self = self;
    ct_packages_links_local_var->packages = packages;

    ct_packages_links_local_var->_library_owned = 1;
    return ct_packages_links_local_var;
}

__attribute__((deprecated)) ct_packages_links_t *ct_packages_links_create(
    ct_packages_ref_t *self,
    list_t *packages
    ) {
    return ct_packages_links_create_internal (
        self,
        packages
        );
}

void ct_packages_links_free(ct_packages_links_t *ct_packages_links) {
    if(NULL == ct_packages_links){
        return ;
    }
    if(ct_packages_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_packages_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_packages_links->self) {
        ct_packages_ref_free(ct_packages_links->self);
        ct_packages_links->self = NULL;
    }
    if (ct_packages_links->packages) {
        list_ForEach(listEntry, ct_packages_links->packages) {
            ct_package_ref_element_free(listEntry->data);
        }
        list_freeList(ct_packages_links->packages);
        ct_packages_links->packages = NULL;
    }
    free(ct_packages_links);
}

cJSON *ct_packages_links_convertToJSON(ct_packages_links_t *ct_packages_links) {
    cJSON *item = cJSON_CreateObject();

    // ct_packages_links->self
    if(ct_packages_links->self) {
    cJSON *self_local_JSON = ct_packages_ref_convertToJSON(ct_packages_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_packages_links->packages
    if(ct_packages_links->packages) {
    cJSON *packages = cJSON_AddArrayToObject(item, "packages");
    if(packages == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *packagesListEntry;
    if (ct_packages_links->packages) {
    list_ForEach(packagesListEntry, ct_packages_links->packages) {
    cJSON *itemLocal = ct_package_ref_element_convertToJSON(packagesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(packages, itemLocal);
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

ct_packages_links_t *ct_packages_links_parseFromJSON(cJSON *ct_packages_linksJSON){

    ct_packages_links_t *ct_packages_links_local_var = NULL;

    // define the local variable for ct_packages_links->self
    ct_packages_ref_t *self_local_nonprim = NULL;

    // define the local list for ct_packages_links->packages
    list_t *packagesList = NULL;

    // ct_packages_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(ct_packages_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = ct_packages_ref_parseFromJSON(self); //nonprimitive
    }

    // ct_packages_links->packages
    cJSON *packages = cJSON_GetObjectItemCaseSensitive(ct_packages_linksJSON, "packages");
    if (cJSON_IsNull(packages)) {
        packages = NULL;
    }
    if (packages) { 
    cJSON *packages_local_nonprimitive = NULL;
    if(!cJSON_IsArray(packages)){
        goto end; //nonprimitive container
    }

    packagesList = list_createList();

    cJSON_ArrayForEach(packages_local_nonprimitive,packages )
    {
        if(!cJSON_IsObject(packages_local_nonprimitive)){
            goto end;
        }
        ct_package_ref_element_t *packagesItem = ct_package_ref_element_parseFromJSON(packages_local_nonprimitive);

        list_addElement(packagesList, packagesItem);
    }
    }


    ct_packages_links_local_var = ct_packages_links_create_internal (
        self ? self_local_nonprim : NULL,
        packages ? packagesList : NULL
        );

    return ct_packages_links_local_var;
end:
    if (self_local_nonprim) {
        ct_packages_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (packagesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, packagesList) {
            ct_package_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(packagesList);
        packagesList = NULL;
    }
    return NULL;

}
