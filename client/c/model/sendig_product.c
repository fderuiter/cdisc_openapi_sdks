#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_product.h"



static sendig_product_t *sendig_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_product_links_t *_links,
    list_t *classes
    ) {
    sendig_product_t *sendig_product_local_var = malloc(sizeof(sendig_product_t));
    if (!sendig_product_local_var) {
        return NULL;
    }
    sendig_product_local_var->name = name;
    sendig_product_local_var->label = label;
    sendig_product_local_var->description = description;
    sendig_product_local_var->source = source;
    sendig_product_local_var->effective_date = effective_date;
    sendig_product_local_var->registration_status = registration_status;
    sendig_product_local_var->version = version;
    sendig_product_local_var->_links = _links;
    sendig_product_local_var->classes = classes;

    sendig_product_local_var->_library_owned = 1;
    return sendig_product_local_var;
}

__attribute__((deprecated)) sendig_product_t *sendig_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_product_links_t *_links,
    list_t *classes
    ) {
    return sendig_product_create_internal (
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

void sendig_product_free(sendig_product_t *sendig_product) {
    if(NULL == sendig_product){
        return ;
    }
    if(sendig_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_product->name) {
        free(sendig_product->name);
        sendig_product->name = NULL;
    }
    if (sendig_product->label) {
        free(sendig_product->label);
        sendig_product->label = NULL;
    }
    if (sendig_product->description) {
        free(sendig_product->description);
        sendig_product->description = NULL;
    }
    if (sendig_product->source) {
        free(sendig_product->source);
        sendig_product->source = NULL;
    }
    if (sendig_product->effective_date) {
        free(sendig_product->effective_date);
        sendig_product->effective_date = NULL;
    }
    if (sendig_product->registration_status) {
        free(sendig_product->registration_status);
        sendig_product->registration_status = NULL;
    }
    if (sendig_product->version) {
        free(sendig_product->version);
        sendig_product->version = NULL;
    }
    if (sendig_product->_links) {
        sendig_product_links_free(sendig_product->_links);
        sendig_product->_links = NULL;
    }
    if (sendig_product->classes) {
        list_ForEach(listEntry, sendig_product->classes) {
            sendig_class_free(listEntry->data);
        }
        list_freeList(sendig_product->classes);
        sendig_product->classes = NULL;
    }
    free(sendig_product);
}

cJSON *sendig_product_convertToJSON(sendig_product_t *sendig_product) {
    cJSON *item = cJSON_CreateObject();

    // sendig_product->name
    if(sendig_product->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_product->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->label
    if(sendig_product->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_product->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->description
    if(sendig_product->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_product->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->source
    if(sendig_product->source) {
    if(cJSON_AddStringToObject(item, "source", sendig_product->source) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->effective_date
    if(sendig_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sendig_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->registration_status
    if(sendig_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sendig_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->version
    if(sendig_product->version) {
    if(cJSON_AddStringToObject(item, "version", sendig_product->version) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product->_links
    if(sendig_product->_links) {
    cJSON *_links_local_JSON = sendig_product_links_convertToJSON(sendig_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_product->classes
    if(sendig_product->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (sendig_product->classes) {
    list_ForEach(classesListEntry, sendig_product->classes) {
    cJSON *itemLocal = sendig_class_convertToJSON(classesListEntry->data);
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

sendig_product_t *sendig_product_parseFromJSON(cJSON *sendig_productJSON){

    sendig_product_t *sendig_product_local_var = NULL;

    // define the local variable for sendig_product->_links
    sendig_product_links_t *_links_local_nonprim = NULL;

    // define the local list for sendig_product->classes
    list_t *classesList = NULL;

    // sendig_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_product->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sendig_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sendig_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sendig_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sendig_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_product_links_parseFromJSON(_links); //nonprimitive
    }

    // sendig_product->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(sendig_productJSON, "classes");
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
        sendig_class_t *classesItem = sendig_class_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    sendig_product_local_var = sendig_product_create_internal (
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

    return sendig_product_local_var;
end:
    if (_links_local_nonprim) {
        sendig_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            sendig_class_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
