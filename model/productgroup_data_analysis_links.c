#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_data_analysis_links.h"



static productgroup_data_analysis_links_t *productgroup_data_analysis_links_create_internal(
    productgroup_ref_t *self,
    list_t *adam
    ) {
    productgroup_data_analysis_links_t *productgroup_data_analysis_links_local_var = malloc(sizeof(productgroup_data_analysis_links_t));
    if (!productgroup_data_analysis_links_local_var) {
        return NULL;
    }
    productgroup_data_analysis_links_local_var->self = self;
    productgroup_data_analysis_links_local_var->adam = adam;

    productgroup_data_analysis_links_local_var->_library_owned = 1;
    return productgroup_data_analysis_links_local_var;
}

__attribute__((deprecated)) productgroup_data_analysis_links_t *productgroup_data_analysis_links_create(
    productgroup_ref_t *self,
    list_t *adam
    ) {
    return productgroup_data_analysis_links_create_internal (
        self,
        adam
        );
}

void productgroup_data_analysis_links_free(productgroup_data_analysis_links_t *productgroup_data_analysis_links) {
    if(NULL == productgroup_data_analysis_links){
        return ;
    }
    if(productgroup_data_analysis_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_data_analysis_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_data_analysis_links->self) {
        productgroup_ref_free(productgroup_data_analysis_links->self);
        productgroup_data_analysis_links->self = NULL;
    }
    if (productgroup_data_analysis_links->adam) {
        list_ForEach(listEntry, productgroup_data_analysis_links->adam) {
            adam_product_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_data_analysis_links->adam);
        productgroup_data_analysis_links->adam = NULL;
    }
    free(productgroup_data_analysis_links);
}

cJSON *productgroup_data_analysis_links_convertToJSON(productgroup_data_analysis_links_t *productgroup_data_analysis_links) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_data_analysis_links->self
    if(productgroup_data_analysis_links->self) {
    cJSON *self_local_JSON = productgroup_ref_convertToJSON(productgroup_data_analysis_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // productgroup_data_analysis_links->adam
    if(productgroup_data_analysis_links->adam) {
    cJSON *adam = cJSON_AddArrayToObject(item, "adam");
    if(adam == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *adamListEntry;
    if (productgroup_data_analysis_links->adam) {
    list_ForEach(adamListEntry, productgroup_data_analysis_links->adam) {
    cJSON *itemLocal = adam_product_ref_element_convertToJSON(adamListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(adam, itemLocal);
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

productgroup_data_analysis_links_t *productgroup_data_analysis_links_parseFromJSON(cJSON *productgroup_data_analysis_linksJSON){

    productgroup_data_analysis_links_t *productgroup_data_analysis_links_local_var = NULL;

    // define the local variable for productgroup_data_analysis_links->self
    productgroup_ref_t *self_local_nonprim = NULL;

    // define the local list for productgroup_data_analysis_links->adam
    list_t *adamList = NULL;

    // productgroup_data_analysis_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(productgroup_data_analysis_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_ref_parseFromJSON(self); //nonprimitive
    }

    // productgroup_data_analysis_links->adam
    cJSON *adam = cJSON_GetObjectItemCaseSensitive(productgroup_data_analysis_linksJSON, "adam");
    if (cJSON_IsNull(adam)) {
        adam = NULL;
    }
    if (adam) { 
    cJSON *adam_local_nonprimitive = NULL;
    if(!cJSON_IsArray(adam)){
        goto end; //nonprimitive container
    }

    adamList = list_createList();

    cJSON_ArrayForEach(adam_local_nonprimitive,adam )
    {
        if(!cJSON_IsObject(adam_local_nonprimitive)){
            goto end;
        }
        adam_product_ref_element_t *adamItem = adam_product_ref_element_parseFromJSON(adam_local_nonprimitive);

        list_addElement(adamList, adamItem);
    }
    }


    productgroup_data_analysis_links_local_var = productgroup_data_analysis_links_create_internal (
        self ? self_local_nonprim : NULL,
        adam ? adamList : NULL
        );

    return productgroup_data_analysis_links_local_var;
end:
    if (self_local_nonprim) {
        productgroup_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (adamList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, adamList) {
            adam_product_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(adamList);
        adamList = NULL;
    }
    return NULL;

}
