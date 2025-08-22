#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_classes.h"



static sdtm_classes_t *sdtm_classes_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_classes_links_t *_links
    ) {
    sdtm_classes_t *sdtm_classes_local_var = malloc(sizeof(sdtm_classes_t));
    if (!sdtm_classes_local_var) {
        return NULL;
    }
    sdtm_classes_local_var->name = name;
    sdtm_classes_local_var->label = label;
    sdtm_classes_local_var->description = description;
    sdtm_classes_local_var->source = source;
    sdtm_classes_local_var->effective_date = effective_date;
    sdtm_classes_local_var->registration_status = registration_status;
    sdtm_classes_local_var->version = version;
    sdtm_classes_local_var->_links = _links;

    sdtm_classes_local_var->_library_owned = 1;
    return sdtm_classes_local_var;
}

__attribute__((deprecated)) sdtm_classes_t *sdtm_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_classes_links_t *_links
    ) {
    return sdtm_classes_create_internal (
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

void sdtm_classes_free(sdtm_classes_t *sdtm_classes) {
    if(NULL == sdtm_classes){
        return ;
    }
    if(sdtm_classes->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_classes_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_classes->name) {
        free(sdtm_classes->name);
        sdtm_classes->name = NULL;
    }
    if (sdtm_classes->label) {
        free(sdtm_classes->label);
        sdtm_classes->label = NULL;
    }
    if (sdtm_classes->description) {
        free(sdtm_classes->description);
        sdtm_classes->description = NULL;
    }
    if (sdtm_classes->source) {
        free(sdtm_classes->source);
        sdtm_classes->source = NULL;
    }
    if (sdtm_classes->effective_date) {
        free(sdtm_classes->effective_date);
        sdtm_classes->effective_date = NULL;
    }
    if (sdtm_classes->registration_status) {
        free(sdtm_classes->registration_status);
        sdtm_classes->registration_status = NULL;
    }
    if (sdtm_classes->version) {
        free(sdtm_classes->version);
        sdtm_classes->version = NULL;
    }
    if (sdtm_classes->_links) {
        sdtm_classes_links_free(sdtm_classes->_links);
        sdtm_classes->_links = NULL;
    }
    free(sdtm_classes);
}

cJSON *sdtm_classes_convertToJSON(sdtm_classes_t *sdtm_classes) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_classes->name
    if(sdtm_classes->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_classes->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->label
    if(sdtm_classes->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_classes->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->description
    if(sdtm_classes->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_classes->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->source
    if(sdtm_classes->source) {
    if(cJSON_AddStringToObject(item, "source", sdtm_classes->source) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->effective_date
    if(sdtm_classes->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sdtm_classes->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->registration_status
    if(sdtm_classes->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sdtm_classes->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->version
    if(sdtm_classes->version) {
    if(cJSON_AddStringToObject(item, "version", sdtm_classes->version) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_classes->_links
    if(sdtm_classes->_links) {
    cJSON *_links_local_JSON = sdtm_classes_links_convertToJSON(sdtm_classes->_links);
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

sdtm_classes_t *sdtm_classes_parseFromJSON(cJSON *sdtm_classesJSON){

    sdtm_classes_t *sdtm_classes_local_var = NULL;

    // define the local variable for sdtm_classes->_links
    sdtm_classes_links_t *_links_local_nonprim = NULL;

    // sdtm_classes->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_classes->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_classes->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_classes->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sdtm_classes->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sdtm_classes->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sdtm_classes->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sdtm_classes->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_classesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_classes_links_parseFromJSON(_links); //nonprimitive
    }


    sdtm_classes_local_var = sdtm_classes_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtm_classes_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_classes_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
