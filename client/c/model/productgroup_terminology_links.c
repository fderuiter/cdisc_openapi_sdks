#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_terminology_links.h"



static productgroup_terminology_links_t *productgroup_terminology_links_create_internal(
    productgroup_ref_t *self,
    list_t *packages
    ) {
    productgroup_terminology_links_t *productgroup_terminology_links_local_var = malloc(sizeof(productgroup_terminology_links_t));
    if (!productgroup_terminology_links_local_var) {
        return NULL;
    }
    productgroup_terminology_links_local_var->self = self;
    productgroup_terminology_links_local_var->packages = packages;

    productgroup_terminology_links_local_var->_library_owned = 1;
    return productgroup_terminology_links_local_var;
}

__attribute__((deprecated)) productgroup_terminology_links_t *productgroup_terminology_links_create(
    productgroup_ref_t *self,
    list_t *packages
    ) {
    return productgroup_terminology_links_create_internal (
        self,
        packages
        );
}

void productgroup_terminology_links_free(productgroup_terminology_links_t *productgroup_terminology_links) {
    if(NULL == productgroup_terminology_links){
        return ;
    }
    if(productgroup_terminology_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_terminology_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_terminology_links->self) {
        productgroup_ref_free(productgroup_terminology_links->self);
        productgroup_terminology_links->self = NULL;
    }
    if (productgroup_terminology_links->packages) {
        list_ForEach(listEntry, productgroup_terminology_links->packages) {
            ct_package_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_terminology_links->packages);
        productgroup_terminology_links->packages = NULL;
    }
    free(productgroup_terminology_links);
}

cJSON *productgroup_terminology_links_convertToJSON(productgroup_terminology_links_t *productgroup_terminology_links) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_terminology_links->self
    if(productgroup_terminology_links->self) {
    cJSON *self_local_JSON = productgroup_ref_convertToJSON(productgroup_terminology_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // productgroup_terminology_links->packages
    if(productgroup_terminology_links->packages) {
    cJSON *packages = cJSON_AddArrayToObject(item, "packages");
    if(packages == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *packagesListEntry;
    if (productgroup_terminology_links->packages) {
    list_ForEach(packagesListEntry, productgroup_terminology_links->packages) {
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

productgroup_terminology_links_t *productgroup_terminology_links_parseFromJSON(cJSON *productgroup_terminology_linksJSON){

    productgroup_terminology_links_t *productgroup_terminology_links_local_var = NULL;

    // define the local variable for productgroup_terminology_links->self
    productgroup_ref_t *self_local_nonprim = NULL;

    // define the local list for productgroup_terminology_links->packages
    list_t *packagesList = NULL;

    // productgroup_terminology_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(productgroup_terminology_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_ref_parseFromJSON(self); //nonprimitive
    }

    // productgroup_terminology_links->packages
    cJSON *packages = cJSON_GetObjectItemCaseSensitive(productgroup_terminology_linksJSON, "packages");
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


    productgroup_terminology_links_local_var = productgroup_terminology_links_create_internal (
        self ? self_local_nonprim : NULL,
        packages ? packagesList : NULL
        );

    return productgroup_terminology_links_local_var;
end:
    if (self_local_nonprim) {
        productgroup_ref_free(self_local_nonprim);
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
