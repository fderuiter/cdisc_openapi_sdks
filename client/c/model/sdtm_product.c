#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_product.h"



static sdtm_product_t *sdtm_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_product_links_t *_links,
    list_t *classes,
    list_t *datasets
    ) {
    sdtm_product_t *sdtm_product_local_var = malloc(sizeof(sdtm_product_t));
    if (!sdtm_product_local_var) {
        return NULL;
    }
    sdtm_product_local_var->name = name;
    sdtm_product_local_var->label = label;
    sdtm_product_local_var->description = description;
    sdtm_product_local_var->source = source;
    sdtm_product_local_var->effective_date = effective_date;
    sdtm_product_local_var->registration_status = registration_status;
    sdtm_product_local_var->version = version;
    sdtm_product_local_var->_links = _links;
    sdtm_product_local_var->classes = classes;
    sdtm_product_local_var->datasets = datasets;

    sdtm_product_local_var->_library_owned = 1;
    return sdtm_product_local_var;
}

__attribute__((deprecated)) sdtm_product_t *sdtm_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_product_links_t *_links,
    list_t *classes,
    list_t *datasets
    ) {
    return sdtm_product_create_internal (
        name,
        label,
        description,
        source,
        effective_date,
        registration_status,
        version,
        _links,
        classes,
        datasets
        );
}

void sdtm_product_free(sdtm_product_t *sdtm_product) {
    if(NULL == sdtm_product){
        return ;
    }
    if(sdtm_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_product->name) {
        free(sdtm_product->name);
        sdtm_product->name = NULL;
    }
    if (sdtm_product->label) {
        free(sdtm_product->label);
        sdtm_product->label = NULL;
    }
    if (sdtm_product->description) {
        free(sdtm_product->description);
        sdtm_product->description = NULL;
    }
    if (sdtm_product->source) {
        free(sdtm_product->source);
        sdtm_product->source = NULL;
    }
    if (sdtm_product->effective_date) {
        free(sdtm_product->effective_date);
        sdtm_product->effective_date = NULL;
    }
    if (sdtm_product->registration_status) {
        free(sdtm_product->registration_status);
        sdtm_product->registration_status = NULL;
    }
    if (sdtm_product->version) {
        free(sdtm_product->version);
        sdtm_product->version = NULL;
    }
    if (sdtm_product->_links) {
        sdtm_product_links_free(sdtm_product->_links);
        sdtm_product->_links = NULL;
    }
    if (sdtm_product->classes) {
        list_ForEach(listEntry, sdtm_product->classes) {
            sdtm_class_free(listEntry->data);
        }
        list_freeList(sdtm_product->classes);
        sdtm_product->classes = NULL;
    }
    if (sdtm_product->datasets) {
        list_ForEach(listEntry, sdtm_product->datasets) {
            sdtm_dataset_free(listEntry->data);
        }
        list_freeList(sdtm_product->datasets);
        sdtm_product->datasets = NULL;
    }
    free(sdtm_product);
}

cJSON *sdtm_product_convertToJSON(sdtm_product_t *sdtm_product) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_product->name
    if(sdtm_product->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_product->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->label
    if(sdtm_product->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_product->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->description
    if(sdtm_product->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_product->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->source
    if(sdtm_product->source) {
    if(cJSON_AddStringToObject(item, "source", sdtm_product->source) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->effective_date
    if(sdtm_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", sdtm_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->registration_status
    if(sdtm_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", sdtm_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->version
    if(sdtm_product->version) {
    if(cJSON_AddStringToObject(item, "version", sdtm_product->version) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_product->_links
    if(sdtm_product->_links) {
    cJSON *_links_local_JSON = sdtm_product_links_convertToJSON(sdtm_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_product->classes
    if(sdtm_product->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (sdtm_product->classes) {
    list_ForEach(classesListEntry, sdtm_product->classes) {
    cJSON *itemLocal = sdtm_class_convertToJSON(classesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(classes, itemLocal);
    }
    }
    }


    // sdtm_product->datasets
    if(sdtm_product->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sdtm_product->datasets) {
    list_ForEach(datasetsListEntry, sdtm_product->datasets) {
    cJSON *itemLocal = sdtm_dataset_convertToJSON(datasetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(datasets, itemLocal);
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

sdtm_product_t *sdtm_product_parseFromJSON(cJSON *sdtm_productJSON){

    sdtm_product_t *sdtm_product_local_var = NULL;

    // define the local variable for sdtm_product->_links
    sdtm_product_links_t *_links_local_nonprim = NULL;

    // define the local list for sdtm_product->classes
    list_t *classesList = NULL;

    // define the local list for sdtm_product->datasets
    list_t *datasetsList = NULL;

    // sdtm_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_product->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // sdtm_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // sdtm_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // sdtm_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // sdtm_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_product_links_parseFromJSON(_links); //nonprimitive
    }

    // sdtm_product->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "classes");
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
        sdtm_class_t *classesItem = sdtm_class_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }

    // sdtm_product->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sdtm_productJSON, "datasets");
    if (cJSON_IsNull(datasets)) {
        datasets = NULL;
    }
    if (datasets) { 
    cJSON *datasets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(datasets)){
        goto end; //nonprimitive container
    }

    datasetsList = list_createList();

    cJSON_ArrayForEach(datasets_local_nonprimitive,datasets )
    {
        if(!cJSON_IsObject(datasets_local_nonprimitive)){
            goto end;
        }
        sdtm_dataset_t *datasetsItem = sdtm_dataset_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    sdtm_product_local_var = sdtm_product_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        classes ? classesList : NULL,
        datasets ? datasetsList : NULL
        );

    return sdtm_product_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            sdtm_class_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            sdtm_dataset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
