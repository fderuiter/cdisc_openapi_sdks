#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_dataset_variable_links.h"



static sdtm_dataset_variable_links_t *sdtm_dataset_variable_links_create_internal(
    sdtm_dataset_variable_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_dataset_ref_t *parent_dataset,
    root_sdtm_dataset_variable_ref_t *root_item,
    sdtm_dataset_variable_ref_t *prior_version
    ) {
    sdtm_dataset_variable_links_t *sdtm_dataset_variable_links_local_var = malloc(sizeof(sdtm_dataset_variable_links_t));
    if (!sdtm_dataset_variable_links_local_var) {
        return NULL;
    }
    sdtm_dataset_variable_links_local_var->self = self;
    sdtm_dataset_variable_links_local_var->parent_product = parent_product;
    sdtm_dataset_variable_links_local_var->parent_dataset = parent_dataset;
    sdtm_dataset_variable_links_local_var->root_item = root_item;
    sdtm_dataset_variable_links_local_var->prior_version = prior_version;

    sdtm_dataset_variable_links_local_var->_library_owned = 1;
    return sdtm_dataset_variable_links_local_var;
}

__attribute__((deprecated)) sdtm_dataset_variable_links_t *sdtm_dataset_variable_links_create(
    sdtm_dataset_variable_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_dataset_ref_t *parent_dataset,
    root_sdtm_dataset_variable_ref_t *root_item,
    sdtm_dataset_variable_ref_t *prior_version
    ) {
    return sdtm_dataset_variable_links_create_internal (
        self,
        parent_product,
        parent_dataset,
        root_item,
        prior_version
        );
}

void sdtm_dataset_variable_links_free(sdtm_dataset_variable_links_t *sdtm_dataset_variable_links) {
    if(NULL == sdtm_dataset_variable_links){
        return ;
    }
    if(sdtm_dataset_variable_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_dataset_variable_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_dataset_variable_links->self) {
        sdtm_dataset_variable_ref_free(sdtm_dataset_variable_links->self);
        sdtm_dataset_variable_links->self = NULL;
    }
    if (sdtm_dataset_variable_links->parent_product) {
        sdtm_product_ref_free(sdtm_dataset_variable_links->parent_product);
        sdtm_dataset_variable_links->parent_product = NULL;
    }
    if (sdtm_dataset_variable_links->parent_dataset) {
        sdtm_dataset_ref_free(sdtm_dataset_variable_links->parent_dataset);
        sdtm_dataset_variable_links->parent_dataset = NULL;
    }
    if (sdtm_dataset_variable_links->root_item) {
        root_sdtm_dataset_variable_ref_free(sdtm_dataset_variable_links->root_item);
        sdtm_dataset_variable_links->root_item = NULL;
    }
    if (sdtm_dataset_variable_links->prior_version) {
        sdtm_dataset_variable_ref_free(sdtm_dataset_variable_links->prior_version);
        sdtm_dataset_variable_links->prior_version = NULL;
    }
    free(sdtm_dataset_variable_links);
}

cJSON *sdtm_dataset_variable_links_convertToJSON(sdtm_dataset_variable_links_t *sdtm_dataset_variable_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_dataset_variable_links->self
    if(sdtm_dataset_variable_links->self) {
    cJSON *self_local_JSON = sdtm_dataset_variable_ref_convertToJSON(sdtm_dataset_variable_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_variable_links->parent_product
    if(sdtm_dataset_variable_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtm_product_ref_convertToJSON(sdtm_dataset_variable_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_variable_links->parent_dataset
    if(sdtm_dataset_variable_links->parent_dataset) {
    cJSON *parent_dataset_local_JSON = sdtm_dataset_ref_convertToJSON(sdtm_dataset_variable_links->parent_dataset);
    if(parent_dataset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDataset", parent_dataset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_variable_links->root_item
    if(sdtm_dataset_variable_links->root_item) {
    cJSON *root_item_local_JSON = root_sdtm_dataset_variable_ref_convertToJSON(sdtm_dataset_variable_links->root_item);
    if(root_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rootItem", root_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_variable_links->prior_version
    if(sdtm_dataset_variable_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_dataset_variable_ref_convertToJSON(sdtm_dataset_variable_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

sdtm_dataset_variable_links_t *sdtm_dataset_variable_links_parseFromJSON(cJSON *sdtm_dataset_variable_linksJSON){

    sdtm_dataset_variable_links_t *sdtm_dataset_variable_links_local_var = NULL;

    // define the local variable for sdtm_dataset_variable_links->self
    sdtm_dataset_variable_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_variable_links->parent_product
    sdtm_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_variable_links->parent_dataset
    sdtm_dataset_ref_t *parent_dataset_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_variable_links->root_item
    root_sdtm_dataset_variable_ref_t *root_item_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_variable_links->prior_version
    sdtm_dataset_variable_ref_t *prior_version_local_nonprim = NULL;

    // sdtm_dataset_variable_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variable_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_dataset_variable_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_dataset_variable_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variable_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtm_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtm_dataset_variable_links->parent_dataset
    cJSON *parent_dataset = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variable_linksJSON, "parentDataset");
    if (cJSON_IsNull(parent_dataset)) {
        parent_dataset = NULL;
    }
    if (parent_dataset) { 
    parent_dataset_local_nonprim = sdtm_dataset_ref_parseFromJSON(parent_dataset); //nonprimitive
    }

    // sdtm_dataset_variable_links->root_item
    cJSON *root_item = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variable_linksJSON, "rootItem");
    if (cJSON_IsNull(root_item)) {
        root_item = NULL;
    }
    if (root_item) { 
    root_item_local_nonprim = root_sdtm_dataset_variable_ref_parseFromJSON(root_item); //nonprimitive
    }

    // sdtm_dataset_variable_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variable_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_dataset_variable_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtm_dataset_variable_links_local_var = sdtm_dataset_variable_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_dataset ? parent_dataset_local_nonprim : NULL,
        root_item ? root_item_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtm_dataset_variable_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_dataset_variable_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtm_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_dataset_local_nonprim) {
        sdtm_dataset_ref_free(parent_dataset_local_nonprim);
        parent_dataset_local_nonprim = NULL;
    }
    if (root_item_local_nonprim) {
        root_sdtm_dataset_variable_ref_free(root_item_local_nonprim);
        root_item_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_dataset_variable_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
