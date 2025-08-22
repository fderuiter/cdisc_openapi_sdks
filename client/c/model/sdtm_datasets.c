#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_datasets.h"



static sdtm_datasets_t *sdtm_datasets_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_datasets_links_t *_links
    ) {
    sdtm_datasets_t *sdtm_datasets_local_var = malloc(sizeof(sdtm_datasets_t));
    if (!sdtm_datasets_local_var) {
        return NULL;
    }
    sdtm_datasets_local_var->name = name;
    sdtm_datasets_local_var->label = label;
    sdtm_datasets_local_var->description = description;
    sdtm_datasets_local_var->source = source;
    sdtm_datasets_local_var->effective_date = effective_date;
    sdtm_datasets_local_var->registration_status = registration_status;
    sdtm_datasets_local_var->version = version;
    sdtm_datasets_local_var->_links = _links;

    sdtm_datasets_local_var->_library_owned = 1;
    return sdtm_datasets_local_var;
}

__attribute__((deprecated)) sdtm_datasets_t *sdtm_datasets_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_datasets_links_t *_links
    ) {
    return sdtm_datasets_create_internal (
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

void sdtm_datasets_free(sdtm_datasets_t *sdtm_datasets) {
    if(NULL == sdtm_datasets){
        return ;
    }
    if(sdtm_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_datasets->name) {
        free(sdtm_datasets->name);
        sdtm_datasets->name = NULL;
    }
    if (sdtm_datasets->label) {
        free(sdtm_datasets->label);
        sdtm_datasets->label = NULL;
    }
    if (sdtm_datasets->description) {
        free(sdtm_datasets->description);
        sdtm_datasets->description = NULL;
    }
    if (sdtm_datasets->source) {
        free(sdtm_datasets->source);
        sdtm_datasets->source = NULL;
    }
    if (sdtm_datasets->effective_date) {
        free(sdtm_datasets->effective_date);
        sdtm_datasets->effective_date = NULL;
    }
    if (sdtm_datasets->registration_status) {
        free(sdtm_datasets->registration_status);
        sdtm_datasets->registration_status = NULL;
    }
    if (sdtm_datasets->version) {
        free(sdtm_datasets->version);
        sdtm_datasets->version = NULL;
    }
    if (sdtm_datasets->_links) {
        sdtm_datasets_links_free(sdtm_datasets->_links);
        sdtm_datasets->_links = NULL;
    }
    free(sdtm_datasets);
}

cJSON *sdtm_datasets_convertToJSON(sdtm_datasets_t *sdtm_datasets) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_datasets->name
    if(sdtm_datasets->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_datasets->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->label
    if(sdtm_datasets->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_datasets->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->description
    if(sdtm_datasets->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_datasets->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->source
    if(sdtm_datasets->source) {
    if(cJSON_AddStringToObject(item, "source", sdtm_datasets->source) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->effective_date
    if(sdtm_datasets->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sdtm_datasets->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->registration_status
    if(sdtm_datasets->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sdtm_datasets->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->version
    if(sdtm_datasets->version) {
    if(cJSON_AddStringToObject(item, "version", sdtm_datasets->version) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_datasets->_links
    if(sdtm_datasets->_links) {
    cJSON *_links_local_JSON = sdtm_datasets_links_convertToJSON(sdtm_datasets->_links);
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

sdtm_datasets_t *sdtm_datasets_parseFromJSON(cJSON *sdtm_datasetsJSON){

    sdtm_datasets_t *sdtm_datasets_local_var = NULL;

    // define the local variable for sdtm_datasets->_links
    sdtm_datasets_links_t *_links_local_nonprim = NULL;

    // sdtm_datasets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sdtm_datasets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_datasetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_datasets_links_parseFromJSON(_links); //nonprimitive
    }


    sdtm_datasets_local_var = sdtm_datasets_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtm_datasets_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_datasets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
