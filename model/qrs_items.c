#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_items.h"



static qrs_items_t *qrs_items_create_internal(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_items_links_t *_links
    ) {
    qrs_items_t *qrs_items_local_var = malloc(sizeof(qrs_items_t));
    if (!qrs_items_local_var) {
        return NULL;
    }
    qrs_items_local_var->name = name;
    qrs_items_local_var->label = label;
    qrs_items_local_var->description = description;
    qrs_items_local_var->effective_date = effective_date;
    qrs_items_local_var->until_date = until_date;
    qrs_items_local_var->registration_status = registration_status;
    qrs_items_local_var->version = version;
    qrs_items_local_var->qrs_type = qrs_type;
    qrs_items_local_var->_links = _links;

    qrs_items_local_var->_library_owned = 1;
    return qrs_items_local_var;
}

__attribute__((deprecated)) qrs_items_t *qrs_items_create(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_items_links_t *_links
    ) {
    return qrs_items_create_internal (
        name,
        label,
        description,
        effective_date,
        until_date,
        registration_status,
        version,
        qrs_type,
        _links
        );
}

void qrs_items_free(qrs_items_t *qrs_items) {
    if(NULL == qrs_items){
        return ;
    }
    if(qrs_items->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_items_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_items->name) {
        free(qrs_items->name);
        qrs_items->name = NULL;
    }
    if (qrs_items->label) {
        free(qrs_items->label);
        qrs_items->label = NULL;
    }
    if (qrs_items->description) {
        free(qrs_items->description);
        qrs_items->description = NULL;
    }
    if (qrs_items->effective_date) {
        free(qrs_items->effective_date);
        qrs_items->effective_date = NULL;
    }
    if (qrs_items->until_date) {
        free(qrs_items->until_date);
        qrs_items->until_date = NULL;
    }
    if (qrs_items->registration_status) {
        free(qrs_items->registration_status);
        qrs_items->registration_status = NULL;
    }
    if (qrs_items->version) {
        free(qrs_items->version);
        qrs_items->version = NULL;
    }
    if (qrs_items->qrs_type) {
        free(qrs_items->qrs_type);
        qrs_items->qrs_type = NULL;
    }
    if (qrs_items->_links) {
        qrs_items_links_free(qrs_items->_links);
        qrs_items->_links = NULL;
    }
    free(qrs_items);
}

cJSON *qrs_items_convertToJSON(qrs_items_t *qrs_items) {
    cJSON *item = cJSON_CreateObject();

    // qrs_items->name
    if(qrs_items->name) {
    if(cJSON_AddStringToObject(item, "name", qrs_items->name) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->label
    if(qrs_items->label) {
    if(cJSON_AddStringToObject(item, "label", qrs_items->label) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->description
    if(qrs_items->description) {
    if(cJSON_AddStringToObject(item, "description", qrs_items->description) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->effective_date
    if(qrs_items->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", qrs_items->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->until_date
    if(qrs_items->until_date) {
    if(cJSON_AddStringToObject(item, "untilDate", qrs_items->until_date) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->registration_status
    if(qrs_items->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", qrs_items->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->version
    if(qrs_items->version) {
    if(cJSON_AddStringToObject(item, "version", qrs_items->version) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->qrs_type
    if(qrs_items->qrs_type) {
    if(cJSON_AddStringToObject(item, "qrsType", qrs_items->qrs_type) == NULL) {
    goto fail; //String
    }
    }


    // qrs_items->_links
    if(qrs_items->_links) {
    cJSON *_links_local_JSON = qrs_items_links_convertToJSON(qrs_items->_links);
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

qrs_items_t *qrs_items_parseFromJSON(cJSON *qrs_itemsJSON){

    qrs_items_t *qrs_items_local_var = NULL;

    // define the local variable for qrs_items->_links
    qrs_items_links_t *_links_local_nonprim = NULL;

    // qrs_items->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // qrs_items->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // qrs_items->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // qrs_items->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // qrs_items->until_date
    cJSON *until_date = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "untilDate");
    if (cJSON_IsNull(until_date)) {
        until_date = NULL;
    }
    if (until_date) { 
    if(!cJSON_IsString(until_date) && !cJSON_IsNull(until_date))
    {
    goto end; //String
    }
    }

    // qrs_items->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // qrs_items->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // qrs_items->qrs_type
    cJSON *qrs_type = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "qrsType");
    if (cJSON_IsNull(qrs_type)) {
        qrs_type = NULL;
    }
    if (qrs_type) { 
    if(!cJSON_IsString(qrs_type) && !cJSON_IsNull(qrs_type))
    {
    goto end; //String
    }
    }

    // qrs_items->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(qrs_itemsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = qrs_items_links_parseFromJSON(_links); //nonprimitive
    }


    qrs_items_local_var = qrs_items_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        until_date && !cJSON_IsNull(until_date) ? strdup(until_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        qrs_type && !cJSON_IsNull(qrs_type) ? strdup(qrs_type->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return qrs_items_local_var;
end:
    if (_links_local_nonprim) {
        qrs_items_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
