#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_class_scenarios_links.h"



static cdashig_class_scenarios_links_t *cdashig_class_scenarios_links_create_internal(
    cdashig_class_scenarios_ref_t *self,
    list_t *scenarios
    ) {
    cdashig_class_scenarios_links_t *cdashig_class_scenarios_links_local_var = malloc(sizeof(cdashig_class_scenarios_links_t));
    if (!cdashig_class_scenarios_links_local_var) {
        return NULL;
    }
    cdashig_class_scenarios_links_local_var->self = self;
    cdashig_class_scenarios_links_local_var->scenarios = scenarios;

    cdashig_class_scenarios_links_local_var->_library_owned = 1;
    return cdashig_class_scenarios_links_local_var;
}

__attribute__((deprecated)) cdashig_class_scenarios_links_t *cdashig_class_scenarios_links_create(
    cdashig_class_scenarios_ref_t *self,
    list_t *scenarios
    ) {
    return cdashig_class_scenarios_links_create_internal (
        self,
        scenarios
        );
}

void cdashig_class_scenarios_links_free(cdashig_class_scenarios_links_t *cdashig_class_scenarios_links) {
    if(NULL == cdashig_class_scenarios_links){
        return ;
    }
    if(cdashig_class_scenarios_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_class_scenarios_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_class_scenarios_links->self) {
        cdashig_class_scenarios_ref_free(cdashig_class_scenarios_links->self);
        cdashig_class_scenarios_links->self = NULL;
    }
    if (cdashig_class_scenarios_links->scenarios) {
        list_ForEach(listEntry, cdashig_class_scenarios_links->scenarios) {
            cdashig_scenario_ref_element_free(listEntry->data);
        }
        list_freeList(cdashig_class_scenarios_links->scenarios);
        cdashig_class_scenarios_links->scenarios = NULL;
    }
    free(cdashig_class_scenarios_links);
}

cJSON *cdashig_class_scenarios_links_convertToJSON(cdashig_class_scenarios_links_t *cdashig_class_scenarios_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_class_scenarios_links->self
    if(cdashig_class_scenarios_links->self) {
    cJSON *self_local_JSON = cdashig_class_scenarios_ref_convertToJSON(cdashig_class_scenarios_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_class_scenarios_links->scenarios
    if(cdashig_class_scenarios_links->scenarios) {
    cJSON *scenarios = cJSON_AddArrayToObject(item, "scenarios");
    if(scenarios == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *scenariosListEntry;
    if (cdashig_class_scenarios_links->scenarios) {
    list_ForEach(scenariosListEntry, cdashig_class_scenarios_links->scenarios) {
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

cdashig_class_scenarios_links_t *cdashig_class_scenarios_links_parseFromJSON(cJSON *cdashig_class_scenarios_linksJSON){

    cdashig_class_scenarios_links_t *cdashig_class_scenarios_links_local_var = NULL;

    // define the local variable for cdashig_class_scenarios_links->self
    cdashig_class_scenarios_ref_t *self_local_nonprim = NULL;

    // define the local list for cdashig_class_scenarios_links->scenarios
    list_t *scenariosList = NULL;

    // cdashig_class_scenarios_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenarios_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_class_scenarios_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_class_scenarios_links->scenarios
    cJSON *scenarios = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenarios_linksJSON, "scenarios");
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


    cdashig_class_scenarios_links_local_var = cdashig_class_scenarios_links_create_internal (
        self ? self_local_nonprim : NULL,
        scenarios ? scenariosList : NULL
        );

    return cdashig_class_scenarios_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_class_scenarios_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
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
