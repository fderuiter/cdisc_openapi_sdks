#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_variable_links.h"



static sdtm_class_variable_links_t *sdtm_class_variable_links_create_internal(
    sdtm_class_variable_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    list_t *qualifies_variables,
    root_sdtm_class_variable_ref_t *root_item,
    sdtm_class_variable_ref_t *prior_version
    ) {
    sdtm_class_variable_links_t *sdtm_class_variable_links_local_var = malloc(sizeof(sdtm_class_variable_links_t));
    if (!sdtm_class_variable_links_local_var) {
        return NULL;
    }
    sdtm_class_variable_links_local_var->self = self;
    sdtm_class_variable_links_local_var->parent_product = parent_product;
    sdtm_class_variable_links_local_var->parent_class = parent_class;
    sdtm_class_variable_links_local_var->qualifies_variables = qualifies_variables;
    sdtm_class_variable_links_local_var->root_item = root_item;
    sdtm_class_variable_links_local_var->prior_version = prior_version;

    sdtm_class_variable_links_local_var->_library_owned = 1;
    return sdtm_class_variable_links_local_var;
}

__attribute__((deprecated)) sdtm_class_variable_links_t *sdtm_class_variable_links_create(
    sdtm_class_variable_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    list_t *qualifies_variables,
    root_sdtm_class_variable_ref_t *root_item,
    sdtm_class_variable_ref_t *prior_version
    ) {
    return sdtm_class_variable_links_create_internal (
        self,
        parent_product,
        parent_class,
        qualifies_variables,
        root_item,
        prior_version
        );
}

void sdtm_class_variable_links_free(sdtm_class_variable_links_t *sdtm_class_variable_links) {
    if(NULL == sdtm_class_variable_links){
        return ;
    }
    if(sdtm_class_variable_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_variable_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_variable_links->self) {
        sdtm_class_variable_ref_free(sdtm_class_variable_links->self);
        sdtm_class_variable_links->self = NULL;
    }
    if (sdtm_class_variable_links->parent_product) {
        sdtm_product_ref_free(sdtm_class_variable_links->parent_product);
        sdtm_class_variable_links->parent_product = NULL;
    }
    if (sdtm_class_variable_links->parent_class) {
        sdtm_class_ref_free(sdtm_class_variable_links->parent_class);
        sdtm_class_variable_links->parent_class = NULL;
    }
    if (sdtm_class_variable_links->qualifies_variables) {
        list_ForEach(listEntry, sdtm_class_variable_links->qualifies_variables) {
            sdtm_class_variable_ref_qualifies_free(listEntry->data);
        }
        list_freeList(sdtm_class_variable_links->qualifies_variables);
        sdtm_class_variable_links->qualifies_variables = NULL;
    }
    if (sdtm_class_variable_links->root_item) {
        root_sdtm_class_variable_ref_free(sdtm_class_variable_links->root_item);
        sdtm_class_variable_links->root_item = NULL;
    }
    if (sdtm_class_variable_links->prior_version) {
        sdtm_class_variable_ref_free(sdtm_class_variable_links->prior_version);
        sdtm_class_variable_links->prior_version = NULL;
    }
    free(sdtm_class_variable_links);
}

cJSON *sdtm_class_variable_links_convertToJSON(sdtm_class_variable_links_t *sdtm_class_variable_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_variable_links->self
    if(sdtm_class_variable_links->self) {
    cJSON *self_local_JSON = sdtm_class_variable_ref_convertToJSON(sdtm_class_variable_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variable_links->parent_product
    if(sdtm_class_variable_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtm_product_ref_convertToJSON(sdtm_class_variable_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variable_links->parent_class
    if(sdtm_class_variable_links->parent_class) {
    cJSON *parent_class_local_JSON = sdtm_class_ref_convertToJSON(sdtm_class_variable_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variable_links->qualifies_variables
    if(sdtm_class_variable_links->qualifies_variables) {
    cJSON *qualifies_variables = cJSON_AddArrayToObject(item, "qualifiesVariables");
    if(qualifies_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *qualifies_variablesListEntry;
    if (sdtm_class_variable_links->qualifies_variables) {
    list_ForEach(qualifies_variablesListEntry, sdtm_class_variable_links->qualifies_variables) {
    cJSON *itemLocal = sdtm_class_variable_ref_qualifies_convertToJSON(qualifies_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(qualifies_variables, itemLocal);
    }
    }
    }


    // sdtm_class_variable_links->root_item
    if(sdtm_class_variable_links->root_item) {
    cJSON *root_item_local_JSON = root_sdtm_class_variable_ref_convertToJSON(sdtm_class_variable_links->root_item);
    if(root_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rootItem", root_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variable_links->prior_version
    if(sdtm_class_variable_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_class_variable_ref_convertToJSON(sdtm_class_variable_links->prior_version);
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

sdtm_class_variable_links_t *sdtm_class_variable_links_parseFromJSON(cJSON *sdtm_class_variable_linksJSON){

    sdtm_class_variable_links_t *sdtm_class_variable_links_local_var = NULL;

    // define the local variable for sdtm_class_variable_links->self
    sdtm_class_variable_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_class_variable_links->parent_product
    sdtm_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtm_class_variable_links->parent_class
    sdtm_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local list for sdtm_class_variable_links->qualifies_variables
    list_t *qualifies_variablesList = NULL;

    // define the local variable for sdtm_class_variable_links->root_item
    root_sdtm_class_variable_ref_t *root_item_local_nonprim = NULL;

    // define the local variable for sdtm_class_variable_links->prior_version
    sdtm_class_variable_ref_t *prior_version_local_nonprim = NULL;

    // sdtm_class_variable_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_class_variable_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_class_variable_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtm_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtm_class_variable_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = sdtm_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // sdtm_class_variable_links->qualifies_variables
    cJSON *qualifies_variables = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_linksJSON, "qualifiesVariables");
    if (cJSON_IsNull(qualifies_variables)) {
        qualifies_variables = NULL;
    }
    if (qualifies_variables) { 
    cJSON *qualifies_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(qualifies_variables)){
        goto end; //nonprimitive container
    }

    qualifies_variablesList = list_createList();

    cJSON_ArrayForEach(qualifies_variables_local_nonprimitive,qualifies_variables )
    {
        if(!cJSON_IsObject(qualifies_variables_local_nonprimitive)){
            goto end;
        }
        sdtm_class_variable_ref_qualifies_t *qualifies_variablesItem = sdtm_class_variable_ref_qualifies_parseFromJSON(qualifies_variables_local_nonprimitive);

        list_addElement(qualifies_variablesList, qualifies_variablesItem);
    }
    }

    // sdtm_class_variable_links->root_item
    cJSON *root_item = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_linksJSON, "rootItem");
    if (cJSON_IsNull(root_item)) {
        root_item = NULL;
    }
    if (root_item) { 
    root_item_local_nonprim = root_sdtm_class_variable_ref_parseFromJSON(root_item); //nonprimitive
    }

    // sdtm_class_variable_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_class_variable_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtm_class_variable_links_local_var = sdtm_class_variable_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        qualifies_variables ? qualifies_variablesList : NULL,
        root_item ? root_item_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtm_class_variable_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_class_variable_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtm_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        sdtm_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (qualifies_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, qualifies_variablesList) {
            sdtm_class_variable_ref_qualifies_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(qualifies_variablesList);
        qualifies_variablesList = NULL;
    }
    if (root_item_local_nonprim) {
        root_sdtm_class_variable_ref_free(root_item_local_nonprim);
        root_item_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_class_variable_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
