#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_domain_field_links.h"



static cdash_domain_field_links_t *cdash_domain_field_links_create_internal(
    cdash_domain_field_ref_t *self,
    list_t *codelist,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    cdash_domain_ref_t *parent_domain,
    root_cdash_domain_field_ref_t *root_item,
    cdash_domain_field_ref_t *prior_version,
    list_t *sdtm_dataset_mapping_targets,
    list_t *sdtmig_dataset_mapping_targets
    ) {
    cdash_domain_field_links_t *cdash_domain_field_links_local_var = malloc(sizeof(cdash_domain_field_links_t));
    if (!cdash_domain_field_links_local_var) {
        return NULL;
    }
    cdash_domain_field_links_local_var->self = self;
    cdash_domain_field_links_local_var->codelist = codelist;
    cdash_domain_field_links_local_var->parent_product = parent_product;
    cdash_domain_field_links_local_var->parent_class = parent_class;
    cdash_domain_field_links_local_var->parent_domain = parent_domain;
    cdash_domain_field_links_local_var->root_item = root_item;
    cdash_domain_field_links_local_var->prior_version = prior_version;
    cdash_domain_field_links_local_var->sdtm_dataset_mapping_targets = sdtm_dataset_mapping_targets;
    cdash_domain_field_links_local_var->sdtmig_dataset_mapping_targets = sdtmig_dataset_mapping_targets;

    cdash_domain_field_links_local_var->_library_owned = 1;
    return cdash_domain_field_links_local_var;
}

__attribute__((deprecated)) cdash_domain_field_links_t *cdash_domain_field_links_create(
    cdash_domain_field_ref_t *self,
    list_t *codelist,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    cdash_domain_ref_t *parent_domain,
    root_cdash_domain_field_ref_t *root_item,
    cdash_domain_field_ref_t *prior_version,
    list_t *sdtm_dataset_mapping_targets,
    list_t *sdtmig_dataset_mapping_targets
    ) {
    return cdash_domain_field_links_create_internal (
        self,
        codelist,
        parent_product,
        parent_class,
        parent_domain,
        root_item,
        prior_version,
        sdtm_dataset_mapping_targets,
        sdtmig_dataset_mapping_targets
        );
}

void cdash_domain_field_links_free(cdash_domain_field_links_t *cdash_domain_field_links) {
    if(NULL == cdash_domain_field_links){
        return ;
    }
    if(cdash_domain_field_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_domain_field_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_domain_field_links->self) {
        cdash_domain_field_ref_free(cdash_domain_field_links->self);
        cdash_domain_field_links->self = NULL;
    }
    if (cdash_domain_field_links->codelist) {
        list_ForEach(listEntry, cdash_domain_field_links->codelist) {
            root_ct_codelist_ref_element_free(listEntry->data);
        }
        list_freeList(cdash_domain_field_links->codelist);
        cdash_domain_field_links->codelist = NULL;
    }
    if (cdash_domain_field_links->parent_product) {
        cdash_product_ref_free(cdash_domain_field_links->parent_product);
        cdash_domain_field_links->parent_product = NULL;
    }
    if (cdash_domain_field_links->parent_class) {
        cdash_class_ref_free(cdash_domain_field_links->parent_class);
        cdash_domain_field_links->parent_class = NULL;
    }
    if (cdash_domain_field_links->parent_domain) {
        cdash_domain_ref_free(cdash_domain_field_links->parent_domain);
        cdash_domain_field_links->parent_domain = NULL;
    }
    if (cdash_domain_field_links->root_item) {
        root_cdash_domain_field_ref_free(cdash_domain_field_links->root_item);
        cdash_domain_field_links->root_item = NULL;
    }
    if (cdash_domain_field_links->prior_version) {
        cdash_domain_field_ref_free(cdash_domain_field_links->prior_version);
        cdash_domain_field_links->prior_version = NULL;
    }
    if (cdash_domain_field_links->sdtm_dataset_mapping_targets) {
        list_ForEach(listEntry, cdash_domain_field_links->sdtm_dataset_mapping_targets) {
            sdtm_dataset_variable_ref_target_free(listEntry->data);
        }
        list_freeList(cdash_domain_field_links->sdtm_dataset_mapping_targets);
        cdash_domain_field_links->sdtm_dataset_mapping_targets = NULL;
    }
    if (cdash_domain_field_links->sdtmig_dataset_mapping_targets) {
        list_ForEach(listEntry, cdash_domain_field_links->sdtmig_dataset_mapping_targets) {
            sdtmig_dataset_variable_ref_target_free(listEntry->data);
        }
        list_freeList(cdash_domain_field_links->sdtmig_dataset_mapping_targets);
        cdash_domain_field_links->sdtmig_dataset_mapping_targets = NULL;
    }
    free(cdash_domain_field_links);
}

cJSON *cdash_domain_field_links_convertToJSON(cdash_domain_field_links_t *cdash_domain_field_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_domain_field_links->self
    if(cdash_domain_field_links->self) {
    cJSON *self_local_JSON = cdash_domain_field_ref_convertToJSON(cdash_domain_field_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_field_links->codelist
    if(cdash_domain_field_links->codelist) {
    cJSON *codelist = cJSON_AddArrayToObject(item, "codelist");
    if(codelist == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *codelistListEntry;
    if (cdash_domain_field_links->codelist) {
    list_ForEach(codelistListEntry, cdash_domain_field_links->codelist) {
    cJSON *itemLocal = root_ct_codelist_ref_element_convertToJSON(codelistListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(codelist, itemLocal);
    }
    }
    }


    // cdash_domain_field_links->parent_product
    if(cdash_domain_field_links->parent_product) {
    cJSON *parent_product_local_JSON = cdash_product_ref_convertToJSON(cdash_domain_field_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_field_links->parent_class
    if(cdash_domain_field_links->parent_class) {
    cJSON *parent_class_local_JSON = cdash_class_ref_convertToJSON(cdash_domain_field_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_field_links->parent_domain
    if(cdash_domain_field_links->parent_domain) {
    cJSON *parent_domain_local_JSON = cdash_domain_ref_convertToJSON(cdash_domain_field_links->parent_domain);
    if(parent_domain_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDomain", parent_domain_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_field_links->root_item
    if(cdash_domain_field_links->root_item) {
    cJSON *root_item_local_JSON = root_cdash_domain_field_ref_convertToJSON(cdash_domain_field_links->root_item);
    if(root_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rootItem", root_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_field_links->prior_version
    if(cdash_domain_field_links->prior_version) {
    cJSON *prior_version_local_JSON = cdash_domain_field_ref_convertToJSON(cdash_domain_field_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_field_links->sdtm_dataset_mapping_targets
    if(cdash_domain_field_links->sdtm_dataset_mapping_targets) {
    cJSON *sdtm_dataset_mapping_targets = cJSON_AddArrayToObject(item, "sdtmDatasetMappingTargets");
    if(sdtm_dataset_mapping_targets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sdtm_dataset_mapping_targetsListEntry;
    if (cdash_domain_field_links->sdtm_dataset_mapping_targets) {
    list_ForEach(sdtm_dataset_mapping_targetsListEntry, cdash_domain_field_links->sdtm_dataset_mapping_targets) {
    cJSON *itemLocal = sdtm_dataset_variable_ref_target_convertToJSON(sdtm_dataset_mapping_targetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sdtm_dataset_mapping_targets, itemLocal);
    }
    }
    }


    // cdash_domain_field_links->sdtmig_dataset_mapping_targets
    if(cdash_domain_field_links->sdtmig_dataset_mapping_targets) {
    cJSON *sdtmig_dataset_mapping_targets = cJSON_AddArrayToObject(item, "sdtmigDatasetMappingTargets");
    if(sdtmig_dataset_mapping_targets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sdtmig_dataset_mapping_targetsListEntry;
    if (cdash_domain_field_links->sdtmig_dataset_mapping_targets) {
    list_ForEach(sdtmig_dataset_mapping_targetsListEntry, cdash_domain_field_links->sdtmig_dataset_mapping_targets) {
    cJSON *itemLocal = sdtmig_dataset_variable_ref_target_convertToJSON(sdtmig_dataset_mapping_targetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sdtmig_dataset_mapping_targets, itemLocal);
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

cdash_domain_field_links_t *cdash_domain_field_links_parseFromJSON(cJSON *cdash_domain_field_linksJSON){

    cdash_domain_field_links_t *cdash_domain_field_links_local_var = NULL;

    // define the local variable for cdash_domain_field_links->self
    cdash_domain_field_ref_t *self_local_nonprim = NULL;

    // define the local list for cdash_domain_field_links->codelist
    list_t *codelistList = NULL;

    // define the local variable for cdash_domain_field_links->parent_product
    cdash_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdash_domain_field_links->parent_class
    cdash_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for cdash_domain_field_links->parent_domain
    cdash_domain_ref_t *parent_domain_local_nonprim = NULL;

    // define the local variable for cdash_domain_field_links->root_item
    root_cdash_domain_field_ref_t *root_item_local_nonprim = NULL;

    // define the local variable for cdash_domain_field_links->prior_version
    cdash_domain_field_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for cdash_domain_field_links->sdtm_dataset_mapping_targets
    list_t *sdtm_dataset_mapping_targetsList = NULL;

    // define the local list for cdash_domain_field_links->sdtmig_dataset_mapping_targets
    list_t *sdtmig_dataset_mapping_targetsList = NULL;

    // cdash_domain_field_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_domain_field_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_domain_field_links->codelist
    cJSON *codelist = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "codelist");
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

    // cdash_domain_field_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdash_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdash_domain_field_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdash_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdash_domain_field_links->parent_domain
    cJSON *parent_domain = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "parentDomain");
    if (cJSON_IsNull(parent_domain)) {
        parent_domain = NULL;
    }
    if (parent_domain) { 
    parent_domain_local_nonprim = cdash_domain_ref_parseFromJSON(parent_domain); //nonprimitive
    }

    // cdash_domain_field_links->root_item
    cJSON *root_item = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "rootItem");
    if (cJSON_IsNull(root_item)) {
        root_item = NULL;
    }
    if (root_item) { 
    root_item_local_nonprim = root_cdash_domain_field_ref_parseFromJSON(root_item); //nonprimitive
    }

    // cdash_domain_field_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdash_domain_field_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // cdash_domain_field_links->sdtm_dataset_mapping_targets
    cJSON *sdtm_dataset_mapping_targets = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "sdtmDatasetMappingTargets");
    if (cJSON_IsNull(sdtm_dataset_mapping_targets)) {
        sdtm_dataset_mapping_targets = NULL;
    }
    if (sdtm_dataset_mapping_targets) { 
    cJSON *sdtm_dataset_mapping_targets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sdtm_dataset_mapping_targets)){
        goto end; //nonprimitive container
    }

    sdtm_dataset_mapping_targetsList = list_createList();

    cJSON_ArrayForEach(sdtm_dataset_mapping_targets_local_nonprimitive,sdtm_dataset_mapping_targets )
    {
        if(!cJSON_IsObject(sdtm_dataset_mapping_targets_local_nonprimitive)){
            goto end;
        }
        sdtm_dataset_variable_ref_target_t *sdtm_dataset_mapping_targetsItem = sdtm_dataset_variable_ref_target_parseFromJSON(sdtm_dataset_mapping_targets_local_nonprimitive);

        list_addElement(sdtm_dataset_mapping_targetsList, sdtm_dataset_mapping_targetsItem);
    }
    }

    // cdash_domain_field_links->sdtmig_dataset_mapping_targets
    cJSON *sdtmig_dataset_mapping_targets = cJSON_GetObjectItemCaseSensitive(cdash_domain_field_linksJSON, "sdtmigDatasetMappingTargets");
    if (cJSON_IsNull(sdtmig_dataset_mapping_targets)) {
        sdtmig_dataset_mapping_targets = NULL;
    }
    if (sdtmig_dataset_mapping_targets) { 
    cJSON *sdtmig_dataset_mapping_targets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sdtmig_dataset_mapping_targets)){
        goto end; //nonprimitive container
    }

    sdtmig_dataset_mapping_targetsList = list_createList();

    cJSON_ArrayForEach(sdtmig_dataset_mapping_targets_local_nonprimitive,sdtmig_dataset_mapping_targets )
    {
        if(!cJSON_IsObject(sdtmig_dataset_mapping_targets_local_nonprimitive)){
            goto end;
        }
        sdtmig_dataset_variable_ref_target_t *sdtmig_dataset_mapping_targetsItem = sdtmig_dataset_variable_ref_target_parseFromJSON(sdtmig_dataset_mapping_targets_local_nonprimitive);

        list_addElement(sdtmig_dataset_mapping_targetsList, sdtmig_dataset_mapping_targetsItem);
    }
    }


    cdash_domain_field_links_local_var = cdash_domain_field_links_create_internal (
        self ? self_local_nonprim : NULL,
        codelist ? codelistList : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        parent_domain ? parent_domain_local_nonprim : NULL,
        root_item ? root_item_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        sdtm_dataset_mapping_targets ? sdtm_dataset_mapping_targetsList : NULL,
        sdtmig_dataset_mapping_targets ? sdtmig_dataset_mapping_targetsList : NULL
        );

    return cdash_domain_field_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_domain_field_ref_free(self_local_nonprim);
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
    if (parent_product_local_nonprim) {
        cdash_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdash_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (parent_domain_local_nonprim) {
        cdash_domain_ref_free(parent_domain_local_nonprim);
        parent_domain_local_nonprim = NULL;
    }
    if (root_item_local_nonprim) {
        root_cdash_domain_field_ref_free(root_item_local_nonprim);
        root_item_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdash_domain_field_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (sdtm_dataset_mapping_targetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sdtm_dataset_mapping_targetsList) {
            sdtm_dataset_variable_ref_target_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sdtm_dataset_mapping_targetsList);
        sdtm_dataset_mapping_targetsList = NULL;
    }
    if (sdtmig_dataset_mapping_targetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sdtmig_dataset_mapping_targetsList) {
            sdtmig_dataset_variable_ref_target_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sdtmig_dataset_mapping_targetsList);
        sdtmig_dataset_mapping_targetsList = NULL;
    }
    return NULL;

}
