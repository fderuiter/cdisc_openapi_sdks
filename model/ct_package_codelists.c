#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package_codelists.h"



static ct_package_codelists_t *ct_package_codelists_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    ct_package_codelists_links_t *_links
    ) {
    ct_package_codelists_t *ct_package_codelists_local_var = malloc(sizeof(ct_package_codelists_t));
    if (!ct_package_codelists_local_var) {
        return NULL;
    }
    ct_package_codelists_local_var->name = name;
    ct_package_codelists_local_var->label = label;
    ct_package_codelists_local_var->description = description;
    ct_package_codelists_local_var->source = source;
    ct_package_codelists_local_var->effective_date = effective_date;
    ct_package_codelists_local_var->registration_status = registration_status;
    ct_package_codelists_local_var->version = version;
    ct_package_codelists_local_var->_links = _links;

    ct_package_codelists_local_var->_library_owned = 1;
    return ct_package_codelists_local_var;
}

__attribute__((deprecated)) ct_package_codelists_t *ct_package_codelists_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    ct_package_codelists_links_t *_links
    ) {
    return ct_package_codelists_create_internal (
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

void ct_package_codelists_free(ct_package_codelists_t *ct_package_codelists) {
    if(NULL == ct_package_codelists){
        return ;
    }
    if(ct_package_codelists->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_codelists_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package_codelists->name) {
        free(ct_package_codelists->name);
        ct_package_codelists->name = NULL;
    }
    if (ct_package_codelists->label) {
        free(ct_package_codelists->label);
        ct_package_codelists->label = NULL;
    }
    if (ct_package_codelists->description) {
        free(ct_package_codelists->description);
        ct_package_codelists->description = NULL;
    }
    if (ct_package_codelists->source) {
        free(ct_package_codelists->source);
        ct_package_codelists->source = NULL;
    }
    if (ct_package_codelists->effective_date) {
        free(ct_package_codelists->effective_date);
        ct_package_codelists->effective_date = NULL;
    }
    if (ct_package_codelists->registration_status) {
        free(ct_package_codelists->registration_status);
        ct_package_codelists->registration_status = NULL;
    }
    if (ct_package_codelists->version) {
        free(ct_package_codelists->version);
        ct_package_codelists->version = NULL;
    }
    if (ct_package_codelists->_links) {
        ct_package_codelists_links_free(ct_package_codelists->_links);
        ct_package_codelists->_links = NULL;
    }
    free(ct_package_codelists);
}

cJSON *ct_package_codelists_convertToJSON(ct_package_codelists_t *ct_package_codelists) {
    cJSON *item = cJSON_CreateObject();

    // ct_package_codelists->name
    if(ct_package_codelists->name) {
    if(cJSON_AddStringToObject(item, "name", ct_package_codelists->name) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->label
    if(ct_package_codelists->label) {
    if(cJSON_AddStringToObject(item, "label", ct_package_codelists->label) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->description
    if(ct_package_codelists->description) {
    if(cJSON_AddStringToObject(item, "description", ct_package_codelists->description) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->source
    if(ct_package_codelists->source) {
    if(cJSON_AddStringToObject(item, "source", ct_package_codelists->source) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->effective_date
    if(ct_package_codelists->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", ct_package_codelists->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->registration_status
    if(ct_package_codelists->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", ct_package_codelists->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->version
    if(ct_package_codelists->version) {
    if(cJSON_AddStringToObject(item, "version", ct_package_codelists->version) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists->_links
    if(ct_package_codelists->_links) {
    cJSON *_links_local_JSON = ct_package_codelists_links_convertToJSON(ct_package_codelists->_links);
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

ct_package_codelists_t *ct_package_codelists_parseFromJSON(cJSON *ct_package_codelistsJSON){

    ct_package_codelists_t *ct_package_codelists_local_var = NULL;

    // define the local variable for ct_package_codelists->_links
    ct_package_codelists_links_t *_links_local_nonprim = NULL;

    // ct_package_codelists->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // ct_package_codelists->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(ct_package_codelistsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = ct_package_codelists_links_parseFromJSON(_links); //nonprimitive
    }


    ct_package_codelists_local_var = ct_package_codelists_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return ct_package_codelists_local_var;
end:
    if (_links_local_nonprim) {
        ct_package_codelists_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
