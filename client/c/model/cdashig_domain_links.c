#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain_links.h"



static cdashig_domain_links_t *cdashig_domain_links_create_internal(
    cdashig_domain_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    cdashig_domain_ref_t *prior_version,
    list_t *scenarios
    ) {
    cdashig_domain_links_t *cdashig_domain_links_local_var = malloc(sizeof(cdashig_domain_links_t));
    if (!cdashig_domain_links_local_var) {
        return NULL;
    }
    cdashig_domain_links_local_var->self = self;
    cdashig_domain_links_local_var->parent_product = parent_product;
    cdashig_domain_links_local_var->parent_class = parent_class;
    cdashig_domain_links_local_var->prior_version = prior_version;
    cdashig_domain_links_local_var->scenarios = scenarios;

    cdashig_domain_links_local_var->_library_owned = 1;
    return cdashig_domain_links_local_var;
}

__attribute__((deprecated)) cdashig_domain_links_t *cdashig_domain_links_create(
    cdashig_domain_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    cdashig_domain_ref_t *prior_version,
    list_t *scenarios
    ) {
    return cdashig_domain_links_create_internal (
        self,
        parent_product,
        parent_class,
        prior_version,
        scenarios
        );
}

void cdashig_domain_links_free(cdashig_domain_links_t *cdashig_domain_links) {
    if(NULL == cdashig_domain_links){
        return ;
    }
    if(cdashig_domain_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain_links->self) {
        cdashig_domain_ref_free(cdashig_domain_links->self);
        cdashig_domain_links->self = NULL;
    }
    if (cdashig_domain_links->parent_product) {
        cdashig_product_ref_free(cdashig_domain_links->parent_product);
        cdashig_domain_links->parent_product = NULL;
    }
    if (cdashig_domain_links->parent_class) {
        cdashig_class_ref_free(cdashig_domain_links->parent_class);
        cdashig_domain_links->parent_class = NULL;
    }
    if (cdashig_domain_links->prior_version) {
        cdashig_domain_ref_free(cdashig_domain_links->prior_version);
        cdashig_domain_links->prior_version = NULL;
    }
    if (cdashig_domain_links->scenarios) {
        list_ForEach(listEntry, cdashig_domain_links->scenarios) {
            cdashig_scenario_ref_element_free(listEntry->data);
        }
        list_freeList(cdashig_domain_links->scenarios);
        cdashig_domain_links->scenarios = NULL;
    }
    free(cdashig_domain_links);
}

cJSON *cdashig_domain_links_convertToJSON(cdashig_domain_links_t *cdashig_domain_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain_links->self
    if(cdashig_domain_links->self) {
    cJSON *self_local_JSON = cdashig_domain_ref_convertToJSON(cdashig_domain_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_links->parent_product
    if(cdashig_domain_links->parent_product) {
    cJSON *parent_product_local_JSON = cdashig_product_ref_convertToJSON(cdashig_domain_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_links->parent_class
    if(cdashig_domain_links->parent_class) {
    cJSON *parent_class_local_JSON = cdashig_class_ref_convertToJSON(cdashig_domain_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_links->prior_version
    if(cdashig_domain_links->prior_version) {
    cJSON *prior_version_local_JSON = cdashig_domain_ref_convertToJSON(cdashig_domain_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_links->scenarios
    if(cdashig_domain_links->scenarios) {
    cJSON *scenarios = cJSON_AddArrayToObject(item, "scenarios");
    if(scenarios == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *scenariosListEntry;
    if (cdashig_domain_links->scenarios) {
    list_ForEach(scenariosListEntry, cdashig_domain_links->scenarios) {
    cJSON *itemLocal = cdashig_scenario_ref_element_convertToJSON(scenariosListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(scenarios, itemLocal);
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

cdashig_domain_links_t *cdashig_domain_links_parseFromJSON(cJSON *cdashig_domain_linksJSON){

    cdashig_domain_links_t *cdashig_domain_links_local_var = NULL;

    // define the local variable for cdashig_domain_links->self
    cdashig_domain_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdashig_domain_links->parent_product
    cdashig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdashig_domain_links->parent_class
    cdashig_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local variable for cdashig_domain_links->prior_version
    cdashig_domain_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for cdashig_domain_links->scenarios
    list_t *scenariosList = NULL;

    // cdashig_domain_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_domain_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_domain_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_domain_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdashig_domain_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdashig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdashig_domain_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdashig_domain_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdashig_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdashig_domain_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdashig_domain_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdashig_domain_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // cdashig_domain_links->scenarios
    cJSON *scenarios = cJSON_GetObjectItemCaseSensitive(cdashig_domain_linksJSON, "scenarios");
    if (cJSON_IsNull(scenarios)) {
        scenarios = NULL;
    }
    if (scenarios) { 
    cJSON *scenarios_local_nonprimitive = NULL;
    if(!cJSON_IsArray(scenarios)){
        goto end; //nonprimitive container
    }

    scenariosList = list_createList();

    cJSON_ArrayForEach(scenarios_local_nonprimitive,scenarios )
    {
        if(!cJSON_IsObject(scenarios_local_nonprimitive)){
            goto end;
        }
        cdashig_scenario_ref_element_t *scenariosItem = cdashig_scenario_ref_element_parseFromJSON(scenarios_local_nonprimitive);

        list_addElement(scenariosList, scenariosItem);
    }
    }


    cdashig_domain_links_local_var = cdashig_domain_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        scenarios ? scenariosList : NULL
        );

    return cdashig_domain_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_domain_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdashig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdashig_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        cdashig_domain_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (scenariosList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, scenariosList) {
            cdashig_scenario_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(scenariosList);
        scenariosList = NULL;
    }
    return NULL;

}
