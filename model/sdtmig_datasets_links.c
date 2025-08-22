#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_datasets_links.h"



static sdtmig_datasets_links_t *sdtmig_datasets_links_create_internal(
    sdtmig_datasets_ref_t *self,
    sdtmig_product_ref_t *parent_product,
    sdtmig_datasets_ref_t *prior_version,
    list_t *datasets
    ) {
    sdtmig_datasets_links_t *sdtmig_datasets_links_local_var = malloc(sizeof(sdtmig_datasets_links_t));
    if (!sdtmig_datasets_links_local_var) {
        return NULL;
    }
    sdtmig_datasets_links_local_var->self = self;
    sdtmig_datasets_links_local_var->parent_product = parent_product;
    sdtmig_datasets_links_local_var->prior_version = prior_version;
    sdtmig_datasets_links_local_var->datasets = datasets;

    sdtmig_datasets_links_local_var->_library_owned = 1;
    return sdtmig_datasets_links_local_var;
}

__attribute__((deprecated)) sdtmig_datasets_links_t *sdtmig_datasets_links_create(
    sdtmig_datasets_ref_t *self,
    sdtmig_product_ref_t *parent_product,
    sdtmig_datasets_ref_t *prior_version,
    list_t *datasets
    ) {
    return sdtmig_datasets_links_create_internal (
        self,
        parent_product,
        prior_version,
        datasets
        );
}

void sdtmig_datasets_links_free(sdtmig_datasets_links_t *sdtmig_datasets_links) {
    if(NULL == sdtmig_datasets_links){
        return ;
    }
    if(sdtmig_datasets_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_datasets_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_datasets_links->self) {
        sdtmig_datasets_ref_free(sdtmig_datasets_links->self);
        sdtmig_datasets_links->self = NULL;
    }
    if (sdtmig_datasets_links->parent_product) {
        sdtmig_product_ref_free(sdtmig_datasets_links->parent_product);
        sdtmig_datasets_links->parent_product = NULL;
    }
    if (sdtmig_datasets_links->prior_version) {
        sdtmig_datasets_ref_free(sdtmig_datasets_links->prior_version);
        sdtmig_datasets_links->prior_version = NULL;
    }
    if (sdtmig_datasets_links->datasets) {
        list_ForEach(listEntry, sdtmig_datasets_links->datasets) {
            sdtmig_dataset_ref_element_free(listEntry->data);
        }
        list_freeList(sdtmig_datasets_links->datasets);
        sdtmig_datasets_links->datasets = NULL;
    }
    free(sdtmig_datasets_links);
}

cJSON *sdtmig_datasets_links_convertToJSON(sdtmig_datasets_links_t *sdtmig_datasets_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_datasets_links->self
    if(sdtmig_datasets_links->self) {
    cJSON *self_local_JSON = sdtmig_datasets_ref_convertToJSON(sdtmig_datasets_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_datasets_links->parent_product
    if(sdtmig_datasets_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtmig_product_ref_convertToJSON(sdtmig_datasets_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_datasets_links->prior_version
    if(sdtmig_datasets_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtmig_datasets_ref_convertToJSON(sdtmig_datasets_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_datasets_links->datasets
    if(sdtmig_datasets_links->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sdtmig_datasets_links->datasets) {
    list_ForEach(datasetsListEntry, sdtmig_datasets_links->datasets) {
    cJSON *itemLocal = sdtmig_dataset_ref_element_convertToJSON(datasetsListEntry->data);
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

sdtmig_datasets_links_t *sdtmig_datasets_links_parseFromJSON(cJSON *sdtmig_datasets_linksJSON){

    sdtmig_datasets_links_t *sdtmig_datasets_links_local_var = NULL;

    // define the local variable for sdtmig_datasets_links->self
    sdtmig_datasets_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtmig_datasets_links->parent_product
    sdtmig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtmig_datasets_links->prior_version
    sdtmig_datasets_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sdtmig_datasets_links->datasets
    list_t *datasetsList = NULL;

    // sdtmig_datasets_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtmig_datasets_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_datasets_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtmig_datasets_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtmig_datasets_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtmig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtmig_datasets_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtmig_datasets_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtmig_datasets_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sdtmig_datasets_links->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sdtmig_datasets_linksJSON, "datasets");
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
        sdtmig_dataset_ref_element_t *datasetsItem = sdtmig_dataset_ref_element_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    sdtmig_datasets_links_local_var = sdtmig_datasets_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        datasets ? datasetsList : NULL
        );

    return sdtmig_datasets_links_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_datasets_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtmig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtmig_datasets_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            sdtmig_dataset_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
