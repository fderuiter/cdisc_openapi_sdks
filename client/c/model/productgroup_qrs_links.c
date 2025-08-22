#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_qrs_links.h"



static productgroup_qrs_links_t *productgroup_qrs_links_create_internal(
    productgroup_ref_t *self,
    list_t *qrs
    ) {
    productgroup_qrs_links_t *productgroup_qrs_links_local_var = malloc(sizeof(productgroup_qrs_links_t));
    if (!productgroup_qrs_links_local_var) {
        return NULL;
    }
    productgroup_qrs_links_local_var->self = self;
    productgroup_qrs_links_local_var->qrs = qrs;

    productgroup_qrs_links_local_var->_library_owned = 1;
    return productgroup_qrs_links_local_var;
}

__attribute__((deprecated)) productgroup_qrs_links_t *productgroup_qrs_links_create(
    productgroup_ref_t *self,
    list_t *qrs
    ) {
    return productgroup_qrs_links_create_internal (
        self,
        qrs
        );
}

void productgroup_qrs_links_free(productgroup_qrs_links_t *productgroup_qrs_links) {
    if(NULL == productgroup_qrs_links){
        return ;
    }
    if(productgroup_qrs_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_qrs_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_qrs_links->self) {
        productgroup_ref_free(productgroup_qrs_links->self);
        productgroup_qrs_links->self = NULL;
    }
    if (productgroup_qrs_links->qrs) {
        list_ForEach(listEntry, productgroup_qrs_links->qrs) {
            qrs_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_qrs_links->qrs);
        productgroup_qrs_links->qrs = NULL;
    }
    free(productgroup_qrs_links);
}

cJSON *productgroup_qrs_links_convertToJSON(productgroup_qrs_links_t *productgroup_qrs_links) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_qrs_links->self
    if(productgroup_qrs_links->self) {
    cJSON *self_local_JSON = productgroup_ref_convertToJSON(productgroup_qrs_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // productgroup_qrs_links->qrs
    if(productgroup_qrs_links->qrs) {
    cJSON *qrs = cJSON_AddArrayToObject(item, "qrs");
    if(qrs == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *qrsListEntry;
    if (productgroup_qrs_links->qrs) {
    list_ForEach(qrsListEntry, productgroup_qrs_links->qrs) {
    cJSON *itemLocal = qrs_ref_element_convertToJSON(qrsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(qrs, itemLocal);
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

productgroup_qrs_links_t *productgroup_qrs_links_parseFromJSON(cJSON *productgroup_qrs_linksJSON){

    productgroup_qrs_links_t *productgroup_qrs_links_local_var = NULL;

    // define the local variable for productgroup_qrs_links->self
    productgroup_ref_t *self_local_nonprim = NULL;

    // define the local list for productgroup_qrs_links->qrs
    list_t *qrsList = NULL;

    // productgroup_qrs_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(productgroup_qrs_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_ref_parseFromJSON(self); //nonprimitive
    }

    // productgroup_qrs_links->qrs
    cJSON *qrs = cJSON_GetObjectItemCaseSensitive(productgroup_qrs_linksJSON, "qrs");
    if (cJSON_IsNull(qrs)) {
        qrs = NULL;
    }
    if (qrs) { 
    cJSON *qrs_local_nonprimitive = NULL;
    if(!cJSON_IsArray(qrs)){
        goto end; //nonprimitive container
    }

    qrsList = list_createList();

    cJSON_ArrayForEach(qrs_local_nonprimitive,qrs )
    {
        if(!cJSON_IsObject(qrs_local_nonprimitive)){
            goto end;
        }
        qrs_ref_element_t *qrsItem = qrs_ref_element_parseFromJSON(qrs_local_nonprimitive);

        list_addElement(qrsList, qrsItem);
    }
    }


    productgroup_qrs_links_local_var = productgroup_qrs_links_create_internal (
        self ? self_local_nonprim : NULL,
        qrs ? qrsList : NULL
        );

    return productgroup_qrs_links_local_var;
end:
    if (self_local_nonprim) {
        productgroup_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (qrsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, qrsList) {
            qrs_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(qrsList);
        qrsList = NULL;
    }
    return NULL;

}
