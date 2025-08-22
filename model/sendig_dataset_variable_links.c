#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_dataset_variable_links.h"



static sendig_dataset_variable_links_t *sendig_dataset_variable_links_create_internal(
    sendig_dataset_variable_ref_t *self,
    list_t *codelist,
    sdtm_class_variable_ref_t *model_class_variable,
    sdtm_dataset_variable_ref_t *model_dataset_variable,
    sendig_product_ref_t *parent_product,
    sendig_dataset_ref_t *parent_dataset,
    root_sendig_dataset_variable_ref_t *root_item,
    sendig_dataset_variable_ref_t *prior_version
    ) {
    sendig_dataset_variable_links_t *sendig_dataset_variable_links_local_var = malloc(sizeof(sendig_dataset_variable_links_t));
    if (!sendig_dataset_variable_links_local_var) {
        return NULL;
    }
    sendig_dataset_variable_links_local_var->self = self;
    sendig_dataset_variable_links_local_var->codelist = codelist;
    sendig_dataset_variable_links_local_var->model_class_variable = model_class_variable;
    sendig_dataset_variable_links_local_var->model_dataset_variable = model_dataset_variable;
    sendig_dataset_variable_links_local_var->parent_product = parent_product;
    sendig_dataset_variable_links_local_var->parent_dataset = parent_dataset;
    sendig_dataset_variable_links_local_var->root_item = root_item;
    sendig_dataset_variable_links_local_var->prior_version = prior_version;

    sendig_dataset_variable_links_local_var->_library_owned = 1;
    return sendig_dataset_variable_links_local_var;
}

__attribute__((deprecated)) sendig_dataset_variable_links_t *sendig_dataset_variable_links_create(
    sendig_dataset_variable_ref_t *self,
    list_t *codelist,
    sdtm_class_variable_ref_t *model_class_variable,
    sdtm_dataset_variable_ref_t *model_dataset_variable,
    sendig_product_ref_t *parent_product,
    sendig_dataset_ref_t *parent_dataset,
    root_sendig_dataset_variable_ref_t *root_item,
    sendig_dataset_variable_ref_t *prior_version
    ) {
    return sendig_dataset_variable_links_create_internal (
        self,
        codelist,
        model_class_variable,
        model_dataset_variable,
        parent_product,
        parent_dataset,
        root_item,
        prior_version
        );
}

void sendig_dataset_variable_links_free(sendig_dataset_variable_links_t *sendig_dataset_variable_links) {
    if(NULL == sendig_dataset_variable_links){
        return ;
    }
    if(sendig_dataset_variable_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_dataset_variable_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_dataset_variable_links->self) {
        sendig_dataset_variable_ref_free(sendig_dataset_variable_links->self);
        sendig_dataset_variable_links->self = NULL;
    }
    if (sendig_dataset_variable_links->codelist) {
        list_ForEach(listEntry, sendig_dataset_variable_links->codelist) {
            root_ct_codelist_ref_element_free(listEntry->data);
        }
        list_freeList(sendig_dataset_variable_links->codelist);
        sendig_dataset_variable_links->codelist = NULL;
    }
    if (sendig_dataset_variable_links->model_class_variable) {
        sdtm_class_variable_ref_free(sendig_dataset_variable_links->model_class_variable);
        sendig_dataset_variable_links->model_class_variable = NULL;
    }
    if (sendig_dataset_variable_links->model_dataset_variable) {
        sdtm_dataset_variable_ref_free(sendig_dataset_variable_links->model_dataset_variable);
        sendig_dataset_variable_links->model_dataset_variable = NULL;
    }
    if (sendig_dataset_variable_links->parent_product) {
        sendig_product_ref_free(sendig_dataset_variable_links->parent_product);
        sendig_dataset_variable_links->parent_product = NULL;
    }
    if (sendig_dataset_variable_links->parent_dataset) {
        sendig_dataset_ref_free(sendig_dataset_variable_links->parent_dataset);
        sendig_dataset_variable_links->parent_dataset = NULL;
    }
    if (sendig_dataset_variable_links->root_item) {
        root_sendig_dataset_variable_ref_free(sendig_dataset_variable_links->root_item);
        sendig_dataset_variable_links->root_item = NULL;
    }
    if (sendig_dataset_variable_links->prior_version) {
        sendig_dataset_variable_ref_free(sendig_dataset_variable_links->prior_version);
        sendig_dataset_variable_links->prior_version = NULL;
    }
    free(sendig_dataset_variable_links);
}

cJSON *sendig_dataset_variable_links_convertToJSON(sendig_dataset_variable_links_t *sendig_dataset_variable_links) {
    cJSON *item = cJSON_CreateObject();

    // sendig_dataset_variable_links->self
    if(sendig_dataset_variable_links->self) {
    cJSON *self_local_JSON = sendig_dataset_variable_ref_convertToJSON(sendig_dataset_variable_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variable_links->codelist
    if(sendig_dataset_variable_links->codelist) {
    cJSON *codelist = cJSON_AddArrayToObject(item, "codelist");
    if(codelist == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *codelistListEntry;
    if (sendig_dataset_variable_links->codelist) {
    list_ForEach(codelistListEntry, sendig_dataset_variable_links->codelist) {
    cJSON *itemLocal = root_ct_codelist_ref_element_convertToJSON(codelistListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(codelist, itemLocal);
    }
    }
    }


    // sendig_dataset_variable_links->model_class_variable
    if(sendig_dataset_variable_links->model_class_variable) {
    cJSON *model_class_variable_local_JSON = sdtm_class_variable_ref_convertToJSON(sendig_dataset_variable_links->model_class_variable);
    if(model_class_variable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "modelClassVariable", model_class_variable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variable_links->model_dataset_variable
    if(sendig_dataset_variable_links->model_dataset_variable) {
    cJSON *model_dataset_variable_local_JSON = sdtm_dataset_variable_ref_convertToJSON(sendig_dataset_variable_links->model_dataset_variable);
    if(model_dataset_variable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "modelDatasetVariable", model_dataset_variable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variable_links->parent_product
    if(sendig_dataset_variable_links->parent_product) {
    cJSON *parent_product_local_JSON = sendig_product_ref_convertToJSON(sendig_dataset_variable_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variable_links->parent_dataset
    if(sendig_dataset_variable_links->parent_dataset) {
    cJSON *parent_dataset_local_JSON = sendig_dataset_ref_convertToJSON(sendig_dataset_variable_links->parent_dataset);
    if(parent_dataset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDataset", parent_dataset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variable_links->root_item
    if(sendig_dataset_variable_links->root_item) {
    cJSON *root_item_local_JSON = root_sendig_dataset_variable_ref_convertToJSON(sendig_dataset_variable_links->root_item);
    if(root_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rootItem", root_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset_variable_links->prior_version
    if(sendig_dataset_variable_links->prior_version) {
    cJSON *prior_version_local_JSON = sendig_dataset_variable_ref_convertToJSON(sendig_dataset_variable_links->prior_version);
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

sendig_dataset_variable_links_t *sendig_dataset_variable_links_parseFromJSON(cJSON *sendig_dataset_variable_linksJSON){

    sendig_dataset_variable_links_t *sendig_dataset_variable_links_local_var = NULL;

    // define the local variable for sendig_dataset_variable_links->self
    sendig_dataset_variable_ref_t *self_local_nonprim = NULL;

    // define the local list for sendig_dataset_variable_links->codelist
    list_t *codelistList = NULL;

    // define the local variable for sendig_dataset_variable_links->model_class_variable
    sdtm_class_variable_ref_t *model_class_variable_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variable_links->model_dataset_variable
    sdtm_dataset_variable_ref_t *model_dataset_variable_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variable_links->parent_product
    sendig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variable_links->parent_dataset
    sendig_dataset_ref_t *parent_dataset_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variable_links->root_item
    root_sendig_dataset_variable_ref_t *root_item_local_nonprim = NULL;

    // define the local variable for sendig_dataset_variable_links->prior_version
    sendig_dataset_variable_ref_t *prior_version_local_nonprim = NULL;

    // sendig_dataset_variable_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_dataset_variable_ref_parseFromJSON(self); //nonprimitive
    }

    // sendig_dataset_variable_links->codelist
    cJSON *codelist = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "codelist");
    if (cJSON_IsNull(codelist)) {
        codelist = NULL;
    }
    if (codelist) { 
    cJSON *codelist_local_nonprimitive = NULL;
    if(!cJSON_IsArray(codelist)){
        goto end; //nonprimitive container
    }

    codelistList = list_createList();

    cJSON_ArrayForEach(codelist_local_nonprimitive,codelist )
    {
        if(!cJSON_IsObject(codelist_local_nonprimitive)){
            goto end;
        }
        root_ct_codelist_ref_element_t *codelistItem = root_ct_codelist_ref_element_parseFromJSON(codelist_local_nonprimitive);

        list_addElement(codelistList, codelistItem);
    }
    }

    // sendig_dataset_variable_links->model_class_variable
    cJSON *model_class_variable = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "modelClassVariable");
    if (cJSON_IsNull(model_class_variable)) {
        model_class_variable = NULL;
    }
    if (model_class_variable) { 
    model_class_variable_local_nonprim = sdtm_class_variable_ref_parseFromJSON(model_class_variable); //nonprimitive
    }

    // sendig_dataset_variable_links->model_dataset_variable
    cJSON *model_dataset_variable = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "modelDatasetVariable");
    if (cJSON_IsNull(model_dataset_variable)) {
        model_dataset_variable = NULL;
    }
    if (model_dataset_variable) { 
    model_dataset_variable_local_nonprim = sdtm_dataset_variable_ref_parseFromJSON(model_dataset_variable); //nonprimitive
    }

    // sendig_dataset_variable_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sendig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sendig_dataset_variable_links->parent_dataset
    cJSON *parent_dataset = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "parentDataset");
    if (cJSON_IsNull(parent_dataset)) {
        parent_dataset = NULL;
    }
    if (parent_dataset) { 
    parent_dataset_local_nonprim = sendig_dataset_ref_parseFromJSON(parent_dataset); //nonprimitive
    }

    // sendig_dataset_variable_links->root_item
    cJSON *root_item = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "rootItem");
    if (cJSON_IsNull(root_item)) {
        root_item = NULL;
    }
    if (root_item) { 
    root_item_local_nonprim = root_sendig_dataset_variable_ref_parseFromJSON(root_item); //nonprimitive
    }

    // sendig_dataset_variable_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sendig_dataset_variable_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sendig_dataset_variable_links_local_var = sendig_dataset_variable_links_create_internal (
        self ? self_local_nonprim : NULL,
        codelist ? codelistList : NULL,
        model_class_variable ? model_class_variable_local_nonprim : NULL,
        model_dataset_variable ? model_dataset_variable_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_dataset ? parent_dataset_local_nonprim : NULL,
        root_item ? root_item_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sendig_dataset_variable_links_local_var;
end:
    if (self_local_nonprim) {
        sendig_dataset_variable_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (codelistList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, codelistList) {
            root_ct_codelist_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(codelistList);
        codelistList = NULL;
    }
    if (model_class_variable_local_nonprim) {
        sdtm_class_variable_ref_free(model_class_variable_local_nonprim);
        model_class_variable_local_nonprim = NULL;
    }
    if (model_dataset_variable_local_nonprim) {
        sdtm_dataset_variable_ref_free(model_dataset_variable_local_nonprim);
        model_dataset_variable_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sendig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_dataset_local_nonprim) {
        sendig_dataset_ref_free(parent_dataset_local_nonprim);
        parent_dataset_local_nonprim = NULL;
    }
    if (root_item_local_nonprim) {
        root_sendig_dataset_variable_ref_free(root_item_local_nonprim);
        root_item_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sendig_dataset_variable_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
