#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_dataset.h"



static sendig_dataset_t *sendig_dataset_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sendig_dataset_links_t *_links,
    list_t *dataset_variables
    ) {
    sendig_dataset_t *sendig_dataset_local_var = malloc(sizeof(sendig_dataset_t));
    if (!sendig_dataset_local_var) {
        return NULL;
    }
    sendig_dataset_local_var->ordinal = ordinal;
    sendig_dataset_local_var->name = name;
    sendig_dataset_local_var->label = label;
    sendig_dataset_local_var->description = description;
    sendig_dataset_local_var->dataset_structure = dataset_structure;
    sendig_dataset_local_var->_links = _links;
    sendig_dataset_local_var->dataset_variables = dataset_variables;

    sendig_dataset_local_var->_library_owned = 1;
    return sendig_dataset_local_var;
}

__attribute__((deprecated)) sendig_dataset_t *sendig_dataset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sendig_dataset_links_t *_links,
    list_t *dataset_variables
    ) {
    return sendig_dataset_create_internal (
        ordinal,
        name,
        label,
        description,
        dataset_structure,
        _links,
        dataset_variables
        );
}

void sendig_dataset_free(sendig_dataset_t *sendig_dataset) {
    if(NULL == sendig_dataset){
        return ;
    }
    if(sendig_dataset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_dataset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_dataset->ordinal) {
        free(sendig_dataset->ordinal);
        sendig_dataset->ordinal = NULL;
    }
    if (sendig_dataset->name) {
        free(sendig_dataset->name);
        sendig_dataset->name = NULL;
    }
    if (sendig_dataset->label) {
        free(sendig_dataset->label);
        sendig_dataset->label = NULL;
    }
    if (sendig_dataset->description) {
        free(sendig_dataset->description);
        sendig_dataset->description = NULL;
    }
    if (sendig_dataset->dataset_structure) {
        free(sendig_dataset->dataset_structure);
        sendig_dataset->dataset_structure = NULL;
    }
    if (sendig_dataset->_links) {
        sendig_dataset_links_free(sendig_dataset->_links);
        sendig_dataset->_links = NULL;
    }
    if (sendig_dataset->dataset_variables) {
        list_ForEach(listEntry, sendig_dataset->dataset_variables) {
            sendig_dataset_variable_free(listEntry->data);
        }
        list_freeList(sendig_dataset->dataset_variables);
        sendig_dataset->dataset_variables = NULL;
    }
    free(sendig_dataset);
}

cJSON *sendig_dataset_convertToJSON(sendig_dataset_t *sendig_dataset) {
    cJSON *item = cJSON_CreateObject();

    // sendig_dataset->ordinal
    if(sendig_dataset->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sendig_dataset->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset->name
    if(sendig_dataset->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_dataset->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset->label
    if(sendig_dataset->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_dataset->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset->description
    if(sendig_dataset->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_dataset->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset->dataset_structure
    if(sendig_dataset->dataset_structure) {
    if(cJSON_AddStringToObject(item, "datasetStructure", sendig_dataset->dataset_structure) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset->_links
    if(sendig_dataset->_links) {
    cJSON *_links_local_JSON = sendig_dataset_links_convertToJSON(sendig_dataset->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_dataset->dataset_variables
    if(sendig_dataset->dataset_variables) {
    cJSON *dataset_variables = cJSON_AddArrayToObject(item, "datasetVariables");
    if(dataset_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataset_variablesListEntry;
    if (sendig_dataset->dataset_variables) {
    list_ForEach(dataset_variablesListEntry, sendig_dataset->dataset_variables) {
    cJSON *itemLocal = sendig_dataset_variable_convertToJSON(dataset_variablesListEntry->data);
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

sendig_dataset_t *sendig_dataset_parseFromJSON(cJSON *sendig_datasetJSON){

    sendig_dataset_t *sendig_dataset_local_var = NULL;

    // define the local variable for sendig_dataset->_links
    sendig_dataset_links_t *_links_local_nonprim = NULL;

    // define the local list for sendig_dataset->dataset_variables
    list_t *dataset_variablesList = NULL;

    // sendig_dataset->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sendig_dataset->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_dataset->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_dataset->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_dataset->dataset_structure
    cJSON *dataset_structure = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "datasetStructure");
    if (cJSON_IsNull(dataset_structure)) {
        dataset_structure = NULL;
    }
    if (dataset_structure) { 
    if(!cJSON_IsString(dataset_structure) && !cJSON_IsNull(dataset_structure))
    {
    goto end; //String
    }
    }

    // sendig_dataset->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_dataset_links_parseFromJSON(_links); //nonprimitive
    }

    // sendig_dataset->dataset_variables
    cJSON *dataset_variables = cJSON_GetObjectItemCaseSensitive(sendig_datasetJSON, "datasetVariables");
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
        sendig_dataset_variable_t *dataset_variablesItem = sendig_dataset_variable_parseFromJSON(dataset_variables_local_nonprimitive);

        list_addElement(dataset_variablesList, dataset_variablesItem);
    }
    }


    sendig_dataset_local_var = sendig_dataset_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        dataset_structure && !cJSON_IsNull(dataset_structure) ? strdup(dataset_structure->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        dataset_variables ? dataset_variablesList : NULL
        );

    return sendig_dataset_local_var;
end:
    if (_links_local_nonprim) {
        sendig_dataset_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (dataset_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataset_variablesList) {
            sendig_dataset_variable_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataset_variablesList);
        dataset_variablesList = NULL;
    }
    return NULL;

}
