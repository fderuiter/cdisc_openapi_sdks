#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_varset_links.h"



static adam_varset_links_t *adam_varset_links_create_internal(
    adam_varset_ref_t *self,
    adam_product_ref_t *parent_product,
    adam_datastructure_ref_t *parent_datastructure,
    adam_varset_ref_t *prior_version
    ) {
    adam_varset_links_t *adam_varset_links_local_var = malloc(sizeof(adam_varset_links_t));
    if (!adam_varset_links_local_var) {
        return NULL;
    }
    adam_varset_links_local_var->self = self;
    adam_varset_links_local_var->parent_product = parent_product;
    adam_varset_links_local_var->parent_datastructure = parent_datastructure;
    adam_varset_links_local_var->prior_version = prior_version;

    adam_varset_links_local_var->_library_owned = 1;
    return adam_varset_links_local_var;
}

__attribute__((deprecated)) adam_varset_links_t *adam_varset_links_create(
    adam_varset_ref_t *self,
    adam_product_ref_t *parent_product,
    adam_datastructure_ref_t *parent_datastructure,
    adam_varset_ref_t *prior_version
    ) {
    return adam_varset_links_create_internal (
        self,
        parent_product,
        parent_datastructure,
        prior_version
        );
}

void adam_varset_links_free(adam_varset_links_t *adam_varset_links) {
    if(NULL == adam_varset_links){
        return ;
    }
    if(adam_varset_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_varset_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_varset_links->self) {
        adam_varset_ref_free(adam_varset_links->self);
        adam_varset_links->self = NULL;
    }
    if (adam_varset_links->parent_product) {
        adam_product_ref_free(adam_varset_links->parent_product);
        adam_varset_links->parent_product = NULL;
    }
    if (adam_varset_links->parent_datastructure) {
        adam_datastructure_ref_free(adam_varset_links->parent_datastructure);
        adam_varset_links->parent_datastructure = NULL;
    }
    if (adam_varset_links->prior_version) {
        adam_varset_ref_free(adam_varset_links->prior_version);
        adam_varset_links->prior_version = NULL;
    }
    free(adam_varset_links);
}

cJSON *adam_varset_links_convertToJSON(adam_varset_links_t *adam_varset_links) {
    cJSON *item = cJSON_CreateObject();

    // adam_varset_links->self
    if(adam_varset_links->self) {
    cJSON *self_local_JSON = adam_varset_ref_convertToJSON(adam_varset_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_varset_links->parent_product
    if(adam_varset_links->parent_product) {
    cJSON *parent_product_local_JSON = adam_product_ref_convertToJSON(adam_varset_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_varset_links->parent_datastructure
    if(adam_varset_links->parent_datastructure) {
    cJSON *parent_datastructure_local_JSON = adam_datastructure_ref_convertToJSON(adam_varset_links->parent_datastructure);
    if(parent_datastructure_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDatastructure", parent_datastructure_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_varset_links->prior_version
    if(adam_varset_links->prior_version) {
    cJSON *prior_version_local_JSON = adam_varset_ref_convertToJSON(adam_varset_links->prior_version);
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

adam_varset_links_t *adam_varset_links_parseFromJSON(cJSON *adam_varset_linksJSON){

    adam_varset_links_t *adam_varset_links_local_var = NULL;

    // define the local variable for adam_varset_links->self
    adam_varset_ref_t *self_local_nonprim = NULL;

    // define the local variable for adam_varset_links->parent_product
    adam_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for adam_varset_links->parent_datastructure
    adam_datastructure_ref_t *parent_datastructure_local_nonprim = NULL;

    // define the local variable for adam_varset_links->prior_version
    adam_varset_ref_t *prior_version_local_nonprim = NULL;

    // adam_varset_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(adam_varset_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_varset_ref_parseFromJSON(self); //nonprimitive
    }

    // adam_varset_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(adam_varset_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = adam_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // adam_varset_links->parent_datastructure
    cJSON *parent_datastructure = cJSON_GetObjectItemCaseSensitive(adam_varset_linksJSON, "parentDatastructure");
    if (cJSON_IsNull(parent_datastructure)) {
        parent_datastructure = NULL;
    }
    if (parent_datastructure) { 
    parent_datastructure_local_nonprim = adam_datastructure_ref_parseFromJSON(parent_datastructure); //nonprimitive
    }

    // adam_varset_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(adam_varset_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = adam_varset_ref_parseFromJSON(prior_version); //nonprimitive
    }


    adam_varset_links_local_var = adam_varset_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_datastructure ? parent_datastructure_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return adam_varset_links_local_var;
end:
    if (self_local_nonprim) {
        adam_varset_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        adam_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_datastructure_local_nonprim) {
        adam_datastructure_ref_free(parent_datastructure_local_nonprim);
        parent_datastructure_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        adam_varset_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
