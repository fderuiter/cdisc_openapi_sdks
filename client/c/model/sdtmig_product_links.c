#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_product_links.h"



static sdtmig_product_links_t *sdtmig_product_links_create_internal(
    sdtmig_product_ref_t *self,
    sdtm_product_ref_t *model,
    sdtmig_product_ref_t *prior_version
    ) {
    sdtmig_product_links_t *sdtmig_product_links_local_var = malloc(sizeof(sdtmig_product_links_t));
    if (!sdtmig_product_links_local_var) {
        return NULL;
    }
    sdtmig_product_links_local_var->self = self;
    sdtmig_product_links_local_var->model = model;
    sdtmig_product_links_local_var->prior_version = prior_version;

    sdtmig_product_links_local_var->_library_owned = 1;
    return sdtmig_product_links_local_var;
}

__attribute__((deprecated)) sdtmig_product_links_t *sdtmig_product_links_create(
    sdtmig_product_ref_t *self,
    sdtm_product_ref_t *model,
    sdtmig_product_ref_t *prior_version
    ) {
    return sdtmig_product_links_create_internal (
        self,
        model,
        prior_version
        );
}

void sdtmig_product_links_free(sdtmig_product_links_t *sdtmig_product_links) {
    if(NULL == sdtmig_product_links){
        return ;
    }
    if(sdtmig_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_product_links->self) {
        sdtmig_product_ref_free(sdtmig_product_links->self);
        sdtmig_product_links->self = NULL;
    }
    if (sdtmig_product_links->model) {
        sdtm_product_ref_free(sdtmig_product_links->model);
        sdtmig_product_links->model = NULL;
    }
    if (sdtmig_product_links->prior_version) {
        sdtmig_product_ref_free(sdtmig_product_links->prior_version);
        sdtmig_product_links->prior_version = NULL;
    }
    free(sdtmig_product_links);
}

cJSON *sdtmig_product_links_convertToJSON(sdtmig_product_links_t *sdtmig_product_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_product_links->self
    if(sdtmig_product_links->self) {
    cJSON *self_local_JSON = sdtmig_product_ref_convertToJSON(sdtmig_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_product_links->model
    if(sdtmig_product_links->model) {
    cJSON *model_local_JSON = sdtm_product_ref_convertToJSON(sdtmig_product_links->model);
    if(model_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "model", model_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_product_links->prior_version
    if(sdtmig_product_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtmig_product_ref_convertToJSON(sdtmig_product_links->prior_version);
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

sdtmig_product_links_t *sdtmig_product_links_parseFromJSON(cJSON *sdtmig_product_linksJSON){

    sdtmig_product_links_t *sdtmig_product_links_local_var = NULL;

    // define the local variable for sdtmig_product_links->self
    sdtmig_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtmig_product_links->model
    sdtm_product_ref_t *model_local_nonprim = NULL;

    // define the local variable for sdtmig_product_links->prior_version
    sdtmig_product_ref_t *prior_version_local_nonprim = NULL;

    // sdtmig_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtmig_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_product_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtmig_product_links->model
    cJSON *model = cJSON_GetObjectItemCaseSensitive(sdtmig_product_linksJSON, "model");
    if (cJSON_IsNull(model)) {
        model = NULL;
    }
    if (model) { 
    model_local_nonprim = sdtm_product_ref_parseFromJSON(model); //nonprimitive
    }

    // sdtmig_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtmig_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtmig_product_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtmig_product_links_local_var = sdtmig_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        model ? model_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtmig_product_links_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_local_nonprim) {
        sdtm_product_ref_free(model_local_nonprim);
        model_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtmig_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
