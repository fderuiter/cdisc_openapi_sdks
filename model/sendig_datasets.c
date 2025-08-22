#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_datasets.h"



static sendig_datasets_t *sendig_datasets_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_datasets_links_t *_links
    ) {
    sendig_datasets_t *sendig_datasets_local_var = malloc(sizeof(sendig_datasets_t));
    if (!sendig_datasets_local_var) {
        return NULL;
    }
    sendig_datasets_local_var->name = name;
    sendig_datasets_local_var->label = label;
    sendig_datasets_local_var->description = description;
    sendig_datasets_local_var->source = source;
    sendig_datasets_local_var->effective_date = effective_date;
    sendig_datasets_local_var->registration_status = registration_status;
    sendig_datasets_local_var->version = version;
    sendig_datasets_local_var->_links = _links;

    sendig_datasets_local_var->_library_owned = 1;
    return sendig_datasets_local_var;
}

__attribute__((deprecated)) sendig_datasets_t *sendig_datasets_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_datasets_links_t *_links
    ) {
    return sendig_datasets_create_internal (
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

void sendig_datasets_free(sendig_datasets_t *sendig_datasets) {
    if(NULL == sendig_datasets){
        return ;
    }
    if(sendig_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_datasets->name) {
        free(sendig_datasets->name);
        sendig_datasets->name = NULL;
    }
    if (sendig_datasets->label) {
        free(sendig_datasets->label);
        sendig_datasets->label = NULL;
    }
    if (sendig_datasets->description) {
        free(sendig_datasets->description);
        sendig_datasets->description = NULL;
    }
    if (sendig_datasets->source) {
        free(sendig_datasets->source);
        sendig_datasets->source = NULL;
    }
    if (sendig_datasets->effective_date) {
        free(sendig_datasets->effective_date);
        sendig_datasets->effective_date = NULL;
    }
    if (sendig_datasets->registration_status) {
        free(sendig_datasets->registration_status);
        sendig_datasets->registration_status = NULL;
    }
    if (sendig_datasets->version) {
        free(sendig_datasets->version);
        sendig_datasets->version = NULL;
    }
    if (sendig_datasets->_links) {
        sendig_datasets_links_free(sendig_datasets->_links);
        sendig_datasets->_links = NULL;
    }
    free(sendig_datasets);
}

cJSON *sendig_datasets_convertToJSON(sendig_datasets_t *sendig_datasets) {
    cJSON *item = cJSON_CreateObject();

    // sendig_datasets->name
    if(sendig_datasets->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_datasets->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->label
    if(sendig_datasets->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_datasets->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->description
    if(sendig_datasets->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_datasets->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->source
    if(sendig_datasets->source) {
    if(cJSON_AddStringToObject(item, "source", sendig_datasets->source) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->effective_date
    if(sendig_datasets->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sendig_datasets->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->registration_status
    if(sendig_datasets->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sendig_datasets->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->version
    if(sendig_datasets->version) {
    if(cJSON_AddStringToObject(item, "version", sendig_datasets->version) == NULL) {
    goto fail; //String
    }
    }


    // sendig_datasets->_links
    if(sendig_datasets->_links) {
    cJSON *_links_local_JSON = sendig_datasets_links_convertToJSON(sendig_datasets->_links);
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

sendig_datasets_t *sendig_datasets_parseFromJSON(cJSON *sendig_datasetsJSON){

    sendig_datasets_t *sendig_datasets_local_var = NULL;

    // define the local variable for sendig_datasets->_links
    sendig_datasets_links_t *_links_local_nonprim = NULL;

    // sendig_datasets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_datasets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_datasets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_datasets->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sendig_datasets->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sendig_datasets->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sendig_datasets->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sendig_datasets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_datasetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_datasets_links_parseFromJSON(_links); //nonprimitive
    }


    sendig_datasets_local_var = sendig_datasets_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sendig_datasets_local_var;
end:
    if (_links_local_nonprim) {
        sendig_datasets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
