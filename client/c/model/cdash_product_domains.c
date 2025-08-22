#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_product_domains.h"



static cdash_product_domains_t *cdash_product_domains_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdash_product_domains_links_t *_links
    ) {
    cdash_product_domains_t *cdash_product_domains_local_var = malloc(sizeof(cdash_product_domains_t));
    if (!cdash_product_domains_local_var) {
        return NULL;
    }
    cdash_product_domains_local_var->name = name;
    cdash_product_domains_local_var->label = label;
    cdash_product_domains_local_var->description = description;
    cdash_product_domains_local_var->source = source;
    cdash_product_domains_local_var->effective_date = effective_date;
    cdash_product_domains_local_var->registration_status = registration_status;
    cdash_product_domains_local_var->version = version;
    cdash_product_domains_local_var->_links = _links;

    cdash_product_domains_local_var->_library_owned = 1;
    return cdash_product_domains_local_var;
}

__attribute__((deprecated)) cdash_product_domains_t *cdash_product_domains_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdash_product_domains_links_t *_links
    ) {
    return cdash_product_domains_create_internal (
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

void cdash_product_domains_free(cdash_product_domains_t *cdash_product_domains) {
    if(NULL == cdash_product_domains){
        return ;
    }
    if(cdash_product_domains->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_product_domains_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_product_domains->name) {
        free(cdash_product_domains->name);
        cdash_product_domains->name = NULL;
    }
    if (cdash_product_domains->label) {
        free(cdash_product_domains->label);
        cdash_product_domains->label = NULL;
    }
    if (cdash_product_domains->description) {
        free(cdash_product_domains->description);
        cdash_product_domains->description = NULL;
    }
    if (cdash_product_domains->source) {
        free(cdash_product_domains->source);
        cdash_product_domains->source = NULL;
    }
    if (cdash_product_domains->effective_date) {
        free(cdash_product_domains->effective_date);
        cdash_product_domains->effective_date = NULL;
    }
    if (cdash_product_domains->registration_status) {
        free(cdash_product_domains->registration_status);
        cdash_product_domains->registration_status = NULL;
    }
    if (cdash_product_domains->version) {
        free(cdash_product_domains->version);
        cdash_product_domains->version = NULL;
    }
    if (cdash_product_domains->_links) {
        cdash_product_domains_links_free(cdash_product_domains->_links);
        cdash_product_domains->_links = NULL;
    }
    free(cdash_product_domains);
}

cJSON *cdash_product_domains_convertToJSON(cdash_product_domains_t *cdash_product_domains) {
    cJSON *item = cJSON_CreateObject();

    // cdash_product_domains->name
    if(cdash_product_domains->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_product_domains->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->label
    if(cdash_product_domains->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_product_domains->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->description
    if(cdash_product_domains->description) {
    if(cJSON_AddStringToObject(item, "description", cdash_product_domains->description) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->source
    if(cdash_product_domains->source) {
    if(cJSON_AddStringToObject(item, "source", cdash_product_domains->source) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->effective_date
    if(cdash_product_domains->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", cdash_product_domains->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->registration_status
    if(cdash_product_domains->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", cdash_product_domains->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->version
    if(cdash_product_domains->version) {
    if(cJSON_AddStringToObject(item, "version", cdash_product_domains->version) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product_domains->_links
    if(cdash_product_domains->_links) {
    cJSON *_links_local_JSON = cdash_product_domains_links_convertToJSON(cdash_product_domains->_links);
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

cdash_product_domains_t *cdash_product_domains_parseFromJSON(cJSON *cdash_product_domainsJSON){

    cdash_product_domains_t *cdash_product_domains_local_var = NULL;

    // define the local variable for cdash_product_domains->_links
    cdash_product_domains_links_t *_links_local_nonprim = NULL;

    // cdash_product_domains->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // cdash_product_domains->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_product_domainsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_product_domains_links_parseFromJSON(_links); //nonprimitive
    }


    cdash_product_domains_local_var = cdash_product_domains_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdash_product_domains_local_var;
end:
    if (_links_local_nonprim) {
        cdash_product_domains_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
