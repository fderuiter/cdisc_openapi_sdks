#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_product_links.h"



static sendig_product_links_t *sendig_product_links_create_internal(
    sendig_product_ref_t *self,
    sdtm_product_ref_t *model,
    sendig_product_ref_t *prior_version
    ) {
    sendig_product_links_t *sendig_product_links_local_var = malloc(sizeof(sendig_product_links_t));
    if (!sendig_product_links_local_var) {
        return NULL;
    }
    sendig_product_links_local_var->self = self;
    sendig_product_links_local_var->model = model;
    sendig_product_links_local_var->prior_version = prior_version;

    sendig_product_links_local_var->_library_owned = 1;
    return sendig_product_links_local_var;
}

__attribute__((deprecated)) sendig_product_links_t *sendig_product_links_create(
    sendig_product_ref_t *self,
    sdtm_product_ref_t *model,
    sendig_product_ref_t *prior_version
    ) {
    return sendig_product_links_create_internal (
        self,
        model,
        prior_version
        );
}

void sendig_product_links_free(sendig_product_links_t *sendig_product_links) {
    if(NULL == sendig_product_links){
        return ;
    }
    if(sendig_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_product_links->self) {
        sendig_product_ref_free(sendig_product_links->self);
        sendig_product_links->self = NULL;
    }
    if (sendig_product_links->model) {
        sdtm_product_ref_free(sendig_product_links->model);
        sendig_product_links->model = NULL;
    }
    if (sendig_product_links->prior_version) {
        sendig_product_ref_free(sendig_product_links->prior_version);
        sendig_product_links->prior_version = NULL;
    }
    free(sendig_product_links);
}

cJSON *sendig_product_links_convertToJSON(sendig_product_links_t *sendig_product_links) {
    cJSON *item = cJSON_CreateObject();

    // sendig_product_links->self
    if(sendig_product_links->self) {
    cJSON *self_local_JSON = sendig_product_ref_convertToJSON(sendig_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_product_links->model
    if(sendig_product_links->model) {
    cJSON *model_local_JSON = sdtm_product_ref_convertToJSON(sendig_product_links->model);
    if(model_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "model", model_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_product_links->prior_version
    if(sendig_product_links->prior_version) {
    cJSON *prior_version_local_JSON = sendig_product_ref_convertToJSON(sendig_product_links->prior_version);
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

sendig_product_links_t *sendig_product_links_parseFromJSON(cJSON *sendig_product_linksJSON){

    sendig_product_links_t *sendig_product_links_local_var = NULL;

    // define the local variable for sendig_product_links->self
    sendig_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for sendig_product_links->model
    sdtm_product_ref_t *model_local_nonprim = NULL;

    // define the local variable for sendig_product_links->prior_version
    sendig_product_ref_t *prior_version_local_nonprim = NULL;

    // sendig_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sendig_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_product_ref_parseFromJSON(self); //nonprimitive
    }

    // sendig_product_links->model
    cJSON *model = cJSON_GetObjectItemCaseSensitive(sendig_product_linksJSON, "model");
    if (cJSON_IsNull(model)) {
        model = NULL;
    }
    if (model) { 
    model_local_nonprim = sdtm_product_ref_parseFromJSON(model); //nonprimitive
    }

    // sendig_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sendig_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sendig_product_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sendig_product_links_local_var = sendig_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        model ? model_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sendig_product_links_local_var;
end:
    if (self_local_nonprim) {
        sendig_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_local_nonprim) {
        sdtm_product_ref_free(model_local_nonprim);
        model_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sendig_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
