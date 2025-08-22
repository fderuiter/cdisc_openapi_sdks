#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_dataset_links.h"



static sdtmig_dataset_links_t *sdtmig_dataset_links_create_internal(
    sdtmig_dataset_ref_t *self,
    sdtm_dataset_ref_t *model_dataset,
    sdtmig_product_ref_t *parent_product,
    sdtmig_class_ref_t *parent_class,
    sdtmig_dataset_ref_t *prior_version
    ) {
    sdtmig_dataset_links_t *sdtmig_dataset_links_local_var = malloc(sizeof(sdtmig_dataset_links_t));
    if (!sdtmig_dataset_links_local_var) {
        return NULL;
    }
    sdtmig_dataset_links_local_var->self = self;
    sdtmig_dataset_links_local_var->model_dataset = model_dataset;
    sdtmig_dataset_links_local_var->parent_product = parent_product;
    sdtmig_dataset_links_local_var->parent_class = parent_class;
    sdtmig_dataset_links_local_var->prior_version = prior_version;

    sdtmig_dataset_links_local_var->_library_owned = 1;
    return sdtmig_dataset_links_local_var;
}

__attribute__((deprecated)) sdtmig_dataset_links_t *sdtmig_dataset_links_create(
    sdtmig_dataset_ref_t *self,
    sdtm_dataset_ref_t *model_dataset,
    sdtmig_product_ref_t *parent_product,
    sdtmig_class_ref_t *parent_class,
    sdtmig_dataset_ref_t *prior_version
    ) {
    return sdtmig_dataset_links_create_internal (
        self,
        model_dataset,
        parent_product,
        parent_class,
        prior_version
        );
}

void sdtmig_dataset_links_free(sdtmig_dataset_links_t *sdtmig_dataset_links) {
    if(NULL == sdtmig_dataset_links){
        return ;
    }
    if(sdtmig_dataset_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_dataset_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_dataset_links->self) {
        sdtmig_dataset_ref_free(sdtmig_dataset_links->self);
        sdtmig_dataset_links->self = NULL;
    }
    if (sdtmig_dataset_links->model_dataset) {
        sdtm_dataset_ref_free(sdtmig_dataset_links->model_dataset);
        sdtmig_dataset_links->model_dataset = NULL;
    }
    if (sdtmig_dataset_links->parent_product) {
        sdtmig_product_ref_free(sdtmig_dataset_links->parent_product);
        sdtmig_dataset_links->parent_product = NULL;
    }
    if (sdtmig_dataset_links->parent_class) {
        sdtmig_class_ref_free(sdtmig_dataset_links->parent_class);
        sdtmig_dataset_links->parent_class = NULL;
    }
    if (sdtmig_dataset_links->prior_version) {
        sdtmig_dataset_ref_free(sdtmig_dataset_links->prior_version);
        sdtmig_dataset_links->prior_version = NULL;
    }
    free(sdtmig_dataset_links);
}

cJSON *sdtmig_dataset_links_convertToJSON(sdtmig_dataset_links_t *sdtmig_dataset_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_dataset_links->self
    if(sdtmig_dataset_links->self) {
    cJSON *self_local_JSON = sdtmig_dataset_ref_convertToJSON(sdtmig_dataset_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_dataset_links->model_dataset
    if(sdtmig_dataset_links->model_dataset) {
    cJSON *model_dataset_local_JSON = sdtm_dataset_ref_convertToJSON(sdtmig_dataset_links->model_dataset);
    if(model_dataset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "modelDataset", model_dataset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_dataset_links->parent_product
    if(sdtmig_dataset_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtmig_product_ref_convertToJSON(sdtmig_dataset_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_dataset_links->parent_class
    if(sdtmig_dataset_links->parent_class) {
    cJSON *parent_class_local_JSON = sdtmig_class_ref_convertToJSON(sdtmig_dataset_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_dataset_links->prior_version
    if(sdtmig_dataset_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtmig_dataset_ref_convertToJSON(sdtmig_dataset_links->prior_version);
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

sdtmig_dataset_links_t *sdtmig_dataset_links_parseFromJSON(cJSON *sdtmig_dataset_linksJSON){

    sdtmig_dataset_links_t *sdtmig_dataset_links_local_var = NULL;

    // define the local variable for sdtmig_dataset_links->self
    sdtmig_dataset_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtmig_dataset_links->model_dataset
    sdtm_dataset_ref_t *model_dataset_local_nonprim = NULL;

    // define the local variable for sdtmig_dataset_links->parent_product
    sdtmig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtmig_dataset_links->parent_class
    sdtmig_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for sdtmig_dataset_links->prior_version
    sdtmig_dataset_ref_t *prior_version_local_nonprim = NULL;

    // sdtmig_dataset_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_dataset_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtmig_dataset_links->model_dataset
    cJSON *model_dataset = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_linksJSON, "modelDataset");
    if (cJSON_IsNull(model_dataset)) {
        model_dataset = NULL;
    }
    if (model_dataset) { 
    model_dataset_local_nonprim = sdtm_dataset_ref_parseFromJSON(model_dataset); //nonprimitive
    }

    // sdtmig_dataset_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtmig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtmig_dataset_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = sdtmig_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // sdtmig_dataset_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtmig_dataset_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtmig_dataset_links_local_var = sdtmig_dataset_links_create_internal (
        self ? self_local_nonprim : NULL,
        model_dataset ? model_dataset_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtmig_dataset_links_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_dataset_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_dataset_local_nonprim) {
        sdtm_dataset_ref_free(model_dataset_local_nonprim);
        model_dataset_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtmig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        sdtmig_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtmig_dataset_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
