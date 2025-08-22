#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_product.h"



static cdashig_product_t *cdashig_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_links_t *_links,
    list_t *classes
    ) {
    cdashig_product_t *cdashig_product_local_var = malloc(sizeof(cdashig_product_t));
    if (!cdashig_product_local_var) {
        return NULL;
    }
    cdashig_product_local_var->name = name;
    cdashig_product_local_var->label = label;
    cdashig_product_local_var->description = description;
    cdashig_product_local_var->source = source;
    cdashig_product_local_var->effective_date = effective_date;
    cdashig_product_local_var->registration_status = registration_status;
    cdashig_product_local_var->version = version;
    cdashig_product_local_var->_links = _links;
    cdashig_product_local_var->classes = classes;

    cdashig_product_local_var->_library_owned = 1;
    return cdashig_product_local_var;
}

__attribute__((deprecated)) cdashig_product_t *cdashig_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_links_t *_links,
    list_t *classes
    ) {
    return cdashig_product_create_internal (
        name,
        label,
        description,
        source,
        effective_date,
        registration_status,
        version,
        _links,
        classes
        );
}

void cdashig_product_free(cdashig_product_t *cdashig_product) {
    if(NULL == cdashig_product){
        return ;
    }
    if(cdashig_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_product->name) {
        free(cdashig_product->name);
        cdashig_product->name = NULL;
    }
    if (cdashig_product->label) {
        free(cdashig_product->label);
        cdashig_product->label = NULL;
    }
    if (cdashig_product->description) {
        free(cdashig_product->description);
        cdashig_product->description = NULL;
    }
    if (cdashig_product->source) {
        free(cdashig_product->source);
        cdashig_product->source = NULL;
    }
    if (cdashig_product->effective_date) {
        free(cdashig_product->effective_date);
        cdashig_product->effective_date = NULL;
    }
    if (cdashig_product->registration_status) {
        free(cdashig_product->registration_status);
        cdashig_product->registration_status = NULL;
    }
    if (cdashig_product->version) {
        free(cdashig_product->version);
        cdashig_product->version = NULL;
    }
    if (cdashig_product->_links) {
        cdashig_product_links_free(cdashig_product->_links);
        cdashig_product->_links = NULL;
    }
    if (cdashig_product->classes) {
        list_ForEach(listEntry, cdashig_product->classes) {
            cdashig_class_free(listEntry->data);
        }
        list_freeList(cdashig_product->classes);
        cdashig_product->classes = NULL;
    }
    free(cdashig_product);
}

cJSON *cdashig_product_convertToJSON(cdashig_product_t *cdashig_product) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_product->name
    if(cdashig_product->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_product->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->label
    if(cdashig_product->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_product->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->description
    if(cdashig_product->description) {
    if(cJSON_AddStringToObject(item, "description", cdashig_product->description) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->source
    if(cdashig_product->source) {
    if(cJSON_AddStringToObject(item, "source", cdashig_product->source) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->effective_date
    if(cdashig_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", cdashig_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->registration_status
    if(cdashig_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", cdashig_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->version
    if(cdashig_product->version) {
    if(cJSON_AddStringToObject(item, "version", cdashig_product->version) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product->_links
    if(cdashig_product->_links) {
    cJSON *_links_local_JSON = cdashig_product_links_convertToJSON(cdashig_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_product->classes
    if(cdashig_product->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (cdashig_product->classes) {
    list_ForEach(classesListEntry, cdashig_product->classes) {
    cJSON *itemLocal = cdashig_class_convertToJSON(classesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(classes, itemLocal);
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

cdashig_product_t *cdashig_product_parseFromJSON(cJSON *cdashig_productJSON){

    cdashig_product_t *cdashig_product_local_var = NULL;

    // define the local variable for cdashig_product->_links
    cdashig_product_links_t *_links_local_nonprim = NULL;

    // define the local list for cdashig_product->classes
    list_t *classesList = NULL;

    // cdashig_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdashig_product->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // cdashig_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // cdashig_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // cdashig_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // cdashig_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_product_links_parseFromJSON(_links); //nonprimitive
    }

    // cdashig_product->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(cdashig_productJSON, "classes");
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
        cdashig_class_t *classesItem = cdashig_class_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    cdashig_product_local_var = cdashig_product_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        classes ? classesList : NULL
        );

    return cdashig_product_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            cdashig_class_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
