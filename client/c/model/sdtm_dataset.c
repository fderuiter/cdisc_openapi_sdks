#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_dataset.h"



static sdtm_dataset_t *sdtm_dataset_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtm_dataset_links_t *_links,
    list_t *dataset_variables
    ) {
    sdtm_dataset_t *sdtm_dataset_local_var = malloc(sizeof(sdtm_dataset_t));
    if (!sdtm_dataset_local_var) {
        return NULL;
    }
    sdtm_dataset_local_var->ordinal = ordinal;
    sdtm_dataset_local_var->name = name;
    sdtm_dataset_local_var->label = label;
    sdtm_dataset_local_var->description = description;
    sdtm_dataset_local_var->dataset_structure = dataset_structure;
    sdtm_dataset_local_var->_links = _links;
    sdtm_dataset_local_var->dataset_variables = dataset_variables;

    sdtm_dataset_local_var->_library_owned = 1;
    return sdtm_dataset_local_var;
}

__attribute__((deprecated)) sdtm_dataset_t *sdtm_dataset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtm_dataset_links_t *_links,
    list_t *dataset_variables
    ) {
    return sdtm_dataset_create_internal (
        ordinal,
        name,
        label,
        description,
        dataset_structure,
        _links,
        dataset_variables
        );
}

void sdtm_dataset_free(sdtm_dataset_t *sdtm_dataset) {
    if(NULL == sdtm_dataset){
        return ;
    }
    if(sdtm_dataset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_dataset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_dataset->ordinal) {
        free(sdtm_dataset->ordinal);
        sdtm_dataset->ordinal = NULL;
    }
    if (sdtm_dataset->name) {
        free(sdtm_dataset->name);
        sdtm_dataset->name = NULL;
    }
    if (sdtm_dataset->label) {
        free(sdtm_dataset->label);
        sdtm_dataset->label = NULL;
    }
    if (sdtm_dataset->description) {
        free(sdtm_dataset->description);
        sdtm_dataset->description = NULL;
    }
    if (sdtm_dataset->dataset_structure) {
        free(sdtm_dataset->dataset_structure);
        sdtm_dataset->dataset_structure = NULL;
    }
    if (sdtm_dataset->_links) {
        sdtm_dataset_links_free(sdtm_dataset->_links);
        sdtm_dataset->_links = NULL;
    }
    if (sdtm_dataset->dataset_variables) {
        list_ForEach(listEntry, sdtm_dataset->dataset_variables) {
            sdtm_dataset_variable_free(listEntry->data);
        }
        list_freeList(sdtm_dataset->dataset_variables);
        sdtm_dataset->dataset_variables = NULL;
    }
    free(sdtm_dataset);
}

cJSON *sdtm_dataset_convertToJSON(sdtm_dataset_t *sdtm_dataset) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_dataset->ordinal
    if(sdtm_dataset->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtm_dataset->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset->name
    if(sdtm_dataset->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_dataset->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset->label
    if(sdtm_dataset->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_dataset->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset->description
    if(sdtm_dataset->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_dataset->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset->dataset_structure
    if(sdtm_dataset->dataset_structure) {
    if(cJSON_AddStringToObject(item, "datasetStructure", sdtm_dataset->dataset_structure) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset->_links
    if(sdtm_dataset->_links) {
    cJSON *_links_local_JSON = sdtm_dataset_links_convertToJSON(sdtm_dataset->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_dataset->dataset_variables
    if(sdtm_dataset->dataset_variables) {
    cJSON *dataset_variables = cJSON_AddArrayToObject(item, "datasetVariables");
    if(dataset_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataset_variablesListEntry;
    if (sdtm_dataset->dataset_variables) {
    list_ForEach(dataset_variablesListEntry, sdtm_dataset->dataset_variables) {
    cJSON *itemLocal = sdtm_dataset_variable_convertToJSON(dataset_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(dataset_variables, itemLocal);
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

sdtm_dataset_t *sdtm_dataset_parseFromJSON(cJSON *sdtm_datasetJSON){

    sdtm_dataset_t *sdtm_dataset_local_var = NULL;

    // define the local variable for sdtm_dataset->_links
    sdtm_dataset_links_t *_links_local_nonprim = NULL;

    // define the local list for sdtm_dataset->dataset_variables
    list_t *dataset_variablesList = NULL;

    // sdtm_dataset->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtm_dataset->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_dataset->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_dataset->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_dataset->dataset_structure
    cJSON *dataset_structure = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "datasetStructure");
    if (cJSON_IsNull(dataset_structure)) {
        dataset_structure = NULL;
    }
    if (dataset_structure) { 
    if(!cJSON_IsString(dataset_structure) && !cJSON_IsNull(dataset_structure))
    {
    goto end; //String
    }
    }

    // sdtm_dataset->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_dataset_links_parseFromJSON(_links); //nonprimitive
    }

    // sdtm_dataset->dataset_variables
    cJSON *dataset_variables = cJSON_GetObjectItemCaseSensitive(sdtm_datasetJSON, "datasetVariables");
    if (cJSON_IsNull(dataset_variables)) {
        dataset_variables = NULL;
    }
    if (dataset_variables) { 
    cJSON *dataset_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(dataset_variables)){
        goto end; //nonprimitive container
    }

    dataset_variablesList = list_createList();

    cJSON_ArrayForEach(dataset_variables_local_nonprimitive,dataset_variables )
    {
        if(!cJSON_IsObject(dataset_variables_local_nonprimitive)){
            goto end;
        }
        sdtm_dataset_variable_t *dataset_variablesItem = sdtm_dataset_variable_parseFromJSON(dataset_variables_local_nonprimitive);

        list_addElement(dataset_variablesList, dataset_variablesItem);
    }
    }


    sdtm_dataset_local_var = sdtm_dataset_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        dataset_structure && !cJSON_IsNull(dataset_structure) ? strdup(dataset_structure->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        dataset_variables ? dataset_variablesList : NULL
        );

    return sdtm_dataset_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_dataset_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (dataset_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataset_variablesList) {
            sdtm_dataset_variable_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataset_variablesList);
        dataset_variablesList = NULL;
    }
    return NULL;

}
