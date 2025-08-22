#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_dataset_variables_links.h"



static sendig_dataset_variables_links_t *sendig_dataset_variables_links_create_internal(
    sendig_dataset_variables_ref_t *self,
    sdtm_dataset_ref_t *model_dataset,
    sendig_product_ref_t *parent_product,
    sendig_class_ref_t *parent_class,
    sendig_dataset_variables_ref_t *prior_version,
    list_t *dataset_variables
    ) {
    sendig_dataset_variables_links_t *sendig_dataset_variables_links_local_var = malloc(sizeof(sendig_dataset_variables_links_t));
    if (!sendig_dataset_variables_links_local_var) {
        return NULL;
    }
    sendig_dataset_variables_links_local_var->self = self;
    sendig_dataset_variables_links_local_var->model_dataset = model_dataset;
    sendig_dataset_variables_links_local_var->parent_product = parent_product;
    sendig_dataset_variables_links_local_var->parent_class = parent_class;
    sendig_dataset_variables_links_local_var->prior_version = prior_version;
    sendig_dataset_variables_links_local_var->dataset_variables = dataset_variables;

    sendig_dataset_variables_links_local_var->_library_owned = 1;
    return sendig_dataset_variables_links_local_var;
}

__attribute__((deprecated)) sendig_dataset_variables_links_t *sendig_dataset_variables_links_create(
    sendig_dataset_variables_ref_t *self,
    sdtm_dataset_ref_t *model_dataset,
    sendig_product_ref_t *parent_product,
    sendig_class_ref_t *parent_class,
    sendig_dataset_variables_ref_t *prior_version,
    list_t *dataset_variables
    ) {
    return sendig_dataset_variables_links_create_internal (
        self,
        model_dataset,
        parent_product,
        parent_class,
        prior_version,
        dataset_variables
        );
}

void sendig_dataset_variables_links_free(sendig_dataset_variables_links_t *sendig_dataset_variables_links) {
    if(NULL == sendig_dataset_variables_links){
        return ;
    }
    if(sendig_dataset_variables_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_dataset_variables_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_dataset_variables_links->self) {
        sendig_dataset_variables_ref_free(sendig_dataset_variables_links->self);
        sendig_dataset_variables_links->self = NULL;
    }
    if (sendig_dataset_variables_links->model_dataset) {
        sdtm_dataset_ref_free(sendig_dataset_variables_links->model_dataset);
        sendig_dataset_variables_links->model_dataset = NULL;
    }
    if (sendig_dataset_variables_links->parent_product) {
        sendig_product_ref_free(sendig_dataset_variables_links->parent_product);
        sendig_dataset_variables_links->parent_product = NULL;
    }
    if (sendig_dataset_variables_links->parent_class) {
        sendig_class_ref_free(sendig_dataset_variables_links->parent_class);
        sendig_dataset_variables_links->parent_class = NULL;
    }
    if (sendig_dataset_variables_links->prior_version) {
        sendig_dataset_variables_ref_free(sendig_dataset_variables_links->prior_version);
        sendig_dataset_variables_links->prior_version = NULL;
    }
    if (sendig_dataset_variables_links->dataset_variables) {
        list_ForEach(listEntry, sendig_dataset_variables_links->dataset_variables) {
            sendig_dataset_variable_ref_element_free(listEntry->data);
        }
        list_freeList(sendig_dataset_variables_links->dataset_variables);
        sendig_dataset_variables_links->dataset_variables = NULL;
    }
    free(sendig_dataset_variables_links);
}

cJSON *sendig_dataset_variables_links_convertToJSON(sendig_dataset_variables_links_t *sendig_dataset_variables_links) {
    cJSON *item = cJSON_CreateObject();

    // sendig_dataset_variables_links->self
    if(sendig_dataset_variables_links->self) {
    cJSON *self_local_JSON = sendig_dataset_variables_ref_convertToJSON(sendig_dataset_variables_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variables_links->model_dataset
    if(sendig_dataset_variables_links->model_dataset) {
    cJSON *model_dataset_local_JSON = sdtm_dataset_ref_convertToJSON(sendig_dataset_variables_links->model_dataset);
    if(model_dataset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "modelDataset", model_dataset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variables_links->parent_product
    if(sendig_dataset_variables_links->parent_product) {
    cJSON *parent_product_local_JSON = sendig_product_ref_convertToJSON(sendig_dataset_variables_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variables_links->parent_class
    if(sendig_dataset_variables_links->parent_class) {
    cJSON *parent_class_local_JSON = sendig_class_ref_convertToJSON(sendig_dataset_variables_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variables_links->prior_version
    if(sendig_dataset_variables_links->prior_version) {
    cJSON *prior_version_local_JSON = sendig_dataset_variables_ref_convertToJSON(sendig_dataset_variables_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variables_links->dataset_variables
    if(sendig_dataset_variables_links->dataset_variables) {
    cJSON *dataset_variables = cJSON_AddArrayToObject(item, "datasetVariables");
    if(dataset_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataset_variablesListEntry;
    if (sendig_dataset_variables_links->dataset_variables) {
    list_ForEach(dataset_variablesListEntry, sendig_dataset_variables_links->dataset_variables) {
    cJSON *itemLocal = sendig_dataset_variable_ref_element_convertToJSON(dataset_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(dataset_variables, itemLocal);
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

sendig_dataset_variables_links_t *sendig_dataset_variables_links_parseFromJSON(cJSON *sendig_dataset_variables_linksJSON){

    sendig_dataset_variables_links_t *sendig_dataset_variables_links_local_var = NULL;

    // define the local variable for sendig_dataset_variables_links->self
    sendig_dataset_variables_ref_t *self_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variables_links->model_dataset
    sdtm_dataset_ref_t *model_dataset_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variables_links->parent_product
    sendig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variables_links->parent_class
    sendig_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variables_links->prior_version
    sendig_dataset_variables_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sendig_dataset_variables_links->dataset_variables
    list_t *dataset_variablesList = NULL;

    // sendig_dataset_variables_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variables_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_dataset_variables_ref_parseFromJSON(self); //nonprimitive
    }

    // sendig_dataset_variables_links->model_dataset
    cJSON *model_dataset = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variables_linksJSON, "modelDataset");
    if (cJSON_IsNull(model_dataset)) {
        model_dataset = NULL;
    }
    if (model_dataset) { 
    model_dataset_local_nonprim = sdtm_dataset_ref_parseFromJSON(model_dataset); //nonprimitive
    }

    // sendig_dataset_variables_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variables_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sendig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sendig_dataset_variables_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variables_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = sendig_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // sendig_dataset_variables_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variables_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sendig_dataset_variables_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sendig_dataset_variables_links->dataset_variables
    cJSON *dataset_variables = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variables_linksJSON, "datasetVariables");
    if (cJSON_IsNull(dataset_variables)) {
        dataset_variables = NULL;
    }
    if (dataset_variables) { 
    cJSON *dataset_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(dataset_variables)){
        goto end; //nonprimitive container
    }

    dataset_variablesList = list_createList();

    cJSON_ArrayForEach(dataset_variables_local_nonprimitive,dataset_variables )
    {
        if(!cJSON_IsObject(dataset_variables_local_nonprimitive)){
            goto end;
        }
        sendig_dataset_variable_ref_element_t *dataset_variablesItem = sendig_dataset_variable_ref_element_parseFromJSON(dataset_variables_local_nonprimitive);

        list_addElement(dataset_variablesList, dataset_variablesItem);
    }
    }


    sendig_dataset_variables_links_local_var = sendig_dataset_variables_links_create_internal (
        self ? self_local_nonprim : NULL,
        model_dataset ? model_dataset_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        dataset_variables ? dataset_variablesList : NULL
        );

    return sendig_dataset_variables_links_local_var;
end:
    if (self_local_nonprim) {
        sendig_dataset_variables_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_dataset_local_nonprim) {
        sdtm_dataset_ref_free(model_dataset_local_nonprim);
        model_dataset_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sendig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        sendig_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sendig_dataset_variables_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (dataset_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataset_variablesList) {
            sendig_dataset_variable_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataset_variablesList);
        dataset_variablesList = NULL;
    }
    return NULL;

}
