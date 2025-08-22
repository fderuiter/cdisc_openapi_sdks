#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_datasets.h"



static sdtmig_datasets_t *sdtmig_datasets_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_datasets_links_t *_links
    ) {
    sdtmig_datasets_t *sdtmig_datasets_local_var = malloc(sizeof(sdtmig_datasets_t));
    if (!sdtmig_datasets_local_var) {
        return NULL;
    }
    sdtmig_datasets_local_var->name = name;
    sdtmig_datasets_local_var->label = label;
    sdtmig_datasets_local_var->description = description;
    sdtmig_datasets_local_var->source = source;
    sdtmig_datasets_local_var->effective_date = effective_date;
    sdtmig_datasets_local_var->registration_status = registration_status;
    sdtmig_datasets_local_var->version = version;
    sdtmig_datasets_local_var->_links = _links;

    sdtmig_datasets_local_var->_library_owned = 1;
    return sdtmig_datasets_local_var;
}

__attribute__((deprecated)) sdtmig_datasets_t *sdtmig_datasets_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_datasets_links_t *_links
    ) {
    return sdtmig_datasets_create_internal (
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

void sdtmig_datasets_free(sdtmig_datasets_t *sdtmig_datasets) {
    if(NULL == sdtmig_datasets){
        return ;
    }
    if(sdtmig_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_datasets->name) {
        free(sdtmig_datasets->name);
        sdtmig_datasets->name = NULL;
    }
    if (sdtmig_datasets->label) {
        free(sdtmig_datasets->label);
        sdtmig_datasets->label = NULL;
    }
    if (sdtmig_datasets->description) {
        free(sdtmig_datasets->description);
        sdtmig_datasets->description = NULL;
    }
    if (sdtmig_datasets->source) {
        free(sdtmig_datasets->source);
        sdtmig_datasets->source = NULL;
    }
    if (sdtmig_datasets->effective_date) {
        free(sdtmig_datasets->effective_date);
        sdtmig_datasets->effective_date = NULL;
    }
    if (sdtmig_datasets->registration_status) {
        free(sdtmig_datasets->registration_status);
        sdtmig_datasets->registration_status = NULL;
    }
    if (sdtmig_datasets->version) {
        free(sdtmig_datasets->version);
        sdtmig_datasets->version = NULL;
    }
    if (sdtmig_datasets->_links) {
        sdtmig_datasets_links_free(sdtmig_datasets->_links);
        sdtmig_datasets->_links = NULL;
    }
    free(sdtmig_datasets);
}

cJSON *sdtmig_datasets_convertToJSON(sdtmig_datasets_t *sdtmig_datasets) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_datasets->name
    if(sdtmig_datasets->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_datasets->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->label
    if(sdtmig_datasets->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_datasets->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->description
    if(sdtmig_datasets->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_datasets->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->source
    if(sdtmig_datasets->source) {
    if(cJSON_AddStringToObject(item, "source", sdtmig_datasets->source) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->effective_date
    if(sdtmig_datasets->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sdtmig_datasets->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->registration_status
    if(sdtmig_datasets->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sdtmig_datasets->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->version
    if(sdtmig_datasets->version) {
    if(cJSON_AddStringToObject(item, "version", sdtmig_datasets->version) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_datasets->_links
    if(sdtmig_datasets->_links) {
    cJSON *_links_local_JSON = sdtmig_datasets_links_convertToJSON(sdtmig_datasets->_links);
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

sdtmig_datasets_t *sdtmig_datasets_parseFromJSON(cJSON *sdtmig_datasetsJSON){

    sdtmig_datasets_t *sdtmig_datasets_local_var = NULL;

    // define the local variable for sdtmig_datasets->_links
    sdtmig_datasets_links_t *_links_local_nonprim = NULL;

    // sdtmig_datasets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sdtmig_datasets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_datasets_links_parseFromJSON(_links); //nonprimitive
    }


    sdtmig_datasets_local_var = sdtmig_datasets_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtmig_datasets_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_datasets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
