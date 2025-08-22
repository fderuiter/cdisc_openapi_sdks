#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_classes.h"



static sdtmig_classes_t *sdtmig_classes_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_classes_links_t *_links
    ) {
    sdtmig_classes_t *sdtmig_classes_local_var = malloc(sizeof(sdtmig_classes_t));
    if (!sdtmig_classes_local_var) {
        return NULL;
    }
    sdtmig_classes_local_var->name = name;
    sdtmig_classes_local_var->label = label;
    sdtmig_classes_local_var->description = description;
    sdtmig_classes_local_var->source = source;
    sdtmig_classes_local_var->effective_date = effective_date;
    sdtmig_classes_local_var->registration_status = registration_status;
    sdtmig_classes_local_var->version = version;
    sdtmig_classes_local_var->_links = _links;

    sdtmig_classes_local_var->_library_owned = 1;
    return sdtmig_classes_local_var;
}

__attribute__((deprecated)) sdtmig_classes_t *sdtmig_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_classes_links_t *_links
    ) {
    return sdtmig_classes_create_internal (
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

void sdtmig_classes_free(sdtmig_classes_t *sdtmig_classes) {
    if(NULL == sdtmig_classes){
        return ;
    }
    if(sdtmig_classes->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_classes_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_classes->name) {
        free(sdtmig_classes->name);
        sdtmig_classes->name = NULL;
    }
    if (sdtmig_classes->label) {
        free(sdtmig_classes->label);
        sdtmig_classes->label = NULL;
    }
    if (sdtmig_classes->description) {
        free(sdtmig_classes->description);
        sdtmig_classes->description = NULL;
    }
    if (sdtmig_classes->source) {
        free(sdtmig_classes->source);
        sdtmig_classes->source = NULL;
    }
    if (sdtmig_classes->effective_date) {
        free(sdtmig_classes->effective_date);
        sdtmig_classes->effective_date = NULL;
    }
    if (sdtmig_classes->registration_status) {
        free(sdtmig_classes->registration_status);
        sdtmig_classes->registration_status = NULL;
    }
    if (sdtmig_classes->version) {
        free(sdtmig_classes->version);
        sdtmig_classes->version = NULL;
    }
    if (sdtmig_classes->_links) {
        sdtmig_classes_links_free(sdtmig_classes->_links);
        sdtmig_classes->_links = NULL;
    }
    free(sdtmig_classes);
}

cJSON *sdtmig_classes_convertToJSON(sdtmig_classes_t *sdtmig_classes) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_classes->name
    if(sdtmig_classes->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_classes->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->label
    if(sdtmig_classes->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_classes->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->description
    if(sdtmig_classes->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_classes->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->source
    if(sdtmig_classes->source) {
    if(cJSON_AddStringToObject(item, "source", sdtmig_classes->source) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->effective_date
    if(sdtmig_classes->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sdtmig_classes->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->registration_status
    if(sdtmig_classes->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sdtmig_classes->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->version
    if(sdtmig_classes->version) {
    if(cJSON_AddStringToObject(item, "version", sdtmig_classes->version) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_classes->_links
    if(sdtmig_classes->_links) {
    cJSON *_links_local_JSON = sdtmig_classes_links_convertToJSON(sdtmig_classes->_links);
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

sdtmig_classes_t *sdtmig_classes_parseFromJSON(cJSON *sdtmig_classesJSON){

    sdtmig_classes_t *sdtmig_classes_local_var = NULL;

    // define the local variable for sdtmig_classes->_links
    sdtmig_classes_links_t *_links_local_nonprim = NULL;

    // sdtmig_classes->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sdtmig_classes->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_classesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_classes_links_parseFromJSON(_links); //nonprimitive
    }


    sdtmig_classes_local_var = sdtmig_classes_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtmig_classes_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_classes_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
