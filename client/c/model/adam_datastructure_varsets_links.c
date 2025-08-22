#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_datastructure_varsets_links.h"



static adam_datastructure_varsets_links_t *adam_datastructure_varsets_links_create_internal(
    adam_datastructure_varsets_ref_t *self,
    adam_product_ref_t *parent_product,
    adam_datastructure_varsets_ref_t *prior_version,
    list_t *analysis_variable_sets
    ) {
    adam_datastructure_varsets_links_t *adam_datastructure_varsets_links_local_var = malloc(sizeof(adam_datastructure_varsets_links_t));
    if (!adam_datastructure_varsets_links_local_var) {
        return NULL;
    }
    adam_datastructure_varsets_links_local_var->self = self;
    adam_datastructure_varsets_links_local_var->parent_product = parent_product;
    adam_datastructure_varsets_links_local_var->prior_version = prior_version;
    adam_datastructure_varsets_links_local_var->analysis_variable_sets = analysis_variable_sets;

    adam_datastructure_varsets_links_local_var->_library_owned = 1;
    return adam_datastructure_varsets_links_local_var;
}

__attribute__((deprecated)) adam_datastructure_varsets_links_t *adam_datastructure_varsets_links_create(
    adam_datastructure_varsets_ref_t *self,
    adam_product_ref_t *parent_product,
    adam_datastructure_varsets_ref_t *prior_version,
    list_t *analysis_variable_sets
    ) {
    return adam_datastructure_varsets_links_create_internal (
        self,
        parent_product,
        prior_version,
        analysis_variable_sets
        );
}

void adam_datastructure_varsets_links_free(adam_datastructure_varsets_links_t *adam_datastructure_varsets_links) {
    if(NULL == adam_datastructure_varsets_links){
        return ;
    }
    if(adam_datastructure_varsets_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_datastructure_varsets_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_datastructure_varsets_links->self) {
        adam_datastructure_varsets_ref_free(adam_datastructure_varsets_links->self);
        adam_datastructure_varsets_links->self = NULL;
    }
    if (adam_datastructure_varsets_links->parent_product) {
        adam_product_ref_free(adam_datastructure_varsets_links->parent_product);
        adam_datastructure_varsets_links->parent_product = NULL;
    }
    if (adam_datastructure_varsets_links->prior_version) {
        adam_datastructure_varsets_ref_free(adam_datastructure_varsets_links->prior_version);
        adam_datastructure_varsets_links->prior_version = NULL;
    }
    if (adam_datastructure_varsets_links->analysis_variable_sets) {
        list_ForEach(listEntry, adam_datastructure_varsets_links->analysis_variable_sets) {
            adam_varset_ref_element_free(listEntry->data);
        }
        list_freeList(adam_datastructure_varsets_links->analysis_variable_sets);
        adam_datastructure_varsets_links->analysis_variable_sets = NULL;
    }
    free(adam_datastructure_varsets_links);
}

cJSON *adam_datastructure_varsets_links_convertToJSON(adam_datastructure_varsets_links_t *adam_datastructure_varsets_links) {
    cJSON *item = cJSON_CreateObject();

    // adam_datastructure_varsets_links->self
    if(adam_datastructure_varsets_links->self) {
    cJSON *self_local_JSON = adam_datastructure_varsets_ref_convertToJSON(adam_datastructure_varsets_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_datastructure_varsets_links->parent_product
    if(adam_datastructure_varsets_links->parent_product) {
    cJSON *parent_product_local_JSON = adam_product_ref_convertToJSON(adam_datastructure_varsets_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_datastructure_varsets_links->prior_version
    if(adam_datastructure_varsets_links->prior_version) {
    cJSON *prior_version_local_JSON = adam_datastructure_varsets_ref_convertToJSON(adam_datastructure_varsets_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_datastructure_varsets_links->analysis_variable_sets
    if(adam_datastructure_varsets_links->analysis_variable_sets) {
    cJSON *analysis_variable_sets = cJSON_AddArrayToObject(item, "analysisVariableSets");
    if(analysis_variable_sets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *analysis_variable_setsListEntry;
    if (adam_datastructure_varsets_links->analysis_variable_sets) {
    list_ForEach(analysis_variable_setsListEntry, adam_datastructure_varsets_links->analysis_variable_sets) {
    cJSON *itemLocal = adam_varset_ref_element_convertToJSON(analysis_variable_setsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(analysis_variable_sets, itemLocal);
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

adam_datastructure_varsets_links_t *adam_datastructure_varsets_links_parseFromJSON(cJSON *adam_datastructure_varsets_linksJSON){

    adam_datastructure_varsets_links_t *adam_datastructure_varsets_links_local_var = NULL;

    // define the local variable for adam_datastructure_varsets_links->self
    adam_datastructure_varsets_ref_t *self_local_nonprim = NULL;

    // define the local variable for adam_datastructure_varsets_links->parent_product
    adam_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for adam_datastructure_varsets_links->prior_version
    adam_datastructure_varsets_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for adam_datastructure_varsets_links->analysis_variable_sets
    list_t *analysis_variable_setsList = NULL;

    // adam_datastructure_varsets_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsets_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_datastructure_varsets_ref_parseFromJSON(self); //nonprimitive
    }

    // adam_datastructure_varsets_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsets_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = adam_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // adam_datastructure_varsets_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsets_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = adam_datastructure_varsets_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // adam_datastructure_varsets_links->analysis_variable_sets
    cJSON *analysis_variable_sets = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsets_linksJSON, "analysisVariableSets");
    if (cJSON_IsNull(analysis_variable_sets)) {
        analysis_variable_sets = NULL;
    }
    if (analysis_variable_sets) { 
    cJSON *analysis_variable_sets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(analysis_variable_sets)){
        goto end; //nonprimitive container
    }

    analysis_variable_setsList = list_createList();

    cJSON_ArrayForEach(analysis_variable_sets_local_nonprimitive,analysis_variable_sets )
    {
        if(!cJSON_IsObject(analysis_variable_sets_local_nonprimitive)){
            goto end;
        }
        adam_varset_ref_element_t *analysis_variable_setsItem = adam_varset_ref_element_parseFromJSON(analysis_variable_sets_local_nonprimitive);

        list_addElement(analysis_variable_setsList, analysis_variable_setsItem);
    }
    }


    adam_datastructure_varsets_links_local_var = adam_datastructure_varsets_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        analysis_variable_sets ? analysis_variable_setsList : NULL
        );

    return adam_datastructure_varsets_links_local_var;
end:
    if (self_local_nonprim) {
        adam_datastructure_varsets_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        adam_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        adam_datastructure_varsets_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (analysis_variable_setsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, analysis_variable_setsList) {
            adam_varset_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(analysis_variable_setsList);
        analysis_variable_setsList = NULL;
    }
    return NULL;

}
