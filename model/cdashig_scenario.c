#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_scenario.h"



static cdashig_scenario_t *cdashig_scenario_create_internal(
    char *ordinal,
    char *domain,
    char *scenario,
    cdashig_scenario_links_t *_links,
    list_t *fields
    ) {
    cdashig_scenario_t *cdashig_scenario_local_var = malloc(sizeof(cdashig_scenario_t));
    if (!cdashig_scenario_local_var) {
        return NULL;
    }
    cdashig_scenario_local_var->ordinal = ordinal;
    cdashig_scenario_local_var->domain = domain;
    cdashig_scenario_local_var->scenario = scenario;
    cdashig_scenario_local_var->_links = _links;
    cdashig_scenario_local_var->fields = fields;

    cdashig_scenario_local_var->_library_owned = 1;
    return cdashig_scenario_local_var;
}

__attribute__((deprecated)) cdashig_scenario_t *cdashig_scenario_create(
    char *ordinal,
    char *domain,
    char *scenario,
    cdashig_scenario_links_t *_links,
    list_t *fields
    ) {
    return cdashig_scenario_create_internal (
        ordinal,
        domain,
        scenario,
        _links,
        fields
        );
}

void cdashig_scenario_free(cdashig_scenario_t *cdashig_scenario) {
    if(NULL == cdashig_scenario){
        return ;
    }
    if(cdashig_scenario->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_scenario_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_scenario->ordinal) {
        free(cdashig_scenario->ordinal);
        cdashig_scenario->ordinal = NULL;
    }
    if (cdashig_scenario->domain) {
        free(cdashig_scenario->domain);
        cdashig_scenario->domain = NULL;
    }
    if (cdashig_scenario->scenario) {
        free(cdashig_scenario->scenario);
        cdashig_scenario->scenario = NULL;
    }
    if (cdashig_scenario->_links) {
        cdashig_scenario_links_free(cdashig_scenario->_links);
        cdashig_scenario->_links = NULL;
    }
    if (cdashig_scenario->fields) {
        list_ForEach(listEntry, cdashig_scenario->fields) {
            cdashig_scenario_field_free(listEntry->data);
        }
        list_freeList(cdashig_scenario->fields);
        cdashig_scenario->fields = NULL;
    }
    free(cdashig_scenario);
}

cJSON *cdashig_scenario_convertToJSON(cdashig_scenario_t *cdashig_scenario) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_scenario->ordinal
    if(cdashig_scenario->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_scenario->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_scenario->domain
    if(cdashig_scenario->domain) {
    if(cJSON_AddStringToObject(item, "domain", cdashig_scenario->domain) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_scenario->scenario
    if(cdashig_scenario->scenario) {
    if(cJSON_AddStringToObject(item, "scenario", cdashig_scenario->scenario) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_scenario->_links
    if(cdashig_scenario->_links) {
    cJSON *_links_local_JSON = cdashig_scenario_links_convertToJSON(cdashig_scenario->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_scenario->fields
    if(cdashig_scenario->fields) {
    cJSON *fields = cJSON_AddArrayToObject(item, "fields");
    if(fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fieldsListEntry;
    if (cdashig_scenario->fields) {
    list_ForEach(fieldsListEntry, cdashig_scenario->fields) {
    cJSON *itemLocal = cdashig_scenario_field_convertToJSON(fieldsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(fields, itemLocal);
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

cdashig_scenario_t *cdashig_scenario_parseFromJSON(cJSON *cdashig_scenarioJSON){

    cdashig_scenario_t *cdashig_scenario_local_var = NULL;

    // define the local variable for cdashig_scenario->_links
    cdashig_scenario_links_t *_links_local_nonprim = NULL;

    // define the local list for cdashig_scenario->fields
    list_t *fieldsList = NULL;

    // cdashig_scenario->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_scenarioJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_scenario->domain
    cJSON *domain = cJSON_GetObjectItemCaseSensitive(cdashig_scenarioJSON, "domain");
    if (cJSON_IsNull(domain)) {
        domain = NULL;
    }
    if (domain) { 
    if(!cJSON_IsString(domain) && !cJSON_IsNull(domain))
    {
    goto end; //String
    }
    }

    // cdashig_scenario->scenario
    cJSON *scenario = cJSON_GetObjectItemCaseSensitive(cdashig_scenarioJSON, "scenario");
    if (cJSON_IsNull(scenario)) {
        scenario = NULL;
    }
    if (scenario) { 
    if(!cJSON_IsString(scenario) && !cJSON_IsNull(scenario))
    {
    goto end; //String
    }
    }

    // cdashig_scenario->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_scenarioJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_scenario_links_parseFromJSON(_links); //nonprimitive
    }

    // cdashig_scenario->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(cdashig_scenarioJSON, "fields");
    if (cJSON_IsNull(fields)) {
        fields = NULL;
    }
    if (fields) { 
    cJSON *fields_local_nonprimitive = NULL;
    if(!cJSON_IsArray(fields)){
        goto end; //nonprimitive container
    }

    fieldsList = list_createList();

    cJSON_ArrayForEach(fields_local_nonprimitive,fields )
    {
        if(!cJSON_IsObject(fields_local_nonprimitive)){
            goto end;
        }
        cdashig_scenario_field_t *fieldsItem = cdashig_scenario_field_parseFromJSON(fields_local_nonprimitive);

        list_addElement(fieldsList, fieldsItem);
    }
    }


    cdashig_scenario_local_var = cdashig_scenario_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        domain && !cJSON_IsNull(domain) ? strdup(domain->valuestring) : NULL,
        scenario && !cJSON_IsNull(scenario) ? strdup(scenario->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        fields ? fieldsList : NULL
        );

    return cdashig_scenario_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_scenario_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fieldsList) {
            cdashig_scenario_field_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fieldsList);
        fieldsList = NULL;
    }
    return NULL;

}
