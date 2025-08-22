#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_class.h"



static sdtmig_class_t *sdtmig_class_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtmig_class_links_t *_links,
    list_t *datasets
    ) {
    sdtmig_class_t *sdtmig_class_local_var = malloc(sizeof(sdtmig_class_t));
    if (!sdtmig_class_local_var) {
        return NULL;
    }
    sdtmig_class_local_var->ordinal = ordinal;
    sdtmig_class_local_var->name = name;
    sdtmig_class_local_var->label = label;
    sdtmig_class_local_var->description = description;
    sdtmig_class_local_var->_links = _links;
    sdtmig_class_local_var->datasets = datasets;

    sdtmig_class_local_var->_library_owned = 1;
    return sdtmig_class_local_var;
}

__attribute__((deprecated)) sdtmig_class_t *sdtmig_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtmig_class_links_t *_links,
    list_t *datasets
    ) {
    return sdtmig_class_create_internal (
        ordinal,
        name,
        label,
        description,
        _links,
        datasets
        );
}

void sdtmig_class_free(sdtmig_class_t *sdtmig_class) {
    if(NULL == sdtmig_class){
        return ;
    }
    if(sdtmig_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_class->ordinal) {
        free(sdtmig_class->ordinal);
        sdtmig_class->ordinal = NULL;
    }
    if (sdtmig_class->name) {
        free(sdtmig_class->name);
        sdtmig_class->name = NULL;
    }
    if (sdtmig_class->label) {
        free(sdtmig_class->label);
        sdtmig_class->label = NULL;
    }
    if (sdtmig_class->description) {
        free(sdtmig_class->description);
        sdtmig_class->description = NULL;
    }
    if (sdtmig_class->_links) {
        sdtmig_class_links_free(sdtmig_class->_links);
        sdtmig_class->_links = NULL;
    }
    if (sdtmig_class->datasets) {
        list_ForEach(listEntry, sdtmig_class->datasets) {
            sdtmig_dataset_free(listEntry->data);
        }
        list_freeList(sdtmig_class->datasets);
        sdtmig_class->datasets = NULL;
    }
    free(sdtmig_class);
}

cJSON *sdtmig_class_convertToJSON(sdtmig_class_t *sdtmig_class) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_class->ordinal
    if(sdtmig_class->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtmig_class->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class->name
    if(sdtmig_class->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_class->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class->label
    if(sdtmig_class->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_class->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class->description
    if(sdtmig_class->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_class->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class->_links
    if(sdtmig_class->_links) {
    cJSON *_links_local_JSON = sdtmig_class_links_convertToJSON(sdtmig_class->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_class->datasets
    if(sdtmig_class->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sdtmig_class->datasets) {
    list_ForEach(datasetsListEntry, sdtmig_class->datasets) {
    cJSON *itemLocal = sdtmig_dataset_convertToJSON(datasetsListEntry->data);
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

sdtmig_class_t *sdtmig_class_parseFromJSON(cJSON *sdtmig_classJSON){

    sdtmig_class_t *sdtmig_class_local_var = NULL;

    // define the local variable for sdtmig_class->_links
    sdtmig_class_links_t *_links_local_nonprim = NULL;

    // define the local list for sdtmig_class->datasets
    list_t *datasetsList = NULL;

    // sdtmig_class->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtmig_classJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtmig_class->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_classJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_class->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_classJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_class->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_classJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_class->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_classJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_class_links_parseFromJSON(_links); //nonprimitive
    }

    // sdtmig_class->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sdtmig_classJSON, "datasets");
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
        sdtmig_dataset_t *datasetsItem = sdtmig_dataset_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    sdtmig_class_local_var = sdtmig_class_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        datasets ? datasetsList : NULL
        );

    return sdtmig_class_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_class_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            sdtmig_dataset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
