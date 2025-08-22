#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_product_links.h"



static sdtm_product_links_t *sdtm_product_links_create_internal(
    sdtm_product_ref_t *self,
    sdtm_product_ref_t *prior_version
    ) {
    sdtm_product_links_t *sdtm_product_links_local_var = malloc(sizeof(sdtm_product_links_t));
    if (!sdtm_product_links_local_var) {
        return NULL;
    }
    sdtm_product_links_local_var->self = self;
    sdtm_product_links_local_var->prior_version = prior_version;

    sdtm_product_links_local_var->_library_owned = 1;
    return sdtm_product_links_local_var;
}

__attribute__((deprecated)) sdtm_product_links_t *sdtm_product_links_create(
    sdtm_product_ref_t *self,
    sdtm_product_ref_t *prior_version
    ) {
    return sdtm_product_links_create_internal (
        self,
        prior_version
        );
}

void sdtm_product_links_free(sdtm_product_links_t *sdtm_product_links) {
    if(NULL == sdtm_product_links){
        return ;
    }
    if(sdtm_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_product_links->self) {
        sdtm_product_ref_free(sdtm_product_links->self);
        sdtm_product_links->self = NULL;
    }
    if (sdtm_product_links->prior_version) {
        sdtm_product_ref_free(sdtm_product_links->prior_version);
        sdtm_product_links->prior_version = NULL;
    }
    free(sdtm_product_links);
}

cJSON *sdtm_product_links_convertToJSON(sdtm_product_links_t *sdtm_product_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_product_links->self
    if(sdtm_product_links->self) {
    cJSON *self_local_JSON = sdtm_product_ref_convertToJSON(sdtm_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_product_links->prior_version
    if(sdtm_product_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_product_ref_convertToJSON(sdtm_product_links->prior_version);
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

sdtm_product_links_t *sdtm_product_links_parseFromJSON(cJSON *sdtm_product_linksJSON){

    sdtm_product_links_t *sdtm_product_links_local_var = NULL;

    // define the local variable for sdtm_product_links->self
    sdtm_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_product_links->prior_version
    sdtm_product_ref_t *prior_version_local_nonprim = NULL;

    // sdtm_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_product_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_product_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtm_product_links_local_var = sdtm_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtm_product_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
