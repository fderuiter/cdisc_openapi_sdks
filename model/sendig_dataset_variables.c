#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_dataset_variables.h"



static sendig_dataset_variables_t *sendig_dataset_variables_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sendig_dataset_variables_links_t *_links
    ) {
    sendig_dataset_variables_t *sendig_dataset_variables_local_var = malloc(sizeof(sendig_dataset_variables_t));
    if (!sendig_dataset_variables_local_var) {
        return NULL;
    }
    sendig_dataset_variables_local_var->ordinal = ordinal;
    sendig_dataset_variables_local_var->name = name;
    sendig_dataset_variables_local_var->label = label;
    sendig_dataset_variables_local_var->description = description;
    sendig_dataset_variables_local_var->dataset_structure = dataset_structure;
    sendig_dataset_variables_local_var->_links = _links;

    sendig_dataset_variables_local_var->_library_owned = 1;
    return sendig_dataset_variables_local_var;
}

__attribute__((deprecated)) sendig_dataset_variables_t *sendig_dataset_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sendig_dataset_variables_links_t *_links
    ) {
    return sendig_dataset_variables_create_internal (
        ordinal,
        name,
        label,
        description,
        dataset_structure,
        _links
        );
}

void sendig_dataset_variables_free(sendig_dataset_variables_t *sendig_dataset_variables) {
    if(NULL == sendig_dataset_variables){
        return ;
    }
    if(sendig_dataset_variables->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_dataset_variables_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_dataset_variables->ordinal) {
        free(sendig_dataset_variables->ordinal);
        sendig_dataset_variables->ordinal = NULL;
    }
    if (sendig_dataset_variables->name) {
        free(sendig_dataset_variables->name);
        sendig_dataset_variables->name = NULL;
    }
    if (sendig_dataset_variables->label) {
        free(sendig_dataset_variables->label);
        sendig_dataset_variables->label = NULL;
    }
    if (sendig_dataset_variables->description) {
        free(sendig_dataset_variables->description);
        sendig_dataset_variables->description = NULL;
    }
    if (sendig_dataset_variables->dataset_structure) {
        free(sendig_dataset_variables->dataset_structure);
        sendig_dataset_variables->dataset_structure = NULL;
    }
    if (sendig_dataset_variables->_links) {
        sendig_dataset_variables_links_free(sendig_dataset_variables->_links);
        sendig_dataset_variables->_links = NULL;
    }
    free(sendig_dataset_variables);
}

cJSON *sendig_dataset_variables_convertToJSON(sendig_dataset_variables_t *sendig_dataset_variables) {
    cJSON *item = cJSON_CreateObject();

    // sendig_dataset_variables->ordinal
    if(sendig_dataset_variables->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sendig_dataset_variables->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variables->name
    if(sendig_dataset_variables->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_dataset_variables->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variables->label
    if(sendig_dataset_variables->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_dataset_variables->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variables->description
    if(sendig_dataset_variables->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_dataset_variables->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variables->dataset_structure
    if(sendig_dataset_variables->dataset_structure) {
    if(cJSON_AddStringToObject(item, "datasetStructure", sendig_dataset_variables->dataset_structure) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variables->_links
    if(sendig_dataset_variables->_links) {
    cJSON *_links_local_JSON = sendig_dataset_variables_links_convertToJSON(sendig_dataset_variables->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

sendig_dataset_variables_t *sendig_dataset_variables_parseFromJSON(cJSON *sendig_dataset_variablesJSON){

    sendig_dataset_variables_t *sendig_dataset_variables_local_var = NULL;

    // define the local variable for sendig_dataset_variables->_links
    sendig_dataset_variables_links_t *_links_local_nonprim = NULL;

    // sendig_dataset_variables->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variablesJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variables->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variablesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variables->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variablesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variables->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variablesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variables->dataset_structure
    cJSON *dataset_structure = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variablesJSON, "datasetStructure");
    if (cJSON_IsNull(dataset_structure)) {
        dataset_structure = NULL;
    }
    if (dataset_structure) { 
    if(!cJSON_IsString(dataset_structure) && !cJSON_IsNull(dataset_structure))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variables->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variablesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_dataset_variables_links_parseFromJSON(_links); //nonprimitive
    }


    sendig_dataset_variables_local_var = sendig_dataset_variables_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        dataset_structure && !cJSON_IsNull(dataset_structure) ? strdup(dataset_structure->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sendig_dataset_variables_local_var;
end:
    if (_links_local_nonprim) {
        sendig_dataset_variables_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
