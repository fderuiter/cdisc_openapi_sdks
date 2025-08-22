#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package.h"



static ct_package_t *ct_package_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    ct_package_links_t *_links,
    list_t *codelists
    ) {
    ct_package_t *ct_package_local_var = malloc(sizeof(ct_package_t));
    if (!ct_package_local_var) {
        return NULL;
    }
    ct_package_local_var->name = name;
    ct_package_local_var->label = label;
    ct_package_local_var->description = description;
    ct_package_local_var->source = source;
    ct_package_local_var->effective_date = effective_date;
    ct_package_local_var->registration_status = registration_status;
    ct_package_local_var->version = version;
    ct_package_local_var->_links = _links;
    ct_package_local_var->codelists = codelists;

    ct_package_local_var->_library_owned = 1;
    return ct_package_local_var;
}

__attribute__((deprecated)) ct_package_t *ct_package_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    ct_package_links_t *_links,
    list_t *codelists
    ) {
    return ct_package_create_internal (
        name,
        label,
        description,
        source,
        effective_date,
        registration_status,
        version,
        _links,
        codelists
        );
}

void ct_package_free(ct_package_t *ct_package) {
    if(NULL == ct_package){
        return ;
    }
    if(ct_package->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package->name) {
        free(ct_package->name);
        ct_package->name = NULL;
    }
    if (ct_package->label) {
        free(ct_package->label);
        ct_package->label = NULL;
    }
    if (ct_package->description) {
        free(ct_package->description);
        ct_package->description = NULL;
    }
    if (ct_package->source) {
        free(ct_package->source);
        ct_package->source = NULL;
    }
    if (ct_package->effective_date) {
        free(ct_package->effective_date);
        ct_package->effective_date = NULL;
    }
    if (ct_package->registration_status) {
        free(ct_package->registration_status);
        ct_package->registration_status = NULL;
    }
    if (ct_package->version) {
        free(ct_package->version);
        ct_package->version = NULL;
    }
    if (ct_package->_links) {
        ct_package_links_free(ct_package->_links);
        ct_package->_links = NULL;
    }
    if (ct_package->codelists) {
        list_ForEach(listEntry, ct_package->codelists) {
            ct_package_codelists_free(listEntry->data);
        }
        list_freeList(ct_package->codelists);
        ct_package->codelists = NULL;
    }
    free(ct_package);
}

cJSON *ct_package_convertToJSON(ct_package_t *ct_package) {
    cJSON *item = cJSON_CreateObject();

    // ct_package->name
    if(ct_package->name) {
    if(cJSON_AddStringToObject(item, "name", ct_package->name) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->label
    if(ct_package->label) {
    if(cJSON_AddStringToObject(item, "label", ct_package->label) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->description
    if(ct_package->description) {
    if(cJSON_AddStringToObject(item, "description", ct_package->description) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->source
    if(ct_package->source) {
    if(cJSON_AddStringToObject(item, "source", ct_package->source) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->effective_date
    if(ct_package->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", ct_package->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->registration_status
    if(ct_package->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", ct_package->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->version
    if(ct_package->version) {
    if(cJSON_AddStringToObject(item, "version", ct_package->version) == NULL) {
    goto fail; //String
    }
    }


    // ct_package->_links
    if(ct_package->_links) {
    cJSON *_links_local_JSON = ct_package_links_convertToJSON(ct_package->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_package->codelists
    if(ct_package->codelists) {
    cJSON *codelists = cJSON_AddArrayToObject(item, "codelists");
    if(codelists == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *codelistsListEntry;
    if (ct_package->codelists) {
    list_ForEach(codelistsListEntry, ct_package->codelists) {
    cJSON *itemLocal = ct_package_codelists_convertToJSON(codelistsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(codelists, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

ct_package_t *ct_package_parseFromJSON(cJSON *ct_packageJSON){

    ct_package_t *ct_package_local_var = NULL;

    // define the local variable for ct_package->_links
    ct_package_links_t *_links_local_nonprim = NULL;

    // define the local list for ct_package->codelists
    list_t *codelistsList = NULL;

    // ct_package->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // ct_package->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // ct_package->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // ct_package->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // ct_package->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // ct_package->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // ct_package->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // ct_package->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = ct_package_links_parseFromJSON(_links); //nonprimitive
    }

    // ct_package->codelists
    cJSON *codelists = cJSON_GetObjectItemCaseSensitive(ct_packageJSON, "codelists");
    if (cJSON_IsNull(codelists)) {
        codelists = NULL;
    }
    if (codelists) { 
    cJSON *codelists_local_nonprimitive = NULL;
    if(!cJSON_IsArray(codelists)){
        goto end; //nonprimitive container
    }

    codelistsList = list_createList();

    cJSON_ArrayForEach(codelists_local_nonprimitive,codelists )
    {
        if(!cJSON_IsObject(codelists_local_nonprimitive)){
            goto end;
        }
        ct_package_codelists_t *codelistsItem = ct_package_codelists_parseFromJSON(codelists_local_nonprimitive);

        list_addElement(codelistsList, codelistsItem);
    }
    }


    ct_package_local_var = ct_package_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        codelists ? codelistsList : NULL
        );

    return ct_package_local_var;
end:
    if (_links_local_nonprim) {
        ct_package_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (codelistsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, codelistsList) {
            ct_package_codelists_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(codelistsList);
        codelistsList = NULL;
    }
    return NULL;

}
