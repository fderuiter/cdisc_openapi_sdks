#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_product.h"



static sdtmig_product_t *sdtmig_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_product_links_t *_links,
    list_t *classes
    ) {
    sdtmig_product_t *sdtmig_product_local_var = malloc(sizeof(sdtmig_product_t));
    if (!sdtmig_product_local_var) {
        return NULL;
    }
    sdtmig_product_local_var->name = name;
    sdtmig_product_local_var->label = label;
    sdtmig_product_local_var->description = description;
    sdtmig_product_local_var->source = source;
    sdtmig_product_local_var->effective_date = effective_date;
    sdtmig_product_local_var->registration_status = registration_status;
    sdtmig_product_local_var->version = version;
    sdtmig_product_local_var->_links = _links;
    sdtmig_product_local_var->classes = classes;

    sdtmig_product_local_var->_library_owned = 1;
    return sdtmig_product_local_var;
}

__attribute__((deprecated)) sdtmig_product_t *sdtmig_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_product_links_t *_links,
    list_t *classes
    ) {
    return sdtmig_product_create_internal (
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

void sdtmig_product_free(sdtmig_product_t *sdtmig_product) {
    if(NULL == sdtmig_product){
        return ;
    }
    if(sdtmig_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_product->name) {
        free(sdtmig_product->name);
        sdtmig_product->name = NULL;
    }
    if (sdtmig_product->label) {
        free(sdtmig_product->label);
        sdtmig_product->label = NULL;
    }
    if (sdtmig_product->description) {
        free(sdtmig_product->description);
        sdtmig_product->description = NULL;
    }
    if (sdtmig_product->source) {
        free(sdtmig_product->source);
        sdtmig_product->source = NULL;
    }
    if (sdtmig_product->effective_date) {
        free(sdtmig_product->effective_date);
        sdtmig_product->effective_date = NULL;
    }
    if (sdtmig_product->registration_status) {
        free(sdtmig_product->registration_status);
        sdtmig_product->registration_status = NULL;
    }
    if (sdtmig_product->version) {
        free(sdtmig_product->version);
        sdtmig_product->version = NULL;
    }
    if (sdtmig_product->_links) {
        sdtmig_product_links_free(sdtmig_product->_links);
        sdtmig_product->_links = NULL;
    }
    if (sdtmig_product->classes) {
        list_ForEach(listEntry, sdtmig_product->classes) {
            sdtmig_class_free(listEntry->data);
        }
        list_freeList(sdtmig_product->classes);
        sdtmig_product->classes = NULL;
    }
    free(sdtmig_product);
}

cJSON *sdtmig_product_convertToJSON(sdtmig_product_t *sdtmig_product) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_product->name
    if(sdtmig_product->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_product->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->label
    if(sdtmig_product->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_product->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->description
    if(sdtmig_product->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_product->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->source
    if(sdtmig_product->source) {
    if(cJSON_AddStringToObject(item, "source", sdtmig_product->source) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->effective_date
    if(sdtmig_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sdtmig_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->registration_status
    if(sdtmig_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sdtmig_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->version
    if(sdtmig_product->version) {
    if(cJSON_AddStringToObject(item, "version", sdtmig_product->version) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_product->_links
    if(sdtmig_product->_links) {
    cJSON *_links_local_JSON = sdtmig_product_links_convertToJSON(sdtmig_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_product->classes
    if(sdtmig_product->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (sdtmig_product->classes) {
    list_ForEach(classesListEntry, sdtmig_product->classes) {
    cJSON *itemLocal = sdtmig_class_convertToJSON(classesListEntry->data);
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

sdtmig_product_t *sdtmig_product_parseFromJSON(cJSON *sdtmig_productJSON){

    sdtmig_product_t *sdtmig_product_local_var = NULL;

    // define the local variable for sdtmig_product->_links
    sdtmig_product_links_t *_links_local_nonprim = NULL;

    // define the local list for sdtmig_product->classes
    list_t *classesList = NULL;

    // sdtmig_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_product->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sdtmig_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sdtmig_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sdtmig_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sdtmig_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_product_links_parseFromJSON(_links); //nonprimitive
    }

    // sdtmig_product->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(sdtmig_productJSON, "classes");
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
        sdtmig_class_t *classesItem = sdtmig_class_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    sdtmig_product_local_var = sdtmig_product_create_internal (
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

    return sdtmig_product_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            sdtmig_class_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
