#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_data_collection_links.h"



static productgroup_data_collection_links_t *productgroup_data_collection_links_create_internal(
    productgroup_ref_t *self,
    list_t *cdash,
    list_t *cdashig
    ) {
    productgroup_data_collection_links_t *productgroup_data_collection_links_local_var = malloc(sizeof(productgroup_data_collection_links_t));
    if (!productgroup_data_collection_links_local_var) {
        return NULL;
    }
    productgroup_data_collection_links_local_var->self = self;
    productgroup_data_collection_links_local_var->cdash = cdash;
    productgroup_data_collection_links_local_var->cdashig = cdashig;

    productgroup_data_collection_links_local_var->_library_owned = 1;
    return productgroup_data_collection_links_local_var;
}

__attribute__((deprecated)) productgroup_data_collection_links_t *productgroup_data_collection_links_create(
    productgroup_ref_t *self,
    list_t *cdash,
    list_t *cdashig
    ) {
    return productgroup_data_collection_links_create_internal (
        self,
        cdash,
        cdashig
        );
}

void productgroup_data_collection_links_free(productgroup_data_collection_links_t *productgroup_data_collection_links) {
    if(NULL == productgroup_data_collection_links){
        return ;
    }
    if(productgroup_data_collection_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_data_collection_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_data_collection_links->self) {
        productgroup_ref_free(productgroup_data_collection_links->self);
        productgroup_data_collection_links->self = NULL;
    }
    if (productgroup_data_collection_links->cdash) {
        list_ForEach(listEntry, productgroup_data_collection_links->cdash) {
            cdash_product_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_data_collection_links->cdash);
        productgroup_data_collection_links->cdash = NULL;
    }
    if (productgroup_data_collection_links->cdashig) {
        list_ForEach(listEntry, productgroup_data_collection_links->cdashig) {
            cdashig_product_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_data_collection_links->cdashig);
        productgroup_data_collection_links->cdashig = NULL;
    }
    free(productgroup_data_collection_links);
}

cJSON *productgroup_data_collection_links_convertToJSON(productgroup_data_collection_links_t *productgroup_data_collection_links) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_data_collection_links->self
    if(productgroup_data_collection_links->self) {
    cJSON *self_local_JSON = productgroup_ref_convertToJSON(productgroup_data_collection_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // productgroup_data_collection_links->cdash
    if(productgroup_data_collection_links->cdash) {
    cJSON *cdash = cJSON_AddArrayToObject(item, "cdash");
    if(cdash == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *cdashListEntry;
    if (productgroup_data_collection_links->cdash) {
    list_ForEach(cdashListEntry, productgroup_data_collection_links->cdash) {
    cJSON *itemLocal = cdash_product_ref_element_convertToJSON(cdashListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(cdash, itemLocal);
    }
    }
    }


    // productgroup_data_collection_links->cdashig
    if(productgroup_data_collection_links->cdashig) {
    cJSON *cdashig = cJSON_AddArrayToObject(item, "cdashig");
    if(cdashig == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *cdashigListEntry;
    if (productgroup_data_collection_links->cdashig) {
    list_ForEach(cdashigListEntry, productgroup_data_collection_links->cdashig) {
    cJSON *itemLocal = cdashig_product_ref_element_convertToJSON(cdashigListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(cdashig, itemLocal);
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

productgroup_data_collection_links_t *productgroup_data_collection_links_parseFromJSON(cJSON *productgroup_data_collection_linksJSON){

    productgroup_data_collection_links_t *productgroup_data_collection_links_local_var = NULL;

    // define the local variable for productgroup_data_collection_links->self
    productgroup_ref_t *self_local_nonprim = NULL;

    // define the local list for productgroup_data_collection_links->cdash
    list_t *cdashList = NULL;

    // define the local list for productgroup_data_collection_links->cdashig
    list_t *cdashigList = NULL;

    // productgroup_data_collection_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(productgroup_data_collection_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_ref_parseFromJSON(self); //nonprimitive
    }

    // productgroup_data_collection_links->cdash
    cJSON *cdash = cJSON_GetObjectItemCaseSensitive(productgroup_data_collection_linksJSON, "cdash");
    if (cJSON_IsNull(cdash)) {
        cdash = NULL;
    }
    if (cdash) { 
    cJSON *cdash_local_nonprimitive = NULL;
    if(!cJSON_IsArray(cdash)){
        goto end; //nonprimitive container
    }

    cdashList = list_createList();

    cJSON_ArrayForEach(cdash_local_nonprimitive,cdash )
    {
        if(!cJSON_IsObject(cdash_local_nonprimitive)){
            goto end;
        }
        cdash_product_ref_element_t *cdashItem = cdash_product_ref_element_parseFromJSON(cdash_local_nonprimitive);

        list_addElement(cdashList, cdashItem);
    }
    }

    // productgroup_data_collection_links->cdashig
    cJSON *cdashig = cJSON_GetObjectItemCaseSensitive(productgroup_data_collection_linksJSON, "cdashig");
    if (cJSON_IsNull(cdashig)) {
        cdashig = NULL;
    }
    if (cdashig) { 
    cJSON *cdashig_local_nonprimitive = NULL;
    if(!cJSON_IsArray(cdashig)){
        goto end; //nonprimitive container
    }

    cdashigList = list_createList();

    cJSON_ArrayForEach(cdashig_local_nonprimitive,cdashig )
    {
        if(!cJSON_IsObject(cdashig_local_nonprimitive)){
            goto end;
        }
        cdashig_product_ref_element_t *cdashigItem = cdashig_product_ref_element_parseFromJSON(cdashig_local_nonprimitive);

        list_addElement(cdashigList, cdashigItem);
    }
    }


    productgroup_data_collection_links_local_var = productgroup_data_collection_links_create_internal (
        self ? self_local_nonprim : NULL,
        cdash ? cdashList : NULL,
        cdashig ? cdashigList : NULL
        );

    return productgroup_data_collection_links_local_var;
end:
    if (self_local_nonprim) {
        productgroup_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (cdashList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, cdashList) {
            cdash_product_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(cdashList);
        cdashList = NULL;
    }
    if (cdashigList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, cdashigList) {
            cdashig_product_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(cdashigList);
        cdashigList = NULL;
    }
    return NULL;

}
