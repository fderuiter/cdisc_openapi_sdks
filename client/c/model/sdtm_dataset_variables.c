#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_dataset_variables.h"



static sdtm_dataset_variables_t *sdtm_dataset_variables_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtm_dataset_variables_links_t *_links
    ) {
    sdtm_dataset_variables_t *sdtm_dataset_variables_local_var = malloc(sizeof(sdtm_dataset_variables_t));
    if (!sdtm_dataset_variables_local_var) {
        return NULL;
    }
    sdtm_dataset_variables_local_var->ordinal = ordinal;
    sdtm_dataset_variables_local_var->name = name;
    sdtm_dataset_variables_local_var->label = label;
    sdtm_dataset_variables_local_var->description = description;
    sdtm_dataset_variables_local_var->dataset_structure = dataset_structure;
    sdtm_dataset_variables_local_var->_links = _links;

    sdtm_dataset_variables_local_var->_library_owned = 1;
    return sdtm_dataset_variables_local_var;
}

__attribute__((deprecated)) sdtm_dataset_variables_t *sdtm_dataset_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtm_dataset_variables_links_t *_links
    ) {
    return sdtm_dataset_variables_create_internal (
        ordinal,
        name,
        label,
        description,
        dataset_structure,
        _links
        );
}

void sdtm_dataset_variables_free(sdtm_dataset_variables_t *sdtm_dataset_variables) {
    if(NULL == sdtm_dataset_variables){
        return ;
    }
    if(sdtm_dataset_variables->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_dataset_variables_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_dataset_variables->ordinal) {
        free(sdtm_dataset_variables->ordinal);
        sdtm_dataset_variables->ordinal = NULL;
    }
    if (sdtm_dataset_variables->name) {
        free(sdtm_dataset_variables->name);
        sdtm_dataset_variables->name = NULL;
    }
    if (sdtm_dataset_variables->label) {
        free(sdtm_dataset_variables->label);
        sdtm_dataset_variables->label = NULL;
    }
    if (sdtm_dataset_variables->description) {
        free(sdtm_dataset_variables->description);
        sdtm_dataset_variables->description = NULL;
    }
    if (sdtm_dataset_variables->dataset_structure) {
        free(sdtm_dataset_variables->dataset_structure);
        sdtm_dataset_variables->dataset_structure = NULL;
    }
    if (sdtm_dataset_variables->_links) {
        sdtm_dataset_variables_links_free(sdtm_dataset_variables->_links);
        sdtm_dataset_variables->_links = NULL;
    }
    free(sdtm_dataset_variables);
}

cJSON *sdtm_dataset_variables_convertToJSON(sdtm_dataset_variables_t *sdtm_dataset_variables) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_dataset_variables->ordinal
    if(sdtm_dataset_variables->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtm_dataset_variables->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables->name
    if(sdtm_dataset_variables->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_dataset_variables->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables->label
    if(sdtm_dataset_variables->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_dataset_variables->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables->description
    if(sdtm_dataset_variables->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_dataset_variables->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables->dataset_structure
    if(sdtm_dataset_variables->dataset_structure) {
    if(cJSON_AddStringToObject(item, "datasetStructure", sdtm_dataset_variables->dataset_structure) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables->_links
    if(sdtm_dataset_variables->_links) {
    cJSON *_links_local_JSON = sdtm_dataset_variables_links_convertToJSON(sdtm_dataset_variables->_links);
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

sdtm_dataset_variables_t *sdtm_dataset_variables_parseFromJSON(cJSON *sdtm_dataset_variablesJSON){

    sdtm_dataset_variables_t *sdtm_dataset_variables_local_var = NULL;

    // define the local variable for sdtm_dataset_variables->_links
    sdtm_dataset_variables_links_t *_links_local_nonprim = NULL;

    // sdtm_dataset_variables->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variablesJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variablesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variablesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variablesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables->dataset_structure
    cJSON *dataset_structure = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variablesJSON, "datasetStructure");
    if (cJSON_IsNull(dataset_structure)) {
        dataset_structure = NULL;
    }
    if (dataset_structure) { 
    if(!cJSON_IsString(dataset_structure) && !cJSON_IsNull(dataset_structure))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variablesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_dataset_variables_links_parseFromJSON(_links); //nonprimitive
    }


    sdtm_dataset_variables_local_var = sdtm_dataset_variables_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        dataset_structure && !cJSON_IsNull(dataset_structure) ? strdup(dataset_structure->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtm_dataset_variables_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_dataset_variables_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
