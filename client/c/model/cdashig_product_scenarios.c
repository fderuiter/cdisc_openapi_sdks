#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_product_scenarios.h"



static cdashig_product_scenarios_t *cdashig_product_scenarios_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_scenarios_links_t *_links
    ) {
    cdashig_product_scenarios_t *cdashig_product_scenarios_local_var = malloc(sizeof(cdashig_product_scenarios_t));
    if (!cdashig_product_scenarios_local_var) {
        return NULL;
    }
    cdashig_product_scenarios_local_var->name = name;
    cdashig_product_scenarios_local_var->label = label;
    cdashig_product_scenarios_local_var->description = description;
    cdashig_product_scenarios_local_var->source = source;
    cdashig_product_scenarios_local_var->effective_date = effective_date;
    cdashig_product_scenarios_local_var->registration_status = registration_status;
    cdashig_product_scenarios_local_var->version = version;
    cdashig_product_scenarios_local_var->_links = _links;

    cdashig_product_scenarios_local_var->_library_owned = 1;
    return cdashig_product_scenarios_local_var;
}

__attribute__((deprecated)) cdashig_product_scenarios_t *cdashig_product_scenarios_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_scenarios_links_t *_links
    ) {
    return cdashig_product_scenarios_create_internal (
        name,
        label,
        description,
        source,
        effective_date,
        registration_status,
        version,
        _links
        );
}

void cdashig_product_scenarios_free(cdashig_product_scenarios_t *cdashig_product_scenarios) {
    if(NULL == cdashig_product_scenarios){
        return ;
    }
    if(cdashig_product_scenarios->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_product_scenarios_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_product_scenarios->name) {
        free(cdashig_product_scenarios->name);
        cdashig_product_scenarios->name = NULL;
    }
    if (cdashig_product_scenarios->label) {
        free(cdashig_product_scenarios->label);
        cdashig_product_scenarios->label = NULL;
    }
    if (cdashig_product_scenarios->description) {
        free(cdashig_product_scenarios->description);
        cdashig_product_scenarios->description = NULL;
    }
    if (cdashig_product_scenarios->source) {
        free(cdashig_product_scenarios->source);
        cdashig_product_scenarios->source = NULL;
    }
    if (cdashig_product_scenarios->effective_date) {
        free(cdashig_product_scenarios->effective_date);
        cdashig_product_scenarios->effective_date = NULL;
    }
    if (cdashig_product_scenarios->registration_status) {
        free(cdashig_product_scenarios->registration_status);
        cdashig_product_scenarios->registration_status = NULL;
    }
    if (cdashig_product_scenarios->version) {
        free(cdashig_product_scenarios->version);
        cdashig_product_scenarios->version = NULL;
    }
    if (cdashig_product_scenarios->_links) {
        cdashig_product_scenarios_links_free(cdashig_product_scenarios->_links);
        cdashig_product_scenarios->_links = NULL;
    }
    free(cdashig_product_scenarios);
}

cJSON *cdashig_product_scenarios_convertToJSON(cdashig_product_scenarios_t *cdashig_product_scenarios) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_product_scenarios->name
    if(cdashig_product_scenarios->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_product_scenarios->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->label
    if(cdashig_product_scenarios->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_product_scenarios->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->description
    if(cdashig_product_scenarios->description) {
    if(cJSON_AddStringToObject(item, "description", cdashig_product_scenarios->description) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->source
    if(cdashig_product_scenarios->source) {
    if(cJSON_AddStringToObject(item, "source", cdashig_product_scenarios->source) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->effective_date
    if(cdashig_product_scenarios->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", cdashig_product_scenarios->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->registration_status
    if(cdashig_product_scenarios->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", cdashig_product_scenarios->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->version
    if(cdashig_product_scenarios->version) {
    if(cJSON_AddStringToObject(item, "version", cdashig_product_scenarios->version) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios->_links
    if(cdashig_product_scenarios->_links) {
    cJSON *_links_local_JSON = cdashig_product_scenarios_links_convertToJSON(cdashig_product_scenarios->_links);
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

cdashig_product_scenarios_t *cdashig_product_scenarios_parseFromJSON(cJSON *cdashig_product_scenariosJSON){

    cdashig_product_scenarios_t *cdashig_product_scenarios_local_var = NULL;

    // define the local variable for cdashig_product_scenarios->_links
    cdashig_product_scenarios_links_t *_links_local_nonprim = NULL;

    // cdashig_product_scenarios->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenariosJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_product_scenarios_links_parseFromJSON(_links); //nonprimitive
    }


    cdashig_product_scenarios_local_var = cdashig_product_scenarios_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdashig_product_scenarios_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_product_scenarios_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
