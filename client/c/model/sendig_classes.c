#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_classes.h"



static sendig_classes_t *sendig_classes_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_classes_links_t *_links
    ) {
    sendig_classes_t *sendig_classes_local_var = malloc(sizeof(sendig_classes_t));
    if (!sendig_classes_local_var) {
        return NULL;
    }
    sendig_classes_local_var->name = name;
    sendig_classes_local_var->label = label;
    sendig_classes_local_var->description = description;
    sendig_classes_local_var->source = source;
    sendig_classes_local_var->effective_date = effective_date;
    sendig_classes_local_var->registration_status = registration_status;
    sendig_classes_local_var->version = version;
    sendig_classes_local_var->_links = _links;

    sendig_classes_local_var->_library_owned = 1;
    return sendig_classes_local_var;
}

__attribute__((deprecated)) sendig_classes_t *sendig_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_classes_links_t *_links
    ) {
    return sendig_classes_create_internal (
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

void sendig_classes_free(sendig_classes_t *sendig_classes) {
    if(NULL == sendig_classes){
        return ;
    }
    if(sendig_classes->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_classes_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_classes->name) {
        free(sendig_classes->name);
        sendig_classes->name = NULL;
    }
    if (sendig_classes->label) {
        free(sendig_classes->label);
        sendig_classes->label = NULL;
    }
    if (sendig_classes->description) {
        free(sendig_classes->description);
        sendig_classes->description = NULL;
    }
    if (sendig_classes->source) {
        free(sendig_classes->source);
        sendig_classes->source = NULL;
    }
    if (sendig_classes->effective_date) {
        free(sendig_classes->effective_date);
        sendig_classes->effective_date = NULL;
    }
    if (sendig_classes->registration_status) {
        free(sendig_classes->registration_status);
        sendig_classes->registration_status = NULL;
    }
    if (sendig_classes->version) {
        free(sendig_classes->version);
        sendig_classes->version = NULL;
    }
    if (sendig_classes->_links) {
        sendig_classes_links_free(sendig_classes->_links);
        sendig_classes->_links = NULL;
    }
    free(sendig_classes);
}

cJSON *sendig_classes_convertToJSON(sendig_classes_t *sendig_classes) {
    cJSON *item = cJSON_CreateObject();

    // sendig_classes->name
    if(sendig_classes->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_classes->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->label
    if(sendig_classes->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_classes->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->description
    if(sendig_classes->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_classes->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->source
    if(sendig_classes->source) {
    if(cJSON_AddStringToObject(item, "source", sendig_classes->source) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->effective_date
    if(sendig_classes->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sendig_classes->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->registration_status
    if(sendig_classes->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sendig_classes->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->version
    if(sendig_classes->version) {
    if(cJSON_AddStringToObject(item, "version", sendig_classes->version) == NULL) {
    goto fail; //String
    }
    }


    // sendig_classes->_links
    if(sendig_classes->_links) {
    cJSON *_links_local_JSON = sendig_classes_links_convertToJSON(sendig_classes->_links);
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

sendig_classes_t *sendig_classes_parseFromJSON(cJSON *sendig_classesJSON){

    sendig_classes_t *sendig_classes_local_var = NULL;

    // define the local variable for sendig_classes->_links
    sendig_classes_links_t *_links_local_nonprim = NULL;

    // sendig_classes->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_classes->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_classes->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_classes->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sendig_classes->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sendig_classes->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sendig_classes->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sendig_classes->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_classesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_classes_links_parseFromJSON(_links); //nonprimitive
    }


    sendig_classes_local_var = sendig_classes_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sendig_classes_local_var;
end:
    if (_links_local_nonprim) {
        sendig_classes_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
