#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_domain_links.h"



static cdash_domain_links_t *cdash_domain_links_create_internal(
    cdash_domain_ref_t *self,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    cdash_domain_ref_t *prior_version
    ) {
    cdash_domain_links_t *cdash_domain_links_local_var = malloc(sizeof(cdash_domain_links_t));
    if (!cdash_domain_links_local_var) {
        return NULL;
    }
    cdash_domain_links_local_var->self = self;
    cdash_domain_links_local_var->parent_product = parent_product;
    cdash_domain_links_local_var->parent_class = parent_class;
    cdash_domain_links_local_var->prior_version = prior_version;

    cdash_domain_links_local_var->_library_owned = 1;
    return cdash_domain_links_local_var;
}

__attribute__((deprecated)) cdash_domain_links_t *cdash_domain_links_create(
    cdash_domain_ref_t *self,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    cdash_domain_ref_t *prior_version
    ) {
    return cdash_domain_links_create_internal (
        self,
        parent_product,
        parent_class,
        prior_version
        );
}

void cdash_domain_links_free(cdash_domain_links_t *cdash_domain_links) {
    if(NULL == cdash_domain_links){
        return ;
    }
    if(cdash_domain_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_domain_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_domain_links->self) {
        cdash_domain_ref_free(cdash_domain_links->self);
        cdash_domain_links->self = NULL;
    }
    if (cdash_domain_links->parent_product) {
        cdash_product_ref_free(cdash_domain_links->parent_product);
        cdash_domain_links->parent_product = NULL;
    }
    if (cdash_domain_links->parent_class) {
        cdash_class_ref_free(cdash_domain_links->parent_class);
        cdash_domain_links->parent_class = NULL;
    }
    if (cdash_domain_links->prior_version) {
        cdash_domain_ref_free(cdash_domain_links->prior_version);
        cdash_domain_links->prior_version = NULL;
    }
    free(cdash_domain_links);
}

cJSON *cdash_domain_links_convertToJSON(cdash_domain_links_t *cdash_domain_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_domain_links->self
    if(cdash_domain_links->self) {
    cJSON *self_local_JSON = cdash_domain_ref_convertToJSON(cdash_domain_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_links->parent_product
    if(cdash_domain_links->parent_product) {
    cJSON *parent_product_local_JSON = cdash_product_ref_convertToJSON(cdash_domain_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_links->parent_class
    if(cdash_domain_links->parent_class) {
    cJSON *parent_class_local_JSON = cdash_class_ref_convertToJSON(cdash_domain_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_links->prior_version
    if(cdash_domain_links->prior_version) {
    cJSON *prior_version_local_JSON = cdash_domain_ref_convertToJSON(cdash_domain_links->prior_version);
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

cdash_domain_links_t *cdash_domain_links_parseFromJSON(cJSON *cdash_domain_linksJSON){

    cdash_domain_links_t *cdash_domain_links_local_var = NULL;

    // define the local variable for cdash_domain_links->self
    cdash_domain_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdash_domain_links->parent_product
    cdash_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdash_domain_links->parent_class
    cdash_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for cdash_domain_links->prior_version
    cdash_domain_ref_t *prior_version_local_nonprim = NULL;

    // cdash_domain_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_domain_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_domain_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_domain_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdash_domain_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdash_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdash_domain_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdash_domain_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdash_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdash_domain_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdash_domain_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdash_domain_ref_parseFromJSON(prior_version); //nonprimitive
    }


    cdash_domain_links_local_var = cdash_domain_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return cdash_domain_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_domain_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdash_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdash_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdash_domain_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
