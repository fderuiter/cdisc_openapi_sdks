#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_product_datastructures.h"



static adam_product_datastructures_t *adam_product_datastructures_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    adam_product_datastructures_links_t *_links
    ) {
    adam_product_datastructures_t *adam_product_datastructures_local_var = malloc(sizeof(adam_product_datastructures_t));
    if (!adam_product_datastructures_local_var) {
        return NULL;
    }
    adam_product_datastructures_local_var->name = name;
    adam_product_datastructures_local_var->label = label;
    adam_product_datastructures_local_var->description = description;
    adam_product_datastructures_local_var->source = source;
    adam_product_datastructures_local_var->effective_date = effective_date;
    adam_product_datastructures_local_var->registration_status = registration_status;
    adam_product_datastructures_local_var->version = version;
    adam_product_datastructures_local_var->_links = _links;

    adam_product_datastructures_local_var->_library_owned = 1;
    return adam_product_datastructures_local_var;
}

__attribute__((deprecated)) adam_product_datastructures_t *adam_product_datastructures_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    adam_product_datastructures_links_t *_links
    ) {
    return adam_product_datastructures_create_internal (
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

void adam_product_datastructures_free(adam_product_datastructures_t *adam_product_datastructures) {
    if(NULL == adam_product_datastructures){
        return ;
    }
    if(adam_product_datastructures->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_product_datastructures_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_product_datastructures->name) {
        free(adam_product_datastructures->name);
        adam_product_datastructures->name = NULL;
    }
    if (adam_product_datastructures->label) {
        free(adam_product_datastructures->label);
        adam_product_datastructures->label = NULL;
    }
    if (adam_product_datastructures->description) {
        free(adam_product_datastructures->description);
        adam_product_datastructures->description = NULL;
    }
    if (adam_product_datastructures->source) {
        free(adam_product_datastructures->source);
        adam_product_datastructures->source = NULL;
    }
    if (adam_product_datastructures->effective_date) {
        free(adam_product_datastructures->effective_date);
        adam_product_datastructures->effective_date = NULL;
    }
    if (adam_product_datastructures->registration_status) {
        free(adam_product_datastructures->registration_status);
        adam_product_datastructures->registration_status = NULL;
    }
    if (adam_product_datastructures->version) {
        free(adam_product_datastructures->version);
        adam_product_datastructures->version = NULL;
    }
    if (adam_product_datastructures->_links) {
        adam_product_datastructures_links_free(adam_product_datastructures->_links);
        adam_product_datastructures->_links = NULL;
    }
    free(adam_product_datastructures);
}

cJSON *adam_product_datastructures_convertToJSON(adam_product_datastructures_t *adam_product_datastructures) {
    cJSON *item = cJSON_CreateObject();

    // adam_product_datastructures->name
    if(adam_product_datastructures->name) {
    if(cJSON_AddStringToObject(item, "name", adam_product_datastructures->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->label
    if(adam_product_datastructures->label) {
    if(cJSON_AddStringToObject(item, "label", adam_product_datastructures->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->description
    if(adam_product_datastructures->description) {
    if(cJSON_AddStringToObject(item, "description", adam_product_datastructures->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->source
    if(adam_product_datastructures->source) {
    if(cJSON_AddStringToObject(item, "source", adam_product_datastructures->source) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->effective_date
    if(adam_product_datastructures->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", adam_product_datastructures->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->registration_status
    if(adam_product_datastructures->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", adam_product_datastructures->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->version
    if(adam_product_datastructures->version) {
    if(cJSON_AddStringToObject(item, "version", adam_product_datastructures->version) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_datastructures->_links
    if(adam_product_datastructures->_links) {
    cJSON *_links_local_JSON = adam_product_datastructures_links_convertToJSON(adam_product_datastructures->_links);
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

adam_product_datastructures_t *adam_product_datastructures_parseFromJSON(cJSON *adam_product_datastructuresJSON){

    adam_product_datastructures_t *adam_product_datastructures_local_var = NULL;

    // define the local variable for adam_product_datastructures->_links
    adam_product_datastructures_links_t *_links_local_nonprim = NULL;

    // adam_product_datastructures->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // adam_product_datastructures->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_product_datastructuresJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_product_datastructures_links_parseFromJSON(_links); //nonprimitive
    }


    adam_product_datastructures_local_var = adam_product_datastructures_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return adam_product_datastructures_local_var;
end:
    if (_links_local_nonprim) {
        adam_product_datastructures_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
