#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package_codelists_links.h"



static ct_package_codelists_links_t *ct_package_codelists_links_create_internal(
    ct_package_codelists_ref_t *self,
    ct_package_codelists_ref_t *prior_version,
    list_t *codelists
    ) {
    ct_package_codelists_links_t *ct_package_codelists_links_local_var = malloc(sizeof(ct_package_codelists_links_t));
    if (!ct_package_codelists_links_local_var) {
        return NULL;
    }
    ct_package_codelists_links_local_var->self = self;
    ct_package_codelists_links_local_var->prior_version = prior_version;
    ct_package_codelists_links_local_var->codelists = codelists;

    ct_package_codelists_links_local_var->_library_owned = 1;
    return ct_package_codelists_links_local_var;
}

__attribute__((deprecated)) ct_package_codelists_links_t *ct_package_codelists_links_create(
    ct_package_codelists_ref_t *self,
    ct_package_codelists_ref_t *prior_version,
    list_t *codelists
    ) {
    return ct_package_codelists_links_create_internal (
        self,
        prior_version,
        codelists
        );
}

void ct_package_codelists_links_free(ct_package_codelists_links_t *ct_package_codelists_links) {
    if(NULL == ct_package_codelists_links){
        return ;
    }
    if(ct_package_codelists_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_codelists_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package_codelists_links->self) {
        ct_package_codelists_ref_free(ct_package_codelists_links->self);
        ct_package_codelists_links->self = NULL;
    }
    if (ct_package_codelists_links->prior_version) {
        ct_package_codelists_ref_free(ct_package_codelists_links->prior_version);
        ct_package_codelists_links->prior_version = NULL;
    }
    if (ct_package_codelists_links->codelists) {
        list_ForEach(listEntry, ct_package_codelists_links->codelists) {
            ct_codelist_ref_element_free(listEntry->data);
        }
        list_freeList(ct_package_codelists_links->codelists);
        ct_package_codelists_links->codelists = NULL;
    }
    free(ct_package_codelists_links);
}

cJSON *ct_package_codelists_links_convertToJSON(ct_package_codelists_links_t *ct_package_codelists_links) {
    cJSON *item = cJSON_CreateObject();

    // ct_package_codelists_links->self
    if(ct_package_codelists_links->self) {
    cJSON *self_local_JSON = ct_package_codelists_ref_convertToJSON(ct_package_codelists_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_package_codelists_links->prior_version
    if(ct_package_codelists_links->prior_version) {
    cJSON *prior_version_local_JSON = ct_package_codelists_ref_convertToJSON(ct_package_codelists_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_package_codelists_links->codelists
    if(ct_package_codelists_links->codelists) {
    cJSON *codelists = cJSON_AddArrayToObject(item, "codelists");
    if(codelists == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *codelistsListEntry;
    if (ct_package_codelists_links->codelists) {
    list_ForEach(codelistsListEntry, ct_package_codelists_links->codelists) {
    cJSON *itemLocal = ct_codelist_ref_element_convertToJSON(codelistsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(codelists, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

ct_package_codelists_links_t *ct_package_codelists_links_parseFromJSON(cJSON *ct_package_codelists_linksJSON){

    ct_package_codelists_links_t *ct_package_codelists_links_local_var = NULL;

    // define the local variable for ct_package_codelists_links->self
    ct_package_codelists_ref_t *self_local_nonprim = NULL;

    // define the local variable for ct_package_codelists_links->prior_version
    ct_package_codelists_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for ct_package_codelists_links->codelists
    list_t *codelistsList = NULL;

    // ct_package_codelists_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(ct_package_codelists_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = ct_package_codelists_ref_parseFromJSON(self); //nonprimitive
    }

    // ct_package_codelists_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(ct_package_codelists_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = ct_package_codelists_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // ct_package_codelists_links->codelists
    cJSON *codelists = cJSON_GetObjectItemCaseSensitive(ct_package_codelists_linksJSON, "codelists");
    if (cJSON_IsNull(codelists)) {
        codelists = NULL;
    }
    if (codelists) { 
    cJSON *codelists_local_nonprimitive = NULL;
    if(!cJSON_IsArray(codelists)){
        goto end; //nonprimitive container
    }

    codelistsList = list_createList();

    cJSON_ArrayForEach(codelists_local_nonprimitive,codelists )
    {
        if(!cJSON_IsObject(codelists_local_nonprimitive)){
            goto end;
        }
        ct_codelist_ref_element_t *codelistsItem = ct_codelist_ref_element_parseFromJSON(codelists_local_nonprimitive);

        list_addElement(codelistsList, codelistsItem);
    }
    }


    ct_package_codelists_links_local_var = ct_package_codelists_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        codelists ? codelistsList : NULL
        );

    return ct_package_codelists_links_local_var;
end:
    if (self_local_nonprim) {
        ct_package_codelists_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        ct_package_codelists_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (codelistsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, codelistsList) {
            ct_codelist_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(codelistsList);
        codelistsList = NULL;
    }
    return NULL;

}
