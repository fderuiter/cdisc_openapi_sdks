#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_dataset.h"



static sdtmig_dataset_t *sdtmig_dataset_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtmig_dataset_links_t *_links,
    list_t *dataset_variables
    ) {
    sdtmig_dataset_t *sdtmig_dataset_local_var = malloc(sizeof(sdtmig_dataset_t));
    if (!sdtmig_dataset_local_var) {
        return NULL;
    }
    sdtmig_dataset_local_var->ordinal = ordinal;
    sdtmig_dataset_local_var->name = name;
    sdtmig_dataset_local_var->label = label;
    sdtmig_dataset_local_var->description = description;
    sdtmig_dataset_local_var->dataset_structure = dataset_structure;
    sdtmig_dataset_local_var->_links = _links;
    sdtmig_dataset_local_var->dataset_variables = dataset_variables;

    sdtmig_dataset_local_var->_library_owned = 1;
    return sdtmig_dataset_local_var;
}

__attribute__((deprecated)) sdtmig_dataset_t *sdtmig_dataset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtmig_dataset_links_t *_links,
    list_t *dataset_variables
    ) {
    return sdtmig_dataset_create_internal (
        ordinal,
        name,
        label,
        description,
        dataset_structure,
        _links,
        dataset_variables
        );
}

void sdtmig_dataset_free(sdtmig_dataset_t *sdtmig_dataset) {
    if(NULL == sdtmig_dataset){
        return ;
    }
    if(sdtmig_dataset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_dataset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_dataset->ordinal) {
        free(sdtmig_dataset->ordinal);
        sdtmig_dataset->ordinal = NULL;
    }
    if (sdtmig_dataset->name) {
        free(sdtmig_dataset->name);
        sdtmig_dataset->name = NULL;
    }
    if (sdtmig_dataset->label) {
        free(sdtmig_dataset->label);
        sdtmig_dataset->label = NULL;
    }
    if (sdtmig_dataset->description) {
        free(sdtmig_dataset->description);
        sdtmig_dataset->description = NULL;
    }
    if (sdtmig_dataset->dataset_structure) {
        free(sdtmig_dataset->dataset_structure);
        sdtmig_dataset->dataset_structure = NULL;
    }
    if (sdtmig_dataset->_links) {
        sdtmig_dataset_links_free(sdtmig_dataset->_links);
        sdtmig_dataset->_links = NULL;
    }
    if (sdtmig_dataset->dataset_variables) {
        list_ForEach(listEntry, sdtmig_dataset->dataset_variables) {
            sdtmig_dataset_variable_free(listEntry->data);
        }
        list_freeList(sdtmig_dataset->dataset_variables);
        sdtmig_dataset->dataset_variables = NULL;
    }
    free(sdtmig_dataset);
}

cJSON *sdtmig_dataset_convertToJSON(sdtmig_dataset_t *sdtmig_dataset) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_dataset->ordinal
    if(sdtmig_dataset->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtmig_dataset->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset->name
    if(sdtmig_dataset->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_dataset->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset->label
    if(sdtmig_dataset->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_dataset->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset->description
    if(sdtmig_dataset->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_dataset->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset->dataset_structure
    if(sdtmig_dataset->dataset_structure) {
    if(cJSON_AddStringToObject(item, "datasetStructure", sdtmig_dataset->dataset_structure) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset->_links
    if(sdtmig_dataset->_links) {
    cJSON *_links_local_JSON = sdtmig_dataset_links_convertToJSON(sdtmig_dataset->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_dataset->dataset_variables
    if(sdtmig_dataset->dataset_variables) {
    cJSON *dataset_variables = cJSON_AddArrayToObject(item, "datasetVariables");
    if(dataset_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataset_variablesListEntry;
    if (sdtmig_dataset->dataset_variables) {
    list_ForEach(dataset_variablesListEntry, sdtmig_dataset->dataset_variables) {
    cJSON *itemLocal = sdtmig_dataset_variable_convertToJSON(dataset_variablesListEntry->data);
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

sdtmig_dataset_t *sdtmig_dataset_parseFromJSON(cJSON *sdtmig_datasetJSON){

    sdtmig_dataset_t *sdtmig_dataset_local_var = NULL;

    // define the local variable for sdtmig_dataset->_links
    sdtmig_dataset_links_t *_links_local_nonprim = NULL;

    // define the local list for sdtmig_dataset->dataset_variables
    list_t *dataset_variablesList = NULL;

    // sdtmig_dataset->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset->dataset_structure
    cJSON *dataset_structure = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "datasetStructure");
    if (cJSON_IsNull(dataset_structure)) {
        dataset_structure = NULL;
    }
    if (dataset_structure) { 
    if(!cJSON_IsString(dataset_structure) && !cJSON_IsNull(dataset_structure))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_dataset_links_parseFromJSON(_links); //nonprimitive
    }

    // sdtmig_dataset->dataset_variables
    cJSON *dataset_variables = cJSON_GetObjectItemCaseSensitive(sdtmig_datasetJSON, "datasetVariables");
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
        sdtmig_dataset_variable_t *dataset_variablesItem = sdtmig_dataset_variable_parseFromJSON(dataset_variables_local_nonprimitive);

        list_addElement(dataset_variablesList, dataset_variablesItem);
    }
    }


    sdtmig_dataset_local_var = sdtmig_dataset_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        dataset_structure && !cJSON_IsNull(dataset_structure) ? strdup(dataset_structure->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        dataset_variables ? dataset_variablesList : NULL
        );

    return sdtmig_dataset_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_dataset_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (dataset_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataset_variablesList) {
            sdtmig_dataset_variable_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataset_variablesList);
        dataset_variablesList = NULL;
    }
    return NULL;

}
