#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_scenario_links.h"



static cdashig_scenario_links_t *cdashig_scenario_links_create_internal(
    cdashig_scenario_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    cdashig_domain_ref_t *parent_domain,
    cdashig_scenario_ref_t *prior_version
    ) {
    cdashig_scenario_links_t *cdashig_scenario_links_local_var = malloc(sizeof(cdashig_scenario_links_t));
    if (!cdashig_scenario_links_local_var) {
        return NULL;
    }
    cdashig_scenario_links_local_var->self = self;
    cdashig_scenario_links_local_var->parent_product = parent_product;
    cdashig_scenario_links_local_var->parent_class = parent_class;
    cdashig_scenario_links_local_var->parent_domain = parent_domain;
    cdashig_scenario_links_local_var->prior_version = prior_version;

    cdashig_scenario_links_local_var->_library_owned = 1;
    return cdashig_scenario_links_local_var;
}

__attribute__((deprecated)) cdashig_scenario_links_t *cdashig_scenario_links_create(
    cdashig_scenario_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    cdashig_domain_ref_t *parent_domain,
    cdashig_scenario_ref_t *prior_version
    ) {
    return cdashig_scenario_links_create_internal (
        self,
        parent_product,
        parent_class,
        parent_domain,
        prior_version
        );
}

void cdashig_scenario_links_free(cdashig_scenario_links_t *cdashig_scenario_links) {
    if(NULL == cdashig_scenario_links){
        return ;
    }
    if(cdashig_scenario_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_scenario_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_scenario_links->self) {
        cdashig_scenario_ref_free(cdashig_scenario_links->self);
        cdashig_scenario_links->self = NULL;
    }
    if (cdashig_scenario_links->parent_product) {
        cdashig_product_ref_free(cdashig_scenario_links->parent_product);
        cdashig_scenario_links->parent_product = NULL;
    }
    if (cdashig_scenario_links->parent_class) {
        cdashig_class_ref_free(cdashig_scenario_links->parent_class);
        cdashig_scenario_links->parent_class = NULL;
    }
    if (cdashig_scenario_links->parent_domain) {
        cdashig_domain_ref_free(cdashig_scenario_links->parent_domain);
        cdashig_scenario_links->parent_domain = NULL;
    }
    if (cdashig_scenario_links->prior_version) {
        cdashig_scenario_ref_free(cdashig_scenario_links->prior_version);
        cdashig_scenario_links->prior_version = NULL;
    }
    free(cdashig_scenario_links);
}

cJSON *cdashig_scenario_links_convertToJSON(cdashig_scenario_links_t *cdashig_scenario_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_scenario_links->self
    if(cdashig_scenario_links->self) {
    cJSON *self_local_JSON = cdashig_scenario_ref_convertToJSON(cdashig_scenario_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_links->parent_product
    if(cdashig_scenario_links->parent_product) {
    cJSON *parent_product_local_JSON = cdashig_product_ref_convertToJSON(cdashig_scenario_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_links->parent_class
    if(cdashig_scenario_links->parent_class) {
    cJSON *parent_class_local_JSON = cdashig_class_ref_convertToJSON(cdashig_scenario_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_links->parent_domain
    if(cdashig_scenario_links->parent_domain) {
    cJSON *parent_domain_local_JSON = cdashig_domain_ref_convertToJSON(cdashig_scenario_links->parent_domain);
    if(parent_domain_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDomain", parent_domain_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_links->prior_version
    if(cdashig_scenario_links->prior_version) {
    cJSON *prior_version_local_JSON = cdashig_scenario_ref_convertToJSON(cdashig_scenario_links->prior_version);
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

cdashig_scenario_links_t *cdashig_scenario_links_parseFromJSON(cJSON *cdashig_scenario_linksJSON){

    cdashig_scenario_links_t *cdashig_scenario_links_local_var = NULL;

    // define the local variable for cdashig_scenario_links->self
    cdashig_scenario_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_links->parent_product
    cdashig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_links->parent_class
    cdashig_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_links->parent_domain
    cdashig_domain_ref_t *parent_domain_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_links->prior_version
    cdashig_scenario_ref_t *prior_version_local_nonprim = NULL;

    // cdashig_scenario_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_scenario_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_scenario_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdashig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdashig_scenario_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdashig_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdashig_scenario_links->parent_domain
    cJSON *parent_domain = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_linksJSON, "parentDomain");
    if (cJSON_IsNull(parent_domain)) {
        parent_domain = NULL;
    }
    if (parent_domain) { 
    parent_domain_local_nonprim = cdashig_domain_ref_parseFromJSON(parent_domain); //nonprimitive
    }

    // cdashig_scenario_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdashig_scenario_ref_parseFromJSON(prior_version); //nonprimitive
    }


    cdashig_scenario_links_local_var = cdashig_scenario_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        parent_domain ? parent_domain_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return cdashig_scenario_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_scenario_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdashig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdashig_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (parent_domain_local_nonprim) {
        cdashig_domain_ref_free(parent_domain_local_nonprim);
        parent_domain_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdashig_scenario_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
