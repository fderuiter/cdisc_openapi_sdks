#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_product_links.h"



static cdash_product_links_t *cdash_product_links_create_internal(
    cdash_product_ref_t *self,
    cdash_product_ref_t *prior_version
    ) {
    cdash_product_links_t *cdash_product_links_local_var = malloc(sizeof(cdash_product_links_t));
    if (!cdash_product_links_local_var) {
        return NULL;
    }
    cdash_product_links_local_var->self = self;
    cdash_product_links_local_var->prior_version = prior_version;

    cdash_product_links_local_var->_library_owned = 1;
    return cdash_product_links_local_var;
}

__attribute__((deprecated)) cdash_product_links_t *cdash_product_links_create(
    cdash_product_ref_t *self,
    cdash_product_ref_t *prior_version
    ) {
    return cdash_product_links_create_internal (
        self,
        prior_version
        );
}

void cdash_product_links_free(cdash_product_links_t *cdash_product_links) {
    if(NULL == cdash_product_links){
        return ;
    }
    if(cdash_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_product_links->self) {
        cdash_product_ref_free(cdash_product_links->self);
        cdash_product_links->self = NULL;
    }
    if (cdash_product_links->prior_version) {
        cdash_product_ref_free(cdash_product_links->prior_version);
        cdash_product_links->prior_version = NULL;
    }
    free(cdash_product_links);
}

cJSON *cdash_product_links_convertToJSON(cdash_product_links_t *cdash_product_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_product_links->self
    if(cdash_product_links->self) {
    cJSON *self_local_JSON = cdash_product_ref_convertToJSON(cdash_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_product_links->prior_version
    if(cdash_product_links->prior_version) {
    cJSON *prior_version_local_JSON = cdash_product_ref_convertToJSON(cdash_product_links->prior_version);
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

cdash_product_links_t *cdash_product_links_parseFromJSON(cJSON *cdash_product_linksJSON){

    cdash_product_links_t *cdash_product_links_local_var = NULL;

    // define the local variable for cdash_product_links->self
    cdash_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdash_product_links->prior_version
    cdash_product_ref_t *prior_version_local_nonprim = NULL;

    // cdash_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_product_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdash_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdash_product_ref_parseFromJSON(prior_version); //nonprimitive
    }


    cdash_product_links_local_var = cdash_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return cdash_product_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdash_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
