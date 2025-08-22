#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_product_links.h"



static cdashig_product_links_t *cdashig_product_links_create_internal(
    cdashig_product_ref_t *self,
    cdash_product_ref_t *model,
    cdashig_product_ref_t *prior_version
    ) {
    cdashig_product_links_t *cdashig_product_links_local_var = malloc(sizeof(cdashig_product_links_t));
    if (!cdashig_product_links_local_var) {
        return NULL;
    }
    cdashig_product_links_local_var->self = self;
    cdashig_product_links_local_var->model = model;
    cdashig_product_links_local_var->prior_version = prior_version;

    cdashig_product_links_local_var->_library_owned = 1;
    return cdashig_product_links_local_var;
}

__attribute__((deprecated)) cdashig_product_links_t *cdashig_product_links_create(
    cdashig_product_ref_t *self,
    cdash_product_ref_t *model,
    cdashig_product_ref_t *prior_version
    ) {
    return cdashig_product_links_create_internal (
        self,
        model,
        prior_version
        );
}

void cdashig_product_links_free(cdashig_product_links_t *cdashig_product_links) {
    if(NULL == cdashig_product_links){
        return ;
    }
    if(cdashig_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_product_links->self) {
        cdashig_product_ref_free(cdashig_product_links->self);
        cdashig_product_links->self = NULL;
    }
    if (cdashig_product_links->model) {
        cdash_product_ref_free(cdashig_product_links->model);
        cdashig_product_links->model = NULL;
    }
    if (cdashig_product_links->prior_version) {
        cdashig_product_ref_free(cdashig_product_links->prior_version);
        cdashig_product_links->prior_version = NULL;
    }
    free(cdashig_product_links);
}

cJSON *cdashig_product_links_convertToJSON(cdashig_product_links_t *cdashig_product_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_product_links->self
    if(cdashig_product_links->self) {
    cJSON *self_local_JSON = cdashig_product_ref_convertToJSON(cdashig_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_product_links->model
    if(cdashig_product_links->model) {
    cJSON *model_local_JSON = cdash_product_ref_convertToJSON(cdashig_product_links->model);
    if(model_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "model", model_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_product_links->prior_version
    if(cdashig_product_links->prior_version) {
    cJSON *prior_version_local_JSON = cdashig_product_ref_convertToJSON(cdashig_product_links->prior_version);
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

cdashig_product_links_t *cdashig_product_links_parseFromJSON(cJSON *cdashig_product_linksJSON){

    cdashig_product_links_t *cdashig_product_links_local_var = NULL;

    // define the local variable for cdashig_product_links->self
    cdashig_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdashig_product_links->model
    cdash_product_ref_t *model_local_nonprim = NULL;

    // define the local variable for cdashig_product_links->prior_version
    cdashig_product_ref_t *prior_version_local_nonprim = NULL;

    // cdashig_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_product_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_product_links->model
    cJSON *model = cJSON_GetObjectItemCaseSensitive(cdashig_product_linksJSON, "model");
    if (cJSON_IsNull(model)) {
        model = NULL;
    }
    if (model) { 
    model_local_nonprim = cdash_product_ref_parseFromJSON(model); //nonprimitive
    }

    // cdashig_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdashig_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdashig_product_ref_parseFromJSON(prior_version); //nonprimitive
    }


    cdashig_product_links_local_var = cdashig_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        model ? model_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return cdashig_product_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_local_nonprim) {
        cdash_product_ref_free(model_local_nonprim);
        model_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdashig_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
