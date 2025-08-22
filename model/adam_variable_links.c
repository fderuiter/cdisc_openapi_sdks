#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_variable_links.h"



static adam_variable_links_t *adam_variable_links_create_internal(
    adam_variable_ref_t *self,
    root_ct_codelist_ref_t *codelist,
    adam_product_ref_t *parent_product,
    adam_datastructure_ref_t *parent_datastructure,
    adam_varset_ref_t *parent_variable_set,
    adam_variable_ref_t *prior_version
    ) {
    adam_variable_links_t *adam_variable_links_local_var = malloc(sizeof(adam_variable_links_t));
    if (!adam_variable_links_local_var) {
        return NULL;
    }
    adam_variable_links_local_var->self = self;
    adam_variable_links_local_var->codelist = codelist;
    adam_variable_links_local_var->parent_product = parent_product;
    adam_variable_links_local_var->parent_datastructure = parent_datastructure;
    adam_variable_links_local_var->parent_variable_set = parent_variable_set;
    adam_variable_links_local_var->prior_version = prior_version;

    adam_variable_links_local_var->_library_owned = 1;
    return adam_variable_links_local_var;
}

__attribute__((deprecated)) adam_variable_links_t *adam_variable_links_create(
    adam_variable_ref_t *self,
    root_ct_codelist_ref_t *codelist,
    adam_product_ref_t *parent_product,
    adam_datastructure_ref_t *parent_datastructure,
    adam_varset_ref_t *parent_variable_set,
    adam_variable_ref_t *prior_version
    ) {
    return adam_variable_links_create_internal (
        self,
        codelist,
        parent_product,
        parent_datastructure,
        parent_variable_set,
        prior_version
        );
}

void adam_variable_links_free(adam_variable_links_t *adam_variable_links) {
    if(NULL == adam_variable_links){
        return ;
    }
    if(adam_variable_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_variable_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_variable_links->self) {
        adam_variable_ref_free(adam_variable_links->self);
        adam_variable_links->self = NULL;
    }
    if (adam_variable_links->codelist) {
        root_ct_codelist_ref_free(adam_variable_links->codelist);
        adam_variable_links->codelist = NULL;
    }
    if (adam_variable_links->parent_product) {
        adam_product_ref_free(adam_variable_links->parent_product);
        adam_variable_links->parent_product = NULL;
    }
    if (adam_variable_links->parent_datastructure) {
        adam_datastructure_ref_free(adam_variable_links->parent_datastructure);
        adam_variable_links->parent_datastructure = NULL;
    }
    if (adam_variable_links->parent_variable_set) {
        adam_varset_ref_free(adam_variable_links->parent_variable_set);
        adam_variable_links->parent_variable_set = NULL;
    }
    if (adam_variable_links->prior_version) {
        adam_variable_ref_free(adam_variable_links->prior_version);
        adam_variable_links->prior_version = NULL;
    }
    free(adam_variable_links);
}

cJSON *adam_variable_links_convertToJSON(adam_variable_links_t *adam_variable_links) {
    cJSON *item = cJSON_CreateObject();

    // adam_variable_links->self
    if(adam_variable_links->self) {
    cJSON *self_local_JSON = adam_variable_ref_convertToJSON(adam_variable_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_variable_links->codelist
    if(adam_variable_links->codelist) {
    cJSON *codelist_local_JSON = root_ct_codelist_ref_convertToJSON(adam_variable_links->codelist);
    if(codelist_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "codelist", codelist_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_variable_links->parent_product
    if(adam_variable_links->parent_product) {
    cJSON *parent_product_local_JSON = adam_product_ref_convertToJSON(adam_variable_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_variable_links->parent_datastructure
    if(adam_variable_links->parent_datastructure) {
    cJSON *parent_datastructure_local_JSON = adam_datastructure_ref_convertToJSON(adam_variable_links->parent_datastructure);
    if(parent_datastructure_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDatastructure", parent_datastructure_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_variable_links->parent_variable_set
    if(adam_variable_links->parent_variable_set) {
    cJSON *parent_variable_set_local_JSON = adam_varset_ref_convertToJSON(adam_variable_links->parent_variable_set);
    if(parent_variable_set_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentVariableSet", parent_variable_set_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_variable_links->prior_version
    if(adam_variable_links->prior_version) {
    cJSON *prior_version_local_JSON = adam_variable_ref_convertToJSON(adam_variable_links->prior_version);
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

adam_variable_links_t *adam_variable_links_parseFromJSON(cJSON *adam_variable_linksJSON){

    adam_variable_links_t *adam_variable_links_local_var = NULL;

    // define the local variable for adam_variable_links->self
    adam_variable_ref_t *self_local_nonprim = NULL;

    // define the local variable for adam_variable_links->codelist
    root_ct_codelist_ref_t *codelist_local_nonprim = NULL;

    // define the local variable for adam_variable_links->parent_product
    adam_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for adam_variable_links->parent_datastructure
    adam_datastructure_ref_t *parent_datastructure_local_nonprim = NULL;

    // define the local variable for adam_variable_links->parent_variable_set
    adam_varset_ref_t *parent_variable_set_local_nonprim = NULL;

    // define the local variable for adam_variable_links->prior_version
    adam_variable_ref_t *prior_version_local_nonprim = NULL;

    // adam_variable_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(adam_variable_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_variable_ref_parseFromJSON(self); //nonprimitive
    }

    // adam_variable_links->codelist
    cJSON *codelist = cJSON_GetObjectItemCaseSensitive(adam_variable_linksJSON, "codelist");
    if (cJSON_IsNull(codelist)) {
        codelist = NULL;
    }
    if (codelist) { 
    codelist_local_nonprim = root_ct_codelist_ref_parseFromJSON(codelist); //nonprimitive
    }

    // adam_variable_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(adam_variable_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = adam_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // adam_variable_links->parent_datastructure
    cJSON *parent_datastructure = cJSON_GetObjectItemCaseSensitive(adam_variable_linksJSON, "parentDatastructure");
    if (cJSON_IsNull(parent_datastructure)) {
        parent_datastructure = NULL;
    }
    if (parent_datastructure) { 
    parent_datastructure_local_nonprim = adam_datastructure_ref_parseFromJSON(parent_datastructure); //nonprimitive
    }

    // adam_variable_links->parent_variable_set
    cJSON *parent_variable_set = cJSON_GetObjectItemCaseSensitive(adam_variable_linksJSON, "parentVariableSet");
    if (cJSON_IsNull(parent_variable_set)) {
        parent_variable_set = NULL;
    }
    if (parent_variable_set) { 
    parent_variable_set_local_nonprim = adam_varset_ref_parseFromJSON(parent_variable_set); //nonprimitive
    }

    // adam_variable_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(adam_variable_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = adam_variable_ref_parseFromJSON(prior_version); //nonprimitive
    }


    adam_variable_links_local_var = adam_variable_links_create_internal (
        self ? self_local_nonprim : NULL,
        codelist ? codelist_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_datastructure ? parent_datastructure_local_nonprim : NULL,
        parent_variable_set ? parent_variable_set_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return adam_variable_links_local_var;
end:
    if (self_local_nonprim) {
        adam_variable_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (codelist_local_nonprim) {
        root_ct_codelist_ref_free(codelist_local_nonprim);
        codelist_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        adam_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_datastructure_local_nonprim) {
        adam_datastructure_ref_free(parent_datastructure_local_nonprim);
        parent_datastructure_local_nonprim = NULL;
    }
    if (parent_variable_set_local_nonprim) {
        adam_varset_ref_free(parent_variable_set_local_nonprim);
        parent_variable_set_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        adam_variable_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
