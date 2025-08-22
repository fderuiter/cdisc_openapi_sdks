#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_datasets_links.h"



static sendig_datasets_links_t *sendig_datasets_links_create_internal(
    sendig_datasets_ref_t *self,
    sendig_product_ref_t *parent_product,
    list_t *datasets
    ) {
    sendig_datasets_links_t *sendig_datasets_links_local_var = malloc(sizeof(sendig_datasets_links_t));
    if (!sendig_datasets_links_local_var) {
        return NULL;
    }
    sendig_datasets_links_local_var->self = self;
    sendig_datasets_links_local_var->parent_product = parent_product;
    sendig_datasets_links_local_var->datasets = datasets;

    sendig_datasets_links_local_var->_library_owned = 1;
    return sendig_datasets_links_local_var;
}

__attribute__((deprecated)) sendig_datasets_links_t *sendig_datasets_links_create(
    sendig_datasets_ref_t *self,
    sendig_product_ref_t *parent_product,
    list_t *datasets
    ) {
    return sendig_datasets_links_create_internal (
        self,
        parent_product,
        datasets
        );
}

void sendig_datasets_links_free(sendig_datasets_links_t *sendig_datasets_links) {
    if(NULL == sendig_datasets_links){
        return ;
    }
    if(sendig_datasets_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_datasets_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_datasets_links->self) {
        sendig_datasets_ref_free(sendig_datasets_links->self);
        sendig_datasets_links->self = NULL;
    }
    if (sendig_datasets_links->parent_product) {
        sendig_product_ref_free(sendig_datasets_links->parent_product);
        sendig_datasets_links->parent_product = NULL;
    }
    if (sendig_datasets_links->datasets) {
        list_ForEach(listEntry, sendig_datasets_links->datasets) {
            sendig_dataset_ref_element_free(listEntry->data);
        }
        list_freeList(sendig_datasets_links->datasets);
        sendig_datasets_links->datasets = NULL;
    }
    free(sendig_datasets_links);
}

cJSON *sendig_datasets_links_convertToJSON(sendig_datasets_links_t *sendig_datasets_links) {
    cJSON *item = cJSON_CreateObject();

    // sendig_datasets_links->self
    if(sendig_datasets_links->self) {
    cJSON *self_local_JSON = sendig_datasets_ref_convertToJSON(sendig_datasets_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_datasets_links->parent_product
    if(sendig_datasets_links->parent_product) {
    cJSON *parent_product_local_JSON = sendig_product_ref_convertToJSON(sendig_datasets_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_datasets_links->datasets
    if(sendig_datasets_links->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sendig_datasets_links->datasets) {
    list_ForEach(datasetsListEntry, sendig_datasets_links->datasets) {
    cJSON *itemLocal = sendig_dataset_ref_element_convertToJSON(datasetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(datasets, itemLocal);
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

sendig_datasets_links_t *sendig_datasets_links_parseFromJSON(cJSON *sendig_datasets_linksJSON){

    sendig_datasets_links_t *sendig_datasets_links_local_var = NULL;

    // define the local variable for sendig_datasets_links->self
    sendig_datasets_ref_t *self_local_nonprim = NULL;

    // define the local variable for sendig_datasets_links->parent_product
    sendig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local list for sendig_datasets_links->datasets
    list_t *datasetsList = NULL;

    // sendig_datasets_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sendig_datasets_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_datasets_ref_parseFromJSON(self); //nonprimitive
    }

    // sendig_datasets_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sendig_datasets_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sendig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sendig_datasets_links->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sendig_datasets_linksJSON, "datasets");
    if (cJSON_IsNull(datasets)) {
        datasets = NULL;
    }
    if (datasets) { 
    cJSON *datasets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(datasets)){
        goto end; //nonprimitive container
    }

    datasetsList = list_createList();

    cJSON_ArrayForEach(datasets_local_nonprimitive,datasets )
    {
        if(!cJSON_IsObject(datasets_local_nonprimitive)){
            goto end;
        }
        sendig_dataset_ref_element_t *datasetsItem = sendig_dataset_ref_element_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    sendig_datasets_links_local_var = sendig_datasets_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        datasets ? datasetsList : NULL
        );

    return sendig_datasets_links_local_var;
end:
    if (self_local_nonprim) {
        sendig_datasets_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sendig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            sendig_dataset_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
