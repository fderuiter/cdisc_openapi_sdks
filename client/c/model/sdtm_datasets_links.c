#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_datasets_links.h"



static sdtm_datasets_links_t *sdtm_datasets_links_create_internal(
    sdtm_datasets_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_datasets_ref_t *prior_version,
    list_t *datasets
    ) {
    sdtm_datasets_links_t *sdtm_datasets_links_local_var = malloc(sizeof(sdtm_datasets_links_t));
    if (!sdtm_datasets_links_local_var) {
        return NULL;
    }
    sdtm_datasets_links_local_var->self = self;
    sdtm_datasets_links_local_var->parent_product = parent_product;
    sdtm_datasets_links_local_var->prior_version = prior_version;
    sdtm_datasets_links_local_var->datasets = datasets;

    sdtm_datasets_links_local_var->_library_owned = 1;
    return sdtm_datasets_links_local_var;
}

__attribute__((deprecated)) sdtm_datasets_links_t *sdtm_datasets_links_create(
    sdtm_datasets_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_datasets_ref_t *prior_version,
    list_t *datasets
    ) {
    return sdtm_datasets_links_create_internal (
        self,
        parent_product,
        prior_version,
        datasets
        );
}

void sdtm_datasets_links_free(sdtm_datasets_links_t *sdtm_datasets_links) {
    if(NULL == sdtm_datasets_links){
        return ;
    }
    if(sdtm_datasets_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_datasets_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_datasets_links->self) {
        sdtm_datasets_ref_free(sdtm_datasets_links->self);
        sdtm_datasets_links->self = NULL;
    }
    if (sdtm_datasets_links->parent_product) {
        sdtm_product_ref_free(sdtm_datasets_links->parent_product);
        sdtm_datasets_links->parent_product = NULL;
    }
    if (sdtm_datasets_links->prior_version) {
        sdtm_datasets_ref_free(sdtm_datasets_links->prior_version);
        sdtm_datasets_links->prior_version = NULL;
    }
    if (sdtm_datasets_links->datasets) {
        list_ForEach(listEntry, sdtm_datasets_links->datasets) {
            sdtm_dataset_ref_element_free(listEntry->data);
        }
        list_freeList(sdtm_datasets_links->datasets);
        sdtm_datasets_links->datasets = NULL;
    }
    free(sdtm_datasets_links);
}

cJSON *sdtm_datasets_links_convertToJSON(sdtm_datasets_links_t *sdtm_datasets_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_datasets_links->self
    if(sdtm_datasets_links->self) {
    cJSON *self_local_JSON = sdtm_datasets_ref_convertToJSON(sdtm_datasets_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_datasets_links->parent_product
    if(sdtm_datasets_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtm_product_ref_convertToJSON(sdtm_datasets_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_datasets_links->prior_version
    if(sdtm_datasets_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_datasets_ref_convertToJSON(sdtm_datasets_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_datasets_links->datasets
    if(sdtm_datasets_links->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sdtm_datasets_links->datasets) {
    list_ForEach(datasetsListEntry, sdtm_datasets_links->datasets) {
    cJSON *itemLocal = sdtm_dataset_ref_element_convertToJSON(datasetsListEntry->data);
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

sdtm_datasets_links_t *sdtm_datasets_links_parseFromJSON(cJSON *sdtm_datasets_linksJSON){

    sdtm_datasets_links_t *sdtm_datasets_links_local_var = NULL;

    // define the local variable for sdtm_datasets_links->self
    sdtm_datasets_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_datasets_links->parent_product
    sdtm_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtm_datasets_links->prior_version
    sdtm_datasets_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sdtm_datasets_links->datasets
    list_t *datasetsList = NULL;

    // sdtm_datasets_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_datasets_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_datasets_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_datasets_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtm_datasets_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtm_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtm_datasets_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_datasets_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_datasets_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sdtm_datasets_links->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sdtm_datasets_linksJSON, "datasets");
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
        sdtm_dataset_ref_element_t *datasetsItem = sdtm_dataset_ref_element_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    sdtm_datasets_links_local_var = sdtm_datasets_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        datasets ? datasetsList : NULL
        );

    return sdtm_datasets_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_datasets_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtm_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_datasets_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            sdtm_dataset_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
