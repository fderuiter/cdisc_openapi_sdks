#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_class_datasets.h"



static sdtmig_class_datasets_t *sdtmig_class_datasets_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtmig_class_datasets_links_t *_links
    ) {
    sdtmig_class_datasets_t *sdtmig_class_datasets_local_var = malloc(sizeof(sdtmig_class_datasets_t));
    if (!sdtmig_class_datasets_local_var) {
        return NULL;
    }
    sdtmig_class_datasets_local_var->ordinal = ordinal;
    sdtmig_class_datasets_local_var->name = name;
    sdtmig_class_datasets_local_var->label = label;
    sdtmig_class_datasets_local_var->description = description;
    sdtmig_class_datasets_local_var->_links = _links;

    sdtmig_class_datasets_local_var->_library_owned = 1;
    return sdtmig_class_datasets_local_var;
}

__attribute__((deprecated)) sdtmig_class_datasets_t *sdtmig_class_datasets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtmig_class_datasets_links_t *_links
    ) {
    return sdtmig_class_datasets_create_internal (
        ordinal,
        name,
        label,
        description,
        _links
        );
}

void sdtmig_class_datasets_free(sdtmig_class_datasets_t *sdtmig_class_datasets) {
    if(NULL == sdtmig_class_datasets){
        return ;
    }
    if(sdtmig_class_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_class_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_class_datasets->ordinal) {
        free(sdtmig_class_datasets->ordinal);
        sdtmig_class_datasets->ordinal = NULL;
    }
    if (sdtmig_class_datasets->name) {
        free(sdtmig_class_datasets->name);
        sdtmig_class_datasets->name = NULL;
    }
    if (sdtmig_class_datasets->label) {
        free(sdtmig_class_datasets->label);
        sdtmig_class_datasets->label = NULL;
    }
    if (sdtmig_class_datasets->description) {
        free(sdtmig_class_datasets->description);
        sdtmig_class_datasets->description = NULL;
    }
    if (sdtmig_class_datasets->_links) {
        sdtmig_class_datasets_links_free(sdtmig_class_datasets->_links);
        sdtmig_class_datasets->_links = NULL;
    }
    free(sdtmig_class_datasets);
}

cJSON *sdtmig_class_datasets_convertToJSON(sdtmig_class_datasets_t *sdtmig_class_datasets) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_class_datasets->ordinal
    if(sdtmig_class_datasets->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtmig_class_datasets->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class_datasets->name
    if(sdtmig_class_datasets->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_class_datasets->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class_datasets->label
    if(sdtmig_class_datasets->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_class_datasets->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class_datasets->description
    if(sdtmig_class_datasets->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_class_datasets->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class_datasets->_links
    if(sdtmig_class_datasets->_links) {
    cJSON *_links_local_JSON = sdtmig_class_datasets_links_convertToJSON(sdtmig_class_datasets->_links);
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

sdtmig_class_datasets_t *sdtmig_class_datasets_parseFromJSON(cJSON *sdtmig_class_datasetsJSON){

    sdtmig_class_datasets_t *sdtmig_class_datasets_local_var = NULL;

    // define the local variable for sdtmig_class_datasets->_links
    sdtmig_class_datasets_links_t *_links_local_nonprim = NULL;

    // sdtmig_class_datasets->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtmig_class_datasetsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtmig_class_datasets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_class_datasetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_class_datasets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_class_datasetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_class_datasets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_class_datasetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_class_datasets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_class_datasetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_class_datasets_links_parseFromJSON(_links); //nonprimitive
    }


    sdtmig_class_datasets_local_var = sdtmig_class_datasets_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtmig_class_datasets_local_var;
end:
    if (_links_local_nonprim) {
        sdtmig_class_datasets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
