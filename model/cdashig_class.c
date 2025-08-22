#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_class.h"



static cdashig_class_t *cdashig_class_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdashig_class_links_t *_links,
    list_t *domains,
    list_t *scenarios
    ) {
    cdashig_class_t *cdashig_class_local_var = malloc(sizeof(cdashig_class_t));
    if (!cdashig_class_local_var) {
        return NULL;
    }
    cdashig_class_local_var->ordinal = ordinal;
    cdashig_class_local_var->name = name;
    cdashig_class_local_var->label = label;
    cdashig_class_local_var->description = description;
    cdashig_class_local_var->_links = _links;
    cdashig_class_local_var->domains = domains;
    cdashig_class_local_var->scenarios = scenarios;

    cdashig_class_local_var->_library_owned = 1;
    return cdashig_class_local_var;
}

__attribute__((deprecated)) cdashig_class_t *cdashig_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdashig_class_links_t *_links,
    list_t *domains,
    list_t *scenarios
    ) {
    return cdashig_class_create_internal (
        ordinal,
        name,
        label,
        description,
        _links,
        domains,
        scenarios
        );
}

void cdashig_class_free(cdashig_class_t *cdashig_class) {
    if(NULL == cdashig_class){
        return ;
    }
    if(cdashig_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_class->ordinal) {
        free(cdashig_class->ordinal);
        cdashig_class->ordinal = NULL;
    }
    if (cdashig_class->name) {
        free(cdashig_class->name);
        cdashig_class->name = NULL;
    }
    if (cdashig_class->label) {
        free(cdashig_class->label);
        cdashig_class->label = NULL;
    }
    if (cdashig_class->description) {
        free(cdashig_class->description);
        cdashig_class->description = NULL;
    }
    if (cdashig_class->_links) {
        cdashig_class_links_free(cdashig_class->_links);
        cdashig_class->_links = NULL;
    }
    if (cdashig_class->domains) {
        list_ForEach(listEntry, cdashig_class->domains) {
            cdashig_domain_free(listEntry->data);
        }
        list_freeList(cdashig_class->domains);
        cdashig_class->domains = NULL;
    }
    if (cdashig_class->scenarios) {
        list_ForEach(listEntry, cdashig_class->scenarios) {
            cdashig_scenario_free(listEntry->data);
        }
        list_freeList(cdashig_class->scenarios);
        cdashig_class->scenarios = NULL;
    }
    free(cdashig_class);
}

cJSON *cdashig_class_convertToJSON(cdashig_class_t *cdashig_class) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_class->ordinal
    if(cdashig_class->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_class->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class->name
    if(cdashig_class->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_class->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class->label
    if(cdashig_class->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_class->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class->description
    if(cdashig_class->description) {
    if(cJSON_AddStringToObject(item, "description", cdashig_class->description) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class->_links
    if(cdashig_class->_links) {
    cJSON *_links_local_JSON = cdashig_class_links_convertToJSON(cdashig_class->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_class->domains
    if(cdashig_class->domains) {
    cJSON *domains = cJSON_AddArrayToObject(item, "domains");
    if(domains == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domainsListEntry;
    if (cdashig_class->domains) {
    list_ForEach(domainsListEntry, cdashig_class->domains) {
    cJSON *itemLocal = cdashig_domain_convertToJSON(domainsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(domains, itemLocal);
    }
    }
    }


    // cdashig_class->scenarios
    if(cdashig_class->scenarios) {
    cJSON *scenarios = cJSON_AddArrayToObject(item, "scenarios");
    if(scenarios == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *scenariosListEntry;
    if (cdashig_class->scenarios) {
    list_ForEach(scenariosListEntry, cdashig_class->scenarios) {
    cJSON *itemLocal = cdashig_scenario_convertToJSON(scenariosListEntry->data);
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

cdashig_class_t *cdashig_class_parseFromJSON(cJSON *cdashig_classJSON){

    cdashig_class_t *cdashig_class_local_var = NULL;

    // define the local variable for cdashig_class->_links
    cdashig_class_links_t *_links_local_nonprim = NULL;

    // define the local list for cdashig_class->domains
    list_t *domainsList = NULL;

    // define the local list for cdashig_class->scenarios
    list_t *scenariosList = NULL;

    // cdashig_class->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_class->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_class->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_class->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdashig_class->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_class_links_parseFromJSON(_links); //nonprimitive
    }

    // cdashig_class->domains
    cJSON *domains = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "domains");
    if (cJSON_IsNull(domains)) {
        domains = NULL;
    }
    if (domains) { 
    cJSON *domains_local_nonprimitive = NULL;
    if(!cJSON_IsArray(domains)){
        goto end; //nonprimitive container
    }

    domainsList = list_createList();

    cJSON_ArrayForEach(domains_local_nonprimitive,domains )
    {
        if(!cJSON_IsObject(domains_local_nonprimitive)){
            goto end;
        }
        cdashig_domain_t *domainsItem = cdashig_domain_parseFromJSON(domains_local_nonprimitive);

        list_addElement(domainsList, domainsItem);
    }
    }

    // cdashig_class->scenarios
    cJSON *scenarios = cJSON_GetObjectItemCaseSensitive(cdashig_classJSON, "scenarios");
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
        cdashig_scenario_t *scenariosItem = cdashig_scenario_parseFromJSON(scenarios_local_nonprimitive);

        list_addElement(scenariosList, scenariosItem);
    }
    }


    cdashig_class_local_var = cdashig_class_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        domains ? domainsList : NULL,
        scenarios ? scenariosList : NULL
        );

    return cdashig_class_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_class_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (domainsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, domainsList) {
            cdashig_domain_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(domainsList);
        domainsList = NULL;
    }
    if (scenariosList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, scenariosList) {
            cdashig_scenario_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(scenariosList);
        scenariosList = NULL;
    }
    return NULL;

}
