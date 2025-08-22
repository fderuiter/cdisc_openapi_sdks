#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_product_links.h"



static adam_product_links_t *adam_product_links_create_internal(
    adam_product_ref_t *self,
    adam_product_ref_t *model,
    adam_product_ref_t *prior_version
    ) {
    adam_product_links_t *adam_product_links_local_var = malloc(sizeof(adam_product_links_t));
    if (!adam_product_links_local_var) {
        return NULL;
    }
    adam_product_links_local_var->self = self;
    adam_product_links_local_var->model = model;
    adam_product_links_local_var->prior_version = prior_version;

    adam_product_links_local_var->_library_owned = 1;
    return adam_product_links_local_var;
}

__attribute__((deprecated)) adam_product_links_t *adam_product_links_create(
    adam_product_ref_t *self,
    adam_product_ref_t *model,
    adam_product_ref_t *prior_version
    ) {
    return adam_product_links_create_internal (
        self,
        model,
        prior_version
        );
}

void adam_product_links_free(adam_product_links_t *adam_product_links) {
    if(NULL == adam_product_links){
        return ;
    }
    if(adam_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_product_links->self) {
        adam_product_ref_free(adam_product_links->self);
        adam_product_links->self = NULL;
    }
    if (adam_product_links->model) {
        adam_product_ref_free(adam_product_links->model);
        adam_product_links->model = NULL;
    }
    if (adam_product_links->prior_version) {
        adam_product_ref_free(adam_product_links->prior_version);
        adam_product_links->prior_version = NULL;
    }
    free(adam_product_links);
}

cJSON *adam_product_links_convertToJSON(adam_product_links_t *adam_product_links) {
    cJSON *item = cJSON_CreateObject();

    // adam_product_links->self
    if(adam_product_links->self) {
    cJSON *self_local_JSON = adam_product_ref_convertToJSON(adam_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_product_links->model
    if(adam_product_links->model) {
    cJSON *model_local_JSON = adam_product_ref_convertToJSON(adam_product_links->model);
    if(model_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "model", model_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_product_links->prior_version
    if(adam_product_links->prior_version) {
    cJSON *prior_version_local_JSON = adam_product_ref_convertToJSON(adam_product_links->prior_version);
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

adam_product_links_t *adam_product_links_parseFromJSON(cJSON *adam_product_linksJSON){

    adam_product_links_t *adam_product_links_local_var = NULL;

    // define the local variable for adam_product_links->self
    adam_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for adam_product_links->model
    adam_product_ref_t *model_local_nonprim = NULL;

    // define the local variable for adam_product_links->prior_version
    adam_product_ref_t *prior_version_local_nonprim = NULL;

    // adam_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(adam_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_product_ref_parseFromJSON(self); //nonprimitive
    }

    // adam_product_links->model
    cJSON *model = cJSON_GetObjectItemCaseSensitive(adam_product_linksJSON, "model");
    if (cJSON_IsNull(model)) {
        model = NULL;
    }
    if (model) { 
    model_local_nonprim = adam_product_ref_parseFromJSON(model); //nonprimitive
    }

    // adam_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(adam_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = adam_product_ref_parseFromJSON(prior_version); //nonprimitive
    }


    adam_product_links_local_var = adam_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        model ? model_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return adam_product_links_local_var;
end:
    if (self_local_nonprim) {
        adam_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_local_nonprim) {
        adam_product_ref_free(model_local_nonprim);
        model_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        adam_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
