#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_datasets.h"



static sdtm_class_datasets_t *sdtm_class_datasets_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_datasets_links_t *_links
    ) {
    sdtm_class_datasets_t *sdtm_class_datasets_local_var = malloc(sizeof(sdtm_class_datasets_t));
    if (!sdtm_class_datasets_local_var) {
        return NULL;
    }
    sdtm_class_datasets_local_var->ordinal = ordinal;
    sdtm_class_datasets_local_var->name = name;
    sdtm_class_datasets_local_var->label = label;
    sdtm_class_datasets_local_var->description = description;
    sdtm_class_datasets_local_var->_links = _links;

    sdtm_class_datasets_local_var->_library_owned = 1;
    return sdtm_class_datasets_local_var;
}

__attribute__((deprecated)) sdtm_class_datasets_t *sdtm_class_datasets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_datasets_links_t *_links
    ) {
    return sdtm_class_datasets_create_internal (
        ordinal,
        name,
        label,
        description,
        _links
        );
}

void sdtm_class_datasets_free(sdtm_class_datasets_t *sdtm_class_datasets) {
    if(NULL == sdtm_class_datasets){
        return ;
    }
    if(sdtm_class_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_datasets->ordinal) {
        free(sdtm_class_datasets->ordinal);
        sdtm_class_datasets->ordinal = NULL;
    }
    if (sdtm_class_datasets->name) {
        free(sdtm_class_datasets->name);
        sdtm_class_datasets->name = NULL;
    }
    if (sdtm_class_datasets->label) {
        free(sdtm_class_datasets->label);
        sdtm_class_datasets->label = NULL;
    }
    if (sdtm_class_datasets->description) {
        free(sdtm_class_datasets->description);
        sdtm_class_datasets->description = NULL;
    }
    if (sdtm_class_datasets->_links) {
        sdtm_class_datasets_links_free(sdtm_class_datasets->_links);
        sdtm_class_datasets->_links = NULL;
    }
    free(sdtm_class_datasets);
}

cJSON *sdtm_class_datasets_convertToJSON(sdtm_class_datasets_t *sdtm_class_datasets) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_datasets->ordinal
    if(sdtm_class_datasets->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtm_class_datasets->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_datasets->name
    if(sdtm_class_datasets->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_class_datasets->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_datasets->label
    if(sdtm_class_datasets->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_class_datasets->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_datasets->description
    if(sdtm_class_datasets->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_class_datasets->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_datasets->_links
    if(sdtm_class_datasets->_links) {
    cJSON *_links_local_JSON = sdtm_class_datasets_links_convertToJSON(sdtm_class_datasets->_links);
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

sdtm_class_datasets_t *sdtm_class_datasets_parseFromJSON(cJSON *sdtm_class_datasetsJSON){

    sdtm_class_datasets_t *sdtm_class_datasets_local_var = NULL;

    // define the local variable for sdtm_class_datasets->_links
    sdtm_class_datasets_links_t *_links_local_nonprim = NULL;

    // sdtm_class_datasets->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtm_class_datasetsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtm_class_datasets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_class_datasetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_class_datasets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_class_datasetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_class_datasets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_class_datasetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_class_datasets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_class_datasetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_class_datasets_links_parseFromJSON(_links); //nonprimitive
    }


    sdtm_class_datasets_local_var = sdtm_class_datasets_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtm_class_datasets_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_class_datasets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
