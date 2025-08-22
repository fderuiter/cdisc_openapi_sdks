#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_dataset_links.h"



static sdtm_dataset_links_t *sdtm_dataset_links_create_internal(
    sdtm_dataset_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    sdtm_dataset_ref_t *prior_version
    ) {
    sdtm_dataset_links_t *sdtm_dataset_links_local_var = malloc(sizeof(sdtm_dataset_links_t));
    if (!sdtm_dataset_links_local_var) {
        return NULL;
    }
    sdtm_dataset_links_local_var->self = self;
    sdtm_dataset_links_local_var->parent_product = parent_product;
    sdtm_dataset_links_local_var->parent_class = parent_class;
    sdtm_dataset_links_local_var->prior_version = prior_version;

    sdtm_dataset_links_local_var->_library_owned = 1;
    return sdtm_dataset_links_local_var;
}

__attribute__((deprecated)) sdtm_dataset_links_t *sdtm_dataset_links_create(
    sdtm_dataset_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    sdtm_dataset_ref_t *prior_version
    ) {
    return sdtm_dataset_links_create_internal (
        self,
        parent_product,
        parent_class,
        prior_version
        );
}

void sdtm_dataset_links_free(sdtm_dataset_links_t *sdtm_dataset_links) {
    if(NULL == sdtm_dataset_links){
        return ;
    }
    if(sdtm_dataset_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_dataset_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_dataset_links->self) {
        sdtm_dataset_ref_free(sdtm_dataset_links->self);
        sdtm_dataset_links->self = NULL;
    }
    if (sdtm_dataset_links->parent_product) {
        sdtm_product_ref_free(sdtm_dataset_links->parent_product);
        sdtm_dataset_links->parent_product = NULL;
    }
    if (sdtm_dataset_links->parent_class) {
        sdtm_class_ref_free(sdtm_dataset_links->parent_class);
        sdtm_dataset_links->parent_class = NULL;
    }
    if (sdtm_dataset_links->prior_version) {
        sdtm_dataset_ref_free(sdtm_dataset_links->prior_version);
        sdtm_dataset_links->prior_version = NULL;
    }
    free(sdtm_dataset_links);
}

cJSON *sdtm_dataset_links_convertToJSON(sdtm_dataset_links_t *sdtm_dataset_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_dataset_links->self
    if(sdtm_dataset_links->self) {
    cJSON *self_local_JSON = sdtm_dataset_ref_convertToJSON(sdtm_dataset_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_links->parent_product
    if(sdtm_dataset_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtm_product_ref_convertToJSON(sdtm_dataset_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_links->parent_class
    if(sdtm_dataset_links->parent_class) {
    cJSON *parent_class_local_JSON = sdtm_class_ref_convertToJSON(sdtm_dataset_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset_links->prior_version
    if(sdtm_dataset_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_dataset_ref_convertToJSON(sdtm_dataset_links->prior_version);
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

sdtm_dataset_links_t *sdtm_dataset_links_parseFromJSON(cJSON *sdtm_dataset_linksJSON){

    sdtm_dataset_links_t *sdtm_dataset_links_local_var = NULL;

    // define the local variable for sdtm_dataset_links->self
    sdtm_dataset_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_links->parent_product
    sdtm_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_links->parent_class
    sdtm_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for sdtm_dataset_links->prior_version
    sdtm_dataset_ref_t *prior_version_local_nonprim = NULL;

    // sdtm_dataset_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_dataset_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_dataset_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtm_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtm_dataset_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = sdtm_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // sdtm_dataset_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_dataset_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtm_dataset_links_local_var = sdtm_dataset_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtm_dataset_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_dataset_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtm_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        sdtm_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_dataset_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
