#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_product.h"



static cdash_product_t *cdash_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdash_product_links_t *_links,
    list_t *classes,
    list_t *domains
    ) {
    cdash_product_t *cdash_product_local_var = malloc(sizeof(cdash_product_t));
    if (!cdash_product_local_var) {
        return NULL;
    }
    cdash_product_local_var->name = name;
    cdash_product_local_var->label = label;
    cdash_product_local_var->description = description;
    cdash_product_local_var->source = source;
    cdash_product_local_var->effective_date = effective_date;
    cdash_product_local_var->registration_status = registration_status;
    cdash_product_local_var->version = version;
    cdash_product_local_var->_links = _links;
    cdash_product_local_var->classes = classes;
    cdash_product_local_var->domains = domains;

    cdash_product_local_var->_library_owned = 1;
    return cdash_product_local_var;
}

__attribute__((deprecated)) cdash_product_t *cdash_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdash_product_links_t *_links,
    list_t *classes,
    list_t *domains
    ) {
    return cdash_product_create_internal (
        name,
        label,
        description,
        source,
        effective_date,
        registration_status,
        version,
        _links,
        classes,
        domains
        );
}

void cdash_product_free(cdash_product_t *cdash_product) {
    if(NULL == cdash_product){
        return ;
    }
    if(cdash_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_product->name) {
        free(cdash_product->name);
        cdash_product->name = NULL;
    }
    if (cdash_product->label) {
        free(cdash_product->label);
        cdash_product->label = NULL;
    }
    if (cdash_product->description) {
        free(cdash_product->description);
        cdash_product->description = NULL;
    }
    if (cdash_product->source) {
        free(cdash_product->source);
        cdash_product->source = NULL;
    }
    if (cdash_product->effective_date) {
        free(cdash_product->effective_date);
        cdash_product->effective_date = NULL;
    }
    if (cdash_product->registration_status) {
        free(cdash_product->registration_status);
        cdash_product->registration_status = NULL;
    }
    if (cdash_product->version) {
        free(cdash_product->version);
        cdash_product->version = NULL;
    }
    if (cdash_product->_links) {
        cdash_product_links_free(cdash_product->_links);
        cdash_product->_links = NULL;
    }
    if (cdash_product->classes) {
        list_ForEach(listEntry, cdash_product->classes) {
            cdash_class_free(listEntry->data);
        }
        list_freeList(cdash_product->classes);
        cdash_product->classes = NULL;
    }
    if (cdash_product->domains) {
        list_ForEach(listEntry, cdash_product->domains) {
            cdash_domain_free(listEntry->data);
        }
        list_freeList(cdash_product->domains);
        cdash_product->domains = NULL;
    }
    free(cdash_product);
}

cJSON *cdash_product_convertToJSON(cdash_product_t *cdash_product) {
    cJSON *item = cJSON_CreateObject();

    // cdash_product->name
    if(cdash_product->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_product->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->label
    if(cdash_product->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_product->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->description
    if(cdash_product->description) {
    if(cJSON_AddStringToObject(item, "description", cdash_product->description) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->source
    if(cdash_product->source) {
    if(cJSON_AddStringToObject(item, "source", cdash_product->source) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->effective_date
    if(cdash_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", cdash_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->registration_status
    if(cdash_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", cdash_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->version
    if(cdash_product->version) {
    if(cJSON_AddStringToObject(item, "version", cdash_product->version) == NULL) {
    goto fail; //String
    }
    }


    // cdash_product->_links
    if(cdash_product->_links) {
    cJSON *_links_local_JSON = cdash_product_links_convertToJSON(cdash_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_product->classes
    if(cdash_product->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (cdash_product->classes) {
    list_ForEach(classesListEntry, cdash_product->classes) {
    cJSON *itemLocal = cdash_class_convertToJSON(classesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(classes, itemLocal);
    }
    }
    }


    // cdash_product->domains
    if(cdash_product->domains) {
    cJSON *domains = cJSON_AddArrayToObject(item, "domains");
    if(domains == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domainsListEntry;
    if (cdash_product->domains) {
    list_ForEach(domainsListEntry, cdash_product->domains) {
    cJSON *itemLocal = cdash_domain_convertToJSON(domainsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(domains, itemLocal);
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

cdash_product_t *cdash_product_parseFromJSON(cJSON *cdash_productJSON){

    cdash_product_t *cdash_product_local_var = NULL;

    // define the local variable for cdash_product->_links
    cdash_product_links_t *_links_local_nonprim = NULL;

    // define the local list for cdash_product->classes
    list_t *classesList = NULL;

    // define the local list for cdash_product->domains
    list_t *domainsList = NULL;

    // cdash_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdash_product->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // cdash_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // cdash_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // cdash_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // cdash_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_product_links_parseFromJSON(_links); //nonprimitive
    }

    // cdash_product->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "classes");
    if (cJSON_IsNull(classes)) {
        classes = NULL;
    }
    if (classes) { 
    cJSON *classes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(classes)){
        goto end; //nonprimitive container
    }

    classesList = list_createList();

    cJSON_ArrayForEach(classes_local_nonprimitive,classes )
    {
        if(!cJSON_IsObject(classes_local_nonprimitive)){
            goto end;
        }
        cdash_class_t *classesItem = cdash_class_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }

    // cdash_product->domains
    cJSON *domains = cJSON_GetObjectItemCaseSensitive(cdash_productJSON, "domains");
    if (cJSON_IsNull(domains)) {
        domains = NULL;
    }
    if (domains) { 
    cJSON *domains_local_nonprimitive = NULL;
    if(!cJSON_IsArray(domains)){
        goto end; //nonprimitive container
    }

    domainsList = list_createList();

    cJSON_ArrayForEach(domains_local_nonprimitive,domains )
    {
        if(!cJSON_IsObject(domains_local_nonprimitive)){
            goto end;
        }
        cdash_domain_t *domainsItem = cdash_domain_parseFromJSON(domains_local_nonprimitive);

        list_addElement(domainsList, domainsItem);
    }
    }


    cdash_product_local_var = cdash_product_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        classes ? classesList : NULL,
        domains ? domainsList : NULL
        );

    return cdash_product_local_var;
end:
    if (_links_local_nonprim) {
        cdash_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            cdash_class_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    if (domainsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, domainsList) {
            cdash_domain_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(domainsList);
        domainsList = NULL;
    }
    return NULL;

}
