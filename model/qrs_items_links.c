#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_items_links.h"



static qrs_items_links_t *qrs_items_links_create_internal(
    qrs_items_ref_t *self,
    qrs_product_ref_t *parent_product,
    list_t *items
    ) {
    qrs_items_links_t *qrs_items_links_local_var = malloc(sizeof(qrs_items_links_t));
    if (!qrs_items_links_local_var) {
        return NULL;
    }
    qrs_items_links_local_var->self = self;
    qrs_items_links_local_var->parent_product = parent_product;
    qrs_items_links_local_var->items = items;

    qrs_items_links_local_var->_library_owned = 1;
    return qrs_items_links_local_var;
}

__attribute__((deprecated)) qrs_items_links_t *qrs_items_links_create(
    qrs_items_ref_t *self,
    qrs_product_ref_t *parent_product,
    list_t *items
    ) {
    return qrs_items_links_create_internal (
        self,
        parent_product,
        items
        );
}

void qrs_items_links_free(qrs_items_links_t *qrs_items_links) {
    if(NULL == qrs_items_links){
        return ;
    }
    if(qrs_items_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_items_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_items_links->self) {
        qrs_items_ref_free(qrs_items_links->self);
        qrs_items_links->self = NULL;
    }
    if (qrs_items_links->parent_product) {
        qrs_product_ref_free(qrs_items_links->parent_product);
        qrs_items_links->parent_product = NULL;
    }
    if (qrs_items_links->items) {
        list_ForEach(listEntry, qrs_items_links->items) {
            qrs_item_ref_element_free(listEntry->data);
        }
        list_freeList(qrs_items_links->items);
        qrs_items_links->items = NULL;
    }
    free(qrs_items_links);
}

cJSON *qrs_items_links_convertToJSON(qrs_items_links_t *qrs_items_links) {
    cJSON *item = cJSON_CreateObject();

    // qrs_items_links->self
    if(qrs_items_links->self) {
    cJSON *self_local_JSON = qrs_items_ref_convertToJSON(qrs_items_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_items_links->parent_product
    if(qrs_items_links->parent_product) {
    cJSON *parent_product_local_JSON = qrs_product_ref_convertToJSON(qrs_items_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_items_links->items
    if(qrs_items_links->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (qrs_items_links->items) {
    list_ForEach(itemsListEntry, qrs_items_links->items) {
    cJSON *itemLocal = qrs_item_ref_element_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
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

qrs_items_links_t *qrs_items_links_parseFromJSON(cJSON *qrs_items_linksJSON){

    qrs_items_links_t *qrs_items_links_local_var = NULL;

    // define the local variable for qrs_items_links->self
    qrs_items_ref_t *self_local_nonprim = NULL;

    // define the local variable for qrs_items_links->parent_product
    qrs_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local list for qrs_items_links->items
    list_t *itemsList = NULL;

    // qrs_items_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(qrs_items_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_items_ref_parseFromJSON(self); //nonprimitive
    }

    // qrs_items_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(qrs_items_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = qrs_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // qrs_items_links->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(qrs_items_linksJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        qrs_item_ref_element_t *itemsItem = qrs_item_ref_element_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }


    qrs_items_links_local_var = qrs_items_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        items ? itemsList : NULL
        );

    return qrs_items_links_local_var;
end:
    if (self_local_nonprim) {
        qrs_items_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        qrs_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            qrs_item_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
