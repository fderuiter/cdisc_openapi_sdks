#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class.h"



static sdtm_class_t *sdtm_class_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_links_t *_links,
    list_t *class_variables,
    list_t *datasets
    ) {
    sdtm_class_t *sdtm_class_local_var = malloc(sizeof(sdtm_class_t));
    if (!sdtm_class_local_var) {
        return NULL;
    }
    sdtm_class_local_var->ordinal = ordinal;
    sdtm_class_local_var->name = name;
    sdtm_class_local_var->label = label;
    sdtm_class_local_var->description = description;
    sdtm_class_local_var->_links = _links;
    sdtm_class_local_var->class_variables = class_variables;
    sdtm_class_local_var->datasets = datasets;

    sdtm_class_local_var->_library_owned = 1;
    return sdtm_class_local_var;
}

__attribute__((deprecated)) sdtm_class_t *sdtm_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_links_t *_links,
    list_t *class_variables,
    list_t *datasets
    ) {
    return sdtm_class_create_internal (
        ordinal,
        name,
        label,
        description,
        _links,
        class_variables,
        datasets
        );
}

void sdtm_class_free(sdtm_class_t *sdtm_class) {
    if(NULL == sdtm_class){
        return ;
    }
    if(sdtm_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class->ordinal) {
        free(sdtm_class->ordinal);
        sdtm_class->ordinal = NULL;
    }
    if (sdtm_class->name) {
        free(sdtm_class->name);
        sdtm_class->name = NULL;
    }
    if (sdtm_class->label) {
        free(sdtm_class->label);
        sdtm_class->label = NULL;
    }
    if (sdtm_class->description) {
        free(sdtm_class->description);
        sdtm_class->description = NULL;
    }
    if (sdtm_class->_links) {
        sdtm_class_links_free(sdtm_class->_links);
        sdtm_class->_links = NULL;
    }
    if (sdtm_class->class_variables) {
        list_ForEach(listEntry, sdtm_class->class_variables) {
            sdtm_class_variable_free(listEntry->data);
        }
        list_freeList(sdtm_class->class_variables);
        sdtm_class->class_variables = NULL;
    }
    if (sdtm_class->datasets) {
        list_ForEach(listEntry, sdtm_class->datasets) {
            sdtm_dataset_free(listEntry->data);
        }
        list_freeList(sdtm_class->datasets);
        sdtm_class->datasets = NULL;
    }
    free(sdtm_class);
}

cJSON *sdtm_class_convertToJSON(sdtm_class_t *sdtm_class) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class->ordinal
    if(sdtm_class->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtm_class->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class->name
    if(sdtm_class->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_class->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class->label
    if(sdtm_class->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_class->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class->description
    if(sdtm_class->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_class->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class->_links
    if(sdtm_class->_links) {
    cJSON *_links_local_JSON = sdtm_class_links_convertToJSON(sdtm_class->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class->class_variables
    if(sdtm_class->class_variables) {
    cJSON *class_variables = cJSON_AddArrayToObject(item, "classVariables");
    if(class_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *class_variablesListEntry;
    if (sdtm_class->class_variables) {
    list_ForEach(class_variablesListEntry, sdtm_class->class_variables) {
    cJSON *itemLocal = sdtm_class_variable_convertToJSON(class_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(class_variables, itemLocal);
    }
    }
    }


    // sdtm_class->datasets
    if(sdtm_class->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sdtm_class->datasets) {
    list_ForEach(datasetsListEntry, sdtm_class->datasets) {
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

sdtm_class_t *sdtm_class_parseFromJSON(cJSON *sdtm_classJSON){

    sdtm_class_t *sdtm_class_local_var = NULL;

    // define the local variable for sdtm_class->_links
    sdtm_class_links_t *_links_local_nonprim = NULL;

    // define the local list for sdtm_class->class_variables
    list_t *class_variablesList = NULL;

    // define the local list for sdtm_class->datasets
    list_t *datasetsList = NULL;

    // sdtm_class->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtm_class->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_class->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_class->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_class->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_class_links_parseFromJSON(_links); //nonprimitive
    }

    // sdtm_class->class_variables
    cJSON *class_variables = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "classVariables");
    if (cJSON_IsNull(class_variables)) {
        class_variables = NULL;
    }
    if (class_variables) { 
    cJSON *class_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(class_variables)){
        goto end; //nonprimitive container
    }

    class_variablesList = list_createList();

    cJSON_ArrayForEach(class_variables_local_nonprimitive,class_variables )
    {
        if(!cJSON_IsObject(class_variables_local_nonprimitive)){
            goto end;
        }
        sdtm_class_variable_t *class_variablesItem = sdtm_class_variable_parseFromJSON(class_variables_local_nonprimitive);

        list_addElement(class_variablesList, class_variablesItem);
    }
    }

    // sdtm_class->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sdtm_classJSON, "datasets");
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


    sdtm_class_local_var = sdtm_class_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        class_variables ? class_variablesList : NULL,
        datasets ? datasetsList : NULL
        );

    return sdtm_class_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_class_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (class_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, class_variablesList) {
            sdtm_class_variable_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(class_variablesList);
        class_variablesList = NULL;
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
