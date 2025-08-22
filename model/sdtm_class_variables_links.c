#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_variables_links.h"



static sdtm_class_variables_links_t *sdtm_class_variables_links_create_internal(
    sdtm_class_variables_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_variables_ref_t *prior_version,
    list_t *class_variables
    ) {
    sdtm_class_variables_links_t *sdtm_class_variables_links_local_var = malloc(sizeof(sdtm_class_variables_links_t));
    if (!sdtm_class_variables_links_local_var) {
        return NULL;
    }
    sdtm_class_variables_links_local_var->self = self;
    sdtm_class_variables_links_local_var->parent_product = parent_product;
    sdtm_class_variables_links_local_var->prior_version = prior_version;
    sdtm_class_variables_links_local_var->class_variables = class_variables;

    sdtm_class_variables_links_local_var->_library_owned = 1;
    return sdtm_class_variables_links_local_var;
}

__attribute__((deprecated)) sdtm_class_variables_links_t *sdtm_class_variables_links_create(
    sdtm_class_variables_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_variables_ref_t *prior_version,
    list_t *class_variables
    ) {
    return sdtm_class_variables_links_create_internal (
        self,
        parent_product,
        prior_version,
        class_variables
        );
}

void sdtm_class_variables_links_free(sdtm_class_variables_links_t *sdtm_class_variables_links) {
    if(NULL == sdtm_class_variables_links){
        return ;
    }
    if(sdtm_class_variables_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_variables_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_variables_links->self) {
        sdtm_class_variables_ref_free(sdtm_class_variables_links->self);
        sdtm_class_variables_links->self = NULL;
    }
    if (sdtm_class_variables_links->parent_product) {
        sdtm_product_ref_free(sdtm_class_variables_links->parent_product);
        sdtm_class_variables_links->parent_product = NULL;
    }
    if (sdtm_class_variables_links->prior_version) {
        sdtm_class_variables_ref_free(sdtm_class_variables_links->prior_version);
        sdtm_class_variables_links->prior_version = NULL;
    }
    if (sdtm_class_variables_links->class_variables) {
        list_ForEach(listEntry, sdtm_class_variables_links->class_variables) {
            sdtm_class_variable_ref_element_free(listEntry->data);
        }
        list_freeList(sdtm_class_variables_links->class_variables);
        sdtm_class_variables_links->class_variables = NULL;
    }
    free(sdtm_class_variables_links);
}

cJSON *sdtm_class_variables_links_convertToJSON(sdtm_class_variables_links_t *sdtm_class_variables_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_variables_links->self
    if(sdtm_class_variables_links->self) {
    cJSON *self_local_JSON = sdtm_class_variables_ref_convertToJSON(sdtm_class_variables_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variables_links->parent_product
    if(sdtm_class_variables_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtm_product_ref_convertToJSON(sdtm_class_variables_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variables_links->prior_version
    if(sdtm_class_variables_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_class_variables_ref_convertToJSON(sdtm_class_variables_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_variables_links->class_variables
    if(sdtm_class_variables_links->class_variables) {
    cJSON *class_variables = cJSON_AddArrayToObject(item, "classVariables");
    if(class_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *class_variablesListEntry;
    if (sdtm_class_variables_links->class_variables) {
    list_ForEach(class_variablesListEntry, sdtm_class_variables_links->class_variables) {
    cJSON *itemLocal = sdtm_class_variable_ref_element_convertToJSON(class_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(class_variables, itemLocal);
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

sdtm_class_variables_links_t *sdtm_class_variables_links_parseFromJSON(cJSON *sdtm_class_variables_linksJSON){

    sdtm_class_variables_links_t *sdtm_class_variables_links_local_var = NULL;

    // define the local variable for sdtm_class_variables_links->self
    sdtm_class_variables_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_class_variables_links->parent_product
    sdtm_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtm_class_variables_links->prior_version
    sdtm_class_variables_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sdtm_class_variables_links->class_variables
    list_t *class_variablesList = NULL;

    // sdtm_class_variables_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_class_variables_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_class_variables_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_class_variables_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtm_class_variables_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtm_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtm_class_variables_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_class_variables_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_class_variables_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sdtm_class_variables_links->class_variables
    cJSON *class_variables = cJSON_GetObjectItemCaseSensitive(sdtm_class_variables_linksJSON, "classVariables");
    if (cJSON_IsNull(class_variables)) {
        class_variables = NULL;
    }
    if (class_variables) { 
    cJSON *class_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(class_variables)){
        goto end; //nonprimitive container
    }

    class_variablesList = list_createList();

    cJSON_ArrayForEach(class_variables_local_nonprimitive,class_variables )
    {
        if(!cJSON_IsObject(class_variables_local_nonprimitive)){
            goto end;
        }
        sdtm_class_variable_ref_element_t *class_variablesItem = sdtm_class_variable_ref_element_parseFromJSON(class_variables_local_nonprimitive);

        list_addElement(class_variablesList, class_variablesItem);
    }
    }


    sdtm_class_variables_links_local_var = sdtm_class_variables_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        class_variables ? class_variablesList : NULL
        );

    return sdtm_class_variables_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_class_variables_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtm_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_class_variables_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (class_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, class_variablesList) {
            sdtm_class_variable_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(class_variablesList);
        class_variablesList = NULL;
    }
    return NULL;

}
