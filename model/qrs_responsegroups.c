#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_responsegroups.h"



static qrs_responsegroups_t *qrs_responsegroups_create_internal(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_responsegroups_links_t *_links
    ) {
    qrs_responsegroups_t *qrs_responsegroups_local_var = malloc(sizeof(qrs_responsegroups_t));
    if (!qrs_responsegroups_local_var) {
        return NULL;
    }
    qrs_responsegroups_local_var->name = name;
    qrs_responsegroups_local_var->label = label;
    qrs_responsegroups_local_var->description = description;
    qrs_responsegroups_local_var->effective_date = effective_date;
    qrs_responsegroups_local_var->until_date = until_date;
    qrs_responsegroups_local_var->registration_status = registration_status;
    qrs_responsegroups_local_var->version = version;
    qrs_responsegroups_local_var->qrs_type = qrs_type;
    qrs_responsegroups_local_var->_links = _links;

    qrs_responsegroups_local_var->_library_owned = 1;
    return qrs_responsegroups_local_var;
}

__attribute__((deprecated)) qrs_responsegroups_t *qrs_responsegroups_create(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_responsegroups_links_t *_links
    ) {
    return qrs_responsegroups_create_internal (
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

void qrs_responsegroups_free(qrs_responsegroups_t *qrs_responsegroups) {
    if(NULL == qrs_responsegroups){
        return ;
    }
    if(qrs_responsegroups->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_responsegroups_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_responsegroups->name) {
        free(qrs_responsegroups->name);
        qrs_responsegroups->name = NULL;
    }
    if (qrs_responsegroups->label) {
        free(qrs_responsegroups->label);
        qrs_responsegroups->label = NULL;
    }
    if (qrs_responsegroups->description) {
        free(qrs_responsegroups->description);
        qrs_responsegroups->description = NULL;
    }
    if (qrs_responsegroups->effective_date) {
        free(qrs_responsegroups->effective_date);
        qrs_responsegroups->effective_date = NULL;
    }
    if (qrs_responsegroups->until_date) {
        free(qrs_responsegroups->until_date);
        qrs_responsegroups->until_date = NULL;
    }
    if (qrs_responsegroups->registration_status) {
        free(qrs_responsegroups->registration_status);
        qrs_responsegroups->registration_status = NULL;
    }
    if (qrs_responsegroups->version) {
        free(qrs_responsegroups->version);
        qrs_responsegroups->version = NULL;
    }
    if (qrs_responsegroups->qrs_type) {
        free(qrs_responsegroups->qrs_type);
        qrs_responsegroups->qrs_type = NULL;
    }
    if (qrs_responsegroups->_links) {
        qrs_responsegroups_links_free(qrs_responsegroups->_links);
        qrs_responsegroups->_links = NULL;
    }
    free(qrs_responsegroups);
}

cJSON *qrs_responsegroups_convertToJSON(qrs_responsegroups_t *qrs_responsegroups) {
    cJSON *item = cJSON_CreateObject();

    // qrs_responsegroups->name
    if(qrs_responsegroups->name) {
    if(cJSON_AddStringToObject(item, "name", qrs_responsegroups->name) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->label
    if(qrs_responsegroups->label) {
    if(cJSON_AddStringToObject(item, "label", qrs_responsegroups->label) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->description
    if(qrs_responsegroups->description) {
    if(cJSON_AddStringToObject(item, "description", qrs_responsegroups->description) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->effective_date
    if(qrs_responsegroups->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", qrs_responsegroups->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->until_date
    if(qrs_responsegroups->until_date) {
    if(cJSON_AddStringToObject(item, "untilDate", qrs_responsegroups->until_date) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->registration_status
    if(qrs_responsegroups->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", qrs_responsegroups->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->version
    if(qrs_responsegroups->version) {
    if(cJSON_AddStringToObject(item, "version", qrs_responsegroups->version) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->qrs_type
    if(qrs_responsegroups->qrs_type) {
    if(cJSON_AddStringToObject(item, "qrsType", qrs_responsegroups->qrs_type) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroups->_links
    if(qrs_responsegroups->_links) {
    cJSON *_links_local_JSON = qrs_responsegroups_links_convertToJSON(qrs_responsegroups->_links);
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

qrs_responsegroups_t *qrs_responsegroups_parseFromJSON(cJSON *qrs_responsegroupsJSON){

    qrs_responsegroups_t *qrs_responsegroups_local_var = NULL;

    // define the local variable for qrs_responsegroups->_links
    qrs_responsegroups_links_t *_links_local_nonprim = NULL;

    // qrs_responsegroups->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->until_date
    cJSON *until_date = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "untilDate");
    if (cJSON_IsNull(until_date)) {
        until_date = NULL;
    }
    if (until_date) { 
    if(!cJSON_IsString(until_date) && !cJSON_IsNull(until_date))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->qrs_type
    cJSON *qrs_type = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "qrsType");
    if (cJSON_IsNull(qrs_type)) {
        qrs_type = NULL;
    }
    if (qrs_type) { 
    if(!cJSON_IsString(qrs_type) && !cJSON_IsNull(qrs_type))
    {
    goto end; //String
    }
    }

    // qrs_responsegroups->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = qrs_responsegroups_links_parseFromJSON(_links); //nonprimitive
    }


    qrs_responsegroups_local_var = qrs_responsegroups_create_internal (
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

    return qrs_responsegroups_local_var;
end:
    if (_links_local_nonprim) {
        qrs_responsegroups_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
