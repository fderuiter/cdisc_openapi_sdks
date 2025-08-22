#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_scenario_fields.h"



static cdashig_scenario_fields_t *cdashig_scenario_fields_create_internal(
    char *ordinal,
    char *domain,
    char *scenario,
    cdashig_scenario_fields_links_t *_links
    ) {
    cdashig_scenario_fields_t *cdashig_scenario_fields_local_var = malloc(sizeof(cdashig_scenario_fields_t));
    if (!cdashig_scenario_fields_local_var) {
        return NULL;
    }
    cdashig_scenario_fields_local_var->ordinal = ordinal;
    cdashig_scenario_fields_local_var->domain = domain;
    cdashig_scenario_fields_local_var->scenario = scenario;
    cdashig_scenario_fields_local_var->_links = _links;

    cdashig_scenario_fields_local_var->_library_owned = 1;
    return cdashig_scenario_fields_local_var;
}

__attribute__((deprecated)) cdashig_scenario_fields_t *cdashig_scenario_fields_create(
    char *ordinal,
    char *domain,
    char *scenario,
    cdashig_scenario_fields_links_t *_links
    ) {
    return cdashig_scenario_fields_create_internal (
        ordinal,
        domain,
        scenario,
        _links
        );
}

void cdashig_scenario_fields_free(cdashig_scenario_fields_t *cdashig_scenario_fields) {
    if(NULL == cdashig_scenario_fields){
        return ;
    }
    if(cdashig_scenario_fields->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_scenario_fields_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_scenario_fields->ordinal) {
        free(cdashig_scenario_fields->ordinal);
        cdashig_scenario_fields->ordinal = NULL;
    }
    if (cdashig_scenario_fields->domain) {
        free(cdashig_scenario_fields->domain);
        cdashig_scenario_fields->domain = NULL;
    }
    if (cdashig_scenario_fields->scenario) {
        free(cdashig_scenario_fields->scenario);
        cdashig_scenario_fields->scenario = NULL;
    }
    if (cdashig_scenario_fields->_links) {
        cdashig_scenario_fields_links_free(cdashig_scenario_fields->_links);
        cdashig_scenario_fields->_links = NULL;
    }
    free(cdashig_scenario_fields);
}

cJSON *cdashig_scenario_fields_convertToJSON(cdashig_scenario_fields_t *cdashig_scenario_fields) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_scenario_fields->ordinal
    if(cdashig_scenario_fields->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_scenario_fields->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_scenario_fields->domain
    if(cdashig_scenario_fields->domain) {
    if(cJSON_AddStringToObject(item, "domain", cdashig_scenario_fields->domain) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_scenario_fields->scenario
    if(cdashig_scenario_fields->scenario) {
    if(cJSON_AddStringToObject(item, "scenario", cdashig_scenario_fields->scenario) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_scenario_fields->_links
    if(cdashig_scenario_fields->_links) {
    cJSON *_links_local_JSON = cdashig_scenario_fields_links_convertToJSON(cdashig_scenario_fields->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
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

cdashig_scenario_fields_t *cdashig_scenario_fields_parseFromJSON(cJSON *cdashig_scenario_fieldsJSON){

    cdashig_scenario_fields_t *cdashig_scenario_fields_local_var = NULL;

    // define the local variable for cdashig_scenario_fields->_links
    cdashig_scenario_fields_links_t *_links_local_nonprim = NULL;

    // cdashig_scenario_fields->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_fieldsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_scenario_fields->domain
    cJSON *domain = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_fieldsJSON, "domain");
    if (cJSON_IsNull(domain)) {
        domain = NULL;
    }
    if (domain) { 
    if(!cJSON_IsString(domain) && !cJSON_IsNull(domain))
    {
    goto end; //String
    }
    }

    // cdashig_scenario_fields->scenario
    cJSON *scenario = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_fieldsJSON, "scenario");
    if (cJSON_IsNull(scenario)) {
        scenario = NULL;
    }
    if (scenario) { 
    if(!cJSON_IsString(scenario) && !cJSON_IsNull(scenario))
    {
    goto end; //String
    }
    }

    // cdashig_scenario_fields->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_scenario_fieldsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_scenario_fields_links_parseFromJSON(_links); //nonprimitive
    }


    cdashig_scenario_fields_local_var = cdashig_scenario_fields_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        domain && !cJSON_IsNull(domain) ? strdup(domain->valuestring) : NULL,
        scenario && !cJSON_IsNull(scenario) ? strdup(scenario->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdashig_scenario_fields_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_scenario_fields_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
