#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_scenario_field_links.h"



static cdashig_scenario_field_links_t *cdashig_scenario_field_links_create_internal(
    cdashig_scenario_field_ref_t *self,
    list_t *codelist,
    cdashig_product_ref_t *parent_product,
    cdashig_domain_ref_t *parent_domain,
    cdashig_scenario_ref_t *parent_scenario,
    root_cdashig_scenario_field_ref_t *root_item,
    cdashig_scenario_field_ref_t *prior_version,
    list_t *sdtmig_dataset_mapping_targets
    ) {
    cdashig_scenario_field_links_t *cdashig_scenario_field_links_local_var = malloc(sizeof(cdashig_scenario_field_links_t));
    if (!cdashig_scenario_field_links_local_var) {
        return NULL;
    }
    cdashig_scenario_field_links_local_var->self = self;
    cdashig_scenario_field_links_local_var->codelist = codelist;
    cdashig_scenario_field_links_local_var->parent_product = parent_product;
    cdashig_scenario_field_links_local_var->parent_domain = parent_domain;
    cdashig_scenario_field_links_local_var->parent_scenario = parent_scenario;
    cdashig_scenario_field_links_local_var->root_item = root_item;
    cdashig_scenario_field_links_local_var->prior_version = prior_version;
    cdashig_scenario_field_links_local_var->sdtmig_dataset_mapping_targets = sdtmig_dataset_mapping_targets;

    cdashig_scenario_field_links_local_var->_library_owned = 1;
    return cdashig_scenario_field_links_local_var;
}

__attribute__((deprecated)) cdashig_scenario_field_links_t *cdashig_scenario_field_links_create(
    cdashig_scenario_field_ref_t *self,
    list_t *codelist,
    cdashig_product_ref_t *parent_product,
    cdashig_domain_ref_t *parent_domain,
    cdashig_scenario_ref_t *parent_scenario,
    root_cdashig_scenario_field_ref_t *root_item,
    cdashig_scenario_field_ref_t *prior_version,
    list_t *sdtmig_dataset_mapping_targets
    ) {
    return cdashig_scenario_field_links_create_internal (
        self,
        codelist,
        parent_product,
        parent_domain,
        parent_scenario,
        root_item,
        prior_version,
        sdtmig_dataset_mapping_targets
        );
}

void cdashig_scenario_field_links_free(cdashig_scenario_field_links_t *cdashig_scenario_field_links) {
    if(NULL == cdashig_scenario_field_links){
        return ;
    }
    if(cdashig_scenario_field_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_scenario_field_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_scenario_field_links->self) {
        cdashig_scenario_field_ref_free(cdashig_scenario_field_links->self);
        cdashig_scenario_field_links->self = NULL;
    }
    if (cdashig_scenario_field_links->codelist) {
        list_ForEach(listEntry, cdashig_scenario_field_links->codelist) {
            root_ct_codelist_ref_element_free(listEntry->data);
        }
        list_freeList(cdashig_scenario_field_links->codelist);
        cdashig_scenario_field_links->codelist = NULL;
    }
    if (cdashig_scenario_field_links->parent_product) {
        cdashig_product_ref_free(cdashig_scenario_field_links->parent_product);
        cdashig_scenario_field_links->parent_product = NULL;
    }
    if (cdashig_scenario_field_links->parent_domain) {
        cdashig_domain_ref_free(cdashig_scenario_field_links->parent_domain);
        cdashig_scenario_field_links->parent_domain = NULL;
    }
    if (cdashig_scenario_field_links->parent_scenario) {
        cdashig_scenario_ref_free(cdashig_scenario_field_links->parent_scenario);
        cdashig_scenario_field_links->parent_scenario = NULL;
    }
    if (cdashig_scenario_field_links->root_item) {
        root_cdashig_scenario_field_ref_free(cdashig_scenario_field_links->root_item);
        cdashig_scenario_field_links->root_item = NULL;
    }
    if (cdashig_scenario_field_links->prior_version) {
        cdashig_scenario_field_ref_free(cdashig_scenario_field_links->prior_version);
        cdashig_scenario_field_links->prior_version = NULL;
    }
    if (cdashig_scenario_field_links->sdtmig_dataset_mapping_targets) {
        list_ForEach(listEntry, cdashig_scenario_field_links->sdtmig_dataset_mapping_targets) {
            sdtmig_dataset_variable_ref_target_free(listEntry->data);
        }
        list_freeList(cdashig_scenario_field_links->sdtmig_dataset_mapping_targets);
        cdashig_scenario_field_links->sdtmig_dataset_mapping_targets = NULL;
    }
    free(cdashig_scenario_field_links);
}

cJSON *cdashig_scenario_field_links_convertToJSON(cdashig_scenario_field_links_t *cdashig_scenario_field_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_scenario_field_links->self
    if(cdashig_scenario_field_links->self) {
    cJSON *self_local_JSON = cdashig_scenario_field_ref_convertToJSON(cdashig_scenario_field_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_field_links->codelist
    if(cdashig_scenario_field_links->codelist) {
    cJSON *codelist = cJSON_AddArrayToObject(item, "codelist");
    if(codelist == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *codelistListEntry;
    if (cdashig_scenario_field_links->codelist) {
    list_ForEach(codelistListEntry, cdashig_scenario_field_links->codelist) {
    cJSON *itemLocal = root_ct_codelist_ref_element_convertToJSON(codelistListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(codelist, itemLocal);
    }
    }
    }


    // cdashig_scenario_field_links->parent_product
    if(cdashig_scenario_field_links->parent_product) {
    cJSON *parent_product_local_JSON = cdashig_product_ref_convertToJSON(cdashig_scenario_field_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_field_links->parent_domain
    if(cdashig_scenario_field_links->parent_domain) {
    cJSON *parent_domain_local_JSON = cdashig_domain_ref_convertToJSON(cdashig_scenario_field_links->parent_domain);
    if(parent_domain_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentDomain", parent_domain_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_field_links->parent_scenario
    if(cdashig_scenario_field_links->parent_scenario) {
    cJSON *parent_scenario_local_JSON = cdashig_scenario_ref_convertToJSON(cdashig_scenario_field_links->parent_scenario);
    if(parent_scenario_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentScenario", parent_scenario_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_field_links->root_item
    if(cdashig_scenario_field_links->root_item) {
    cJSON *root_item_local_JSON = root_cdashig_scenario_field_ref_convertToJSON(cdashig_scenario_field_links->root_item);
    if(root_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rootItem", root_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_field_links->prior_version
    if(cdashig_scenario_field_links->prior_version) {
    cJSON *prior_version_local_JSON = cdashig_scenario_field_ref_convertToJSON(cdashig_scenario_field_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario_field_links->sdtmig_dataset_mapping_targets
    if(cdashig_scenario_field_links->sdtmig_dataset_mapping_targets) {
    cJSON *sdtmig_dataset_mapping_targets = cJSON_AddArrayToObject(item, "sdtmigDatasetMappingTargets");
    if(sdtmig_dataset_mapping_targets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sdtmig_dataset_mapping_targetsListEntry;
    if (cdashig_scenario_field_links->sdtmig_dataset_mapping_targets) {
    list_ForEach(sdtmig_dataset_mapping_targetsListEntry, cdashig_scenario_field_links->sdtmig_dataset_mapping_targets) {
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

cdashig_scenario_field_links_t *cdashig_scenario_field_links_parseFromJSON(cJSON *cdashig_scenario_field_linksJSON){

    cdashig_scenario_field_links_t *cdashig_scenario_field_links_local_var = NULL;

    // define the local variable for cdashig_scenario_field_links->self
    cdashig_scenario_field_ref_t *self_local_nonprim = NULL;

    // define the local list for cdashig_scenario_field_links->codelist
    list_t *codelistList = NULL;

    // define the local variable for cdashig_scenario_field_links->parent_product
    cdashig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_field_links->parent_domain
    cdashig_domain_ref_t *parent_domain_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_field_links->parent_scenario
    cdashig_scenario_ref_t *parent_scenario_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_field_links->root_item
    root_cdashig_scenario_field_ref_t *root_item_local_nonprim = NULL;

    // define the local variable for cdashig_scenario_field_links->prior_version
    cdashig_scenario_field_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for cdashig_scenario_field_links->sdtmig_dataset_mapping_targets
    list_t *sdtmig_dataset_mapping_targetsList = NULL;

    // cdashig_scenario_field_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_scenario_field_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_scenario_field_links->codelist
    cJSON *codelist = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "codelist");
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

    // cdashig_scenario_field_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdashig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdashig_scenario_field_links->parent_domain
    cJSON *parent_domain = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "parentDomain");
    if (cJSON_IsNull(parent_domain)) {
        parent_domain = NULL;
    }
    if (parent_domain) { 
    parent_domain_local_nonprim = cdashig_domain_ref_parseFromJSON(parent_domain); //nonprimitive
    }

    // cdashig_scenario_field_links->parent_scenario
    cJSON *parent_scenario = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "parentScenario");
    if (cJSON_IsNull(parent_scenario)) {
        parent_scenario = NULL;
    }
    if (parent_scenario) { 
    parent_scenario_local_nonprim = cdashig_scenario_ref_parseFromJSON(parent_scenario); //nonprimitive
    }

    // cdashig_scenario_field_links->root_item
    cJSON *root_item = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "rootItem");
    if (cJSON_IsNull(root_item)) {
        root_item = NULL;
    }
    if (root_item) { 
    root_item_local_nonprim = root_cdashig_scenario_field_ref_parseFromJSON(root_item); //nonprimitive
    }

    // cdashig_scenario_field_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdashig_scenario_field_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // cdashig_scenario_field_links->sdtmig_dataset_mapping_targets
    cJSON *sdtmig_dataset_mapping_targets = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_field_linksJSON, "sdtmigDatasetMappingTargets");
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


    cdashig_scenario_field_links_local_var = cdashig_scenario_field_links_create_internal (
        self ? self_local_nonprim : NULL,
        codelist ? codelistList : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_domain ? parent_domain_local_nonprim : NULL,
        parent_scenario ? parent_scenario_local_nonprim : NULL,
        root_item ? root_item_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        sdtmig_dataset_mapping_targets ? sdtmig_dataset_mapping_targetsList : NULL
        );

    return cdashig_scenario_field_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_scenario_field_ref_free(self_local_nonprim);
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
        cdashig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_domain_local_nonprim) {
        cdashig_domain_ref_free(parent_domain_local_nonprim);
        parent_domain_local_nonprim = NULL;
    }
    if (parent_scenario_local_nonprim) {
        cdashig_scenario_ref_free(parent_scenario_local_nonprim);
        parent_scenario_local_nonprim = NULL;
    }
    if (root_item_local_nonprim) {
        root_cdashig_scenario_field_ref_free(root_item_local_nonprim);
        root_item_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdashig_scenario_field_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
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
