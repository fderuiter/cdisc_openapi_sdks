#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_dataset_variables.h"



static sdtmig_dataset_variables_t *sdtmig_dataset_variables_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtmig_dataset_variables_links_t *_links
    ) {
    sdtmig_dataset_variables_t *sdtmig_dataset_variables_local_var = malloc(sizeof(sdtmig_dataset_variables_t));
    if (!sdtmig_dataset_variables_local_var) {
        return NULL;
    }
    sdtmig_dataset_variables_local_var->ordinal = ordinal;
    sdtmig_dataset_variables_local_var->name = name;
    sdtmig_dataset_variables_local_var->label = label;
    sdtmig_dataset_variables_local_var->description = description;
    sdtmig_dataset_variables_local_var->dataset_structure = dataset_structure;
    sdtmig_dataset_variables_local_var->_links = _links;

    sdtmig_dataset_variables_local_var->_library_owned = 1;
    return sdtmig_dataset_variables_local_var;
}

__attribute__((deprecated)) sdtmig_dataset_variables_t *sdtmig_dataset_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtmig_dataset_variables_links_t *_links
    ) {
    return sdtmig_dataset_variables_create_internal (
        ordinal,
        name,
        label,
        description,
        dataset_structure,
        _links
        );
}

void sdtmig_dataset_variables_free(sdtmig_dataset_variables_t *sdtmig_dataset_variables) {
    if(NULL == sdtmig_dataset_variables){
        return ;
    }
    if(sdtmig_dataset_variables->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_dataset_variables_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_dataset_variables->ordinal) {
        free(sdtmig_dataset_variables->ordinal);
        sdtmig_dataset_variables->ordinal = NULL;
    }
    if (sdtmig_dataset_variables->name) {
        free(sdtmig_dataset_variables->name);
        sdtmig_dataset_variables->name = NULL;
    }
    if (sdtmig_dataset_variables->label) {
        free(sdtmig_dataset_variables->label);
        sdtmig_dataset_variables->label = NULL;
    }
    if (sdtmig_dataset_variables->description) {
        free(sdtmig_dataset_variables->description);
        sdtmig_dataset_variables->description = NULL;
    }
    if (sdtmig_dataset_variables->dataset_structure) {
        free(sdtmig_dataset_variables->dataset_structure);
        sdtmig_dataset_variables->dataset_structure = NULL;
    }
    if (sdtmig_dataset_variables->_links) {
        sdtmig_dataset_variables_links_free(sdtmig_dataset_variables->_links);
        sdtmig_dataset_variables->_links = NULL;
    }
    free(sdtmig_dataset_variables);
}

cJSON *sdtmig_dataset_variables_convertToJSON(sdtmig_dataset_variables_t *sdtmig_dataset_variables) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_dataset_variables->ordinal
    if(sdtmig_dataset_variables->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtmig_dataset_variables->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variables->name
    if(sdtmig_dataset_variables->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_dataset_variables->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variables->label
    if(sdtmig_dataset_variables->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_dataset_variables->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variables->description
    if(sdtmig_dataset_variables->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_dataset_variables->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variables->dataset_structure
    if(sdtmig_dataset_variables->dataset_structure) {
    if(cJSON_AddStringToObject(item, "datasetStructure", sdtmig_dataset_variables->dataset_structure) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variables->_links
    if(sdtmig_dataset_variables->_links) {
    cJSON *_links_local_JSON = sdtmig_dataset_variables_links_convertToJSON(sdtmig_dataset_variables->_links);
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

sdtmig_dataset_variables_t *sdtmig_dataset_variables_parseFromJSON(cJSON *sdtmig_dataset_variablesJSON){

    sdtmig_dataset_variables_t *sdtmig_dataset_variables_local_var = NULL;

    // define the local variable for sdtmig_dataset_variables->_links
    sdtmig_dataset_variables_links_t *_links_local_nonprim = NULL;

    // sdtmig_dataset_variables->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variablesJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variables->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variablesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variables->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variablesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variables->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variablesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variables->dataset_structure
    cJSON *dataset_structure = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variablesJSON, "datasetStructure");
    if (cJSON_IsNull(dataset_structure)) {
        dataset_structure = NULL;
    }
    if (dataset_structure) { 
    if(!cJSON_IsString(dataset_structure) && !cJSON_IsNull(dataset_structure))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variables->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variablesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_dataset_variables_links_parseFromJSON(_links); //nonprimitive
    }


    sdtmig_dataset_variables_local_var = sdtmig_dataset_variables_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        dataset_structure && !cJSON_IsNull(dataset_structure) ? strdup(dataset_structure->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtmig_dataset_variables_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_dataset_variables_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
