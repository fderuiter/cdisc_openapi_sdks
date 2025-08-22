#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_codelist_links.h"



static ct_codelist_links_t *ct_codelist_links_create_internal(
    ct_codelist_ref_t *self,
    ct_package_ref_t *parent_package,
    root_ct_codelist_ref_t *root_item,
    ct_codelist_ref_t *prior_version
    ) {
    ct_codelist_links_t *ct_codelist_links_local_var = malloc(sizeof(ct_codelist_links_t));
    if (!ct_codelist_links_local_var) {
        return NULL;
    }
    ct_codelist_links_local_var->self = self;
    ct_codelist_links_local_var->parent_package = parent_package;
    ct_codelist_links_local_var->root_item = root_item;
    ct_codelist_links_local_var->prior_version = prior_version;

    ct_codelist_links_local_var->_library_owned = 1;
    return ct_codelist_links_local_var;
}

__attribute__((deprecated)) ct_codelist_links_t *ct_codelist_links_create(
    ct_codelist_ref_t *self,
    ct_package_ref_t *parent_package,
    root_ct_codelist_ref_t *root_item,
    ct_codelist_ref_t *prior_version
    ) {
    return ct_codelist_links_create_internal (
        self,
        parent_package,
        root_item,
        prior_version
        );
}

void ct_codelist_links_free(ct_codelist_links_t *ct_codelist_links) {
    if(NULL == ct_codelist_links){
        return ;
    }
    if(ct_codelist_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_codelist_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_codelist_links->self) {
        ct_codelist_ref_free(ct_codelist_links->self);
        ct_codelist_links->self = NULL;
    }
    if (ct_codelist_links->parent_package) {
        ct_package_ref_free(ct_codelist_links->parent_package);
        ct_codelist_links->parent_package = NULL;
    }
    if (ct_codelist_links->root_item) {
        root_ct_codelist_ref_free(ct_codelist_links->root_item);
        ct_codelist_links->root_item = NULL;
    }
    if (ct_codelist_links->prior_version) {
        ct_codelist_ref_free(ct_codelist_links->prior_version);
        ct_codelist_links->prior_version = NULL;
    }
    free(ct_codelist_links);
}

cJSON *ct_codelist_links_convertToJSON(ct_codelist_links_t *ct_codelist_links) {
    cJSON *item = cJSON_CreateObject();

    // ct_codelist_links->self
    if(ct_codelist_links->self) {
    cJSON *self_local_JSON = ct_codelist_ref_convertToJSON(ct_codelist_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_codelist_links->parent_package
    if(ct_codelist_links->parent_package) {
    cJSON *parent_package_local_JSON = ct_package_ref_convertToJSON(ct_codelist_links->parent_package);
    if(parent_package_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentPackage", parent_package_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_codelist_links->root_item
    if(ct_codelist_links->root_item) {
    cJSON *root_item_local_JSON = root_ct_codelist_ref_convertToJSON(ct_codelist_links->root_item);
    if(root_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rootItem", root_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_codelist_links->prior_version
    if(ct_codelist_links->prior_version) {
    cJSON *prior_version_local_JSON = ct_codelist_ref_convertToJSON(ct_codelist_links->prior_version);
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

ct_codelist_links_t *ct_codelist_links_parseFromJSON(cJSON *ct_codelist_linksJSON){

    ct_codelist_links_t *ct_codelist_links_local_var = NULL;

    // define the local variable for ct_codelist_links->self
    ct_codelist_ref_t *self_local_nonprim = NULL;

    // define the local variable for ct_codelist_links->parent_package
    ct_package_ref_t *parent_package_local_nonprim = NULL;

    // define the local variable for ct_codelist_links->root_item
    root_ct_codelist_ref_t *root_item_local_nonprim = NULL;

    // define the local variable for ct_codelist_links->prior_version
    ct_codelist_ref_t *prior_version_local_nonprim = NULL;

    // ct_codelist_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(ct_codelist_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = ct_codelist_ref_parseFromJSON(self); //nonprimitive
    }

    // ct_codelist_links->parent_package
    cJSON *parent_package = cJSON_GetObjectItemCaseSensitive(ct_codelist_linksJSON, "parentPackage");
    if (cJSON_IsNull(parent_package)) {
        parent_package = NULL;
    }
    if (parent_package) { 
    parent_package_local_nonprim = ct_package_ref_parseFromJSON(parent_package); //nonprimitive
    }

    // ct_codelist_links->root_item
    cJSON *root_item = cJSON_GetObjectItemCaseSensitive(ct_codelist_linksJSON, "rootItem");
    if (cJSON_IsNull(root_item)) {
        root_item = NULL;
    }
    if (root_item) { 
    root_item_local_nonprim = root_ct_codelist_ref_parseFromJSON(root_item); //nonprimitive
    }

    // ct_codelist_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(ct_codelist_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = ct_codelist_ref_parseFromJSON(prior_version); //nonprimitive
    }


    ct_codelist_links_local_var = ct_codelist_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_package ? parent_package_local_nonprim : NULL,
        root_item ? root_item_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return ct_codelist_links_local_var;
end:
    if (self_local_nonprim) {
        ct_codelist_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_package_local_nonprim) {
        ct_package_ref_free(parent_package_local_nonprim);
        parent_package_local_nonprim = NULL;
    }
    if (root_item_local_nonprim) {
        root_ct_codelist_ref_free(root_item_local_nonprim);
        root_item_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        ct_codelist_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
