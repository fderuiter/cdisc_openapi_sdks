#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package_links.h"



static ct_package_links_t *ct_package_links_create_internal(
    ct_package_ref_t *self,
    ct_package_ref_t *prior_version
    ) {
    ct_package_links_t *ct_package_links_local_var = malloc(sizeof(ct_package_links_t));
    if (!ct_package_links_local_var) {
        return NULL;
    }
    ct_package_links_local_var->self = self;
    ct_package_links_local_var->prior_version = prior_version;

    ct_package_links_local_var->_library_owned = 1;
    return ct_package_links_local_var;
}

__attribute__((deprecated)) ct_package_links_t *ct_package_links_create(
    ct_package_ref_t *self,
    ct_package_ref_t *prior_version
    ) {
    return ct_package_links_create_internal (
        self,
        prior_version
        );
}

void ct_package_links_free(ct_package_links_t *ct_package_links) {
    if(NULL == ct_package_links){
        return ;
    }
    if(ct_package_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package_links->self) {
        ct_package_ref_free(ct_package_links->self);
        ct_package_links->self = NULL;
    }
    if (ct_package_links->prior_version) {
        ct_package_ref_free(ct_package_links->prior_version);
        ct_package_links->prior_version = NULL;
    }
    free(ct_package_links);
}

cJSON *ct_package_links_convertToJSON(ct_package_links_t *ct_package_links) {
    cJSON *item = cJSON_CreateObject();

    // ct_package_links->self
    if(ct_package_links->self) {
    cJSON *self_local_JSON = ct_package_ref_convertToJSON(ct_package_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_package_links->prior_version
    if(ct_package_links->prior_version) {
    cJSON *prior_version_local_JSON = ct_package_ref_convertToJSON(ct_package_links->prior_version);
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

ct_package_links_t *ct_package_links_parseFromJSON(cJSON *ct_package_linksJSON){

    ct_package_links_t *ct_package_links_local_var = NULL;

    // define the local variable for ct_package_links->self
    ct_package_ref_t *self_local_nonprim = NULL;

    // define the local variable for ct_package_links->prior_version
    ct_package_ref_t *prior_version_local_nonprim = NULL;

    // ct_package_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(ct_package_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = ct_package_ref_parseFromJSON(self); //nonprimitive
    }

    // ct_package_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(ct_package_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = ct_package_ref_parseFromJSON(prior_version); //nonprimitive
    }


    ct_package_links_local_var = ct_package_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return ct_package_links_local_var;
end:
    if (self_local_nonprim) {
        ct_package_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        ct_package_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
