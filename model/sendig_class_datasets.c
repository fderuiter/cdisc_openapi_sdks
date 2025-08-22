#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_class_datasets.h"



static sendig_class_datasets_t *sendig_class_datasets_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sendig_class_datasets_links_t *_links
    ) {
    sendig_class_datasets_t *sendig_class_datasets_local_var = malloc(sizeof(sendig_class_datasets_t));
    if (!sendig_class_datasets_local_var) {
        return NULL;
    }
    sendig_class_datasets_local_var->ordinal = ordinal;
    sendig_class_datasets_local_var->name = name;
    sendig_class_datasets_local_var->label = label;
    sendig_class_datasets_local_var->description = description;
    sendig_class_datasets_local_var->_links = _links;

    sendig_class_datasets_local_var->_library_owned = 1;
    return sendig_class_datasets_local_var;
}

__attribute__((deprecated)) sendig_class_datasets_t *sendig_class_datasets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sendig_class_datasets_links_t *_links
    ) {
    return sendig_class_datasets_create_internal (
        ordinal,
        name,
        label,
        description,
        _links
        );
}

void sendig_class_datasets_free(sendig_class_datasets_t *sendig_class_datasets) {
    if(NULL == sendig_class_datasets){
        return ;
    }
    if(sendig_class_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_class_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_class_datasets->ordinal) {
        free(sendig_class_datasets->ordinal);
        sendig_class_datasets->ordinal = NULL;
    }
    if (sendig_class_datasets->name) {
        free(sendig_class_datasets->name);
        sendig_class_datasets->name = NULL;
    }
    if (sendig_class_datasets->label) {
        free(sendig_class_datasets->label);
        sendig_class_datasets->label = NULL;
    }
    if (sendig_class_datasets->description) {
        free(sendig_class_datasets->description);
        sendig_class_datasets->description = NULL;
    }
    if (sendig_class_datasets->_links) {
        sendig_class_datasets_links_free(sendig_class_datasets->_links);
        sendig_class_datasets->_links = NULL;
    }
    free(sendig_class_datasets);
}

cJSON *sendig_class_datasets_convertToJSON(sendig_class_datasets_t *sendig_class_datasets) {
    cJSON *item = cJSON_CreateObject();

    // sendig_class_datasets->ordinal
    if(sendig_class_datasets->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sendig_class_datasets->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class_datasets->name
    if(sendig_class_datasets->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_class_datasets->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class_datasets->label
    if(sendig_class_datasets->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_class_datasets->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class_datasets->description
    if(sendig_class_datasets->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_class_datasets->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class_datasets->_links
    if(sendig_class_datasets->_links) {
    cJSON *_links_local_JSON = sendig_class_datasets_links_convertToJSON(sendig_class_datasets->_links);
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

sendig_class_datasets_t *sendig_class_datasets_parseFromJSON(cJSON *sendig_class_datasetsJSON){

    sendig_class_datasets_t *sendig_class_datasets_local_var = NULL;

    // define the local variable for sendig_class_datasets->_links
    sendig_class_datasets_links_t *_links_local_nonprim = NULL;

    // sendig_class_datasets->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sendig_class_datasetsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sendig_class_datasets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_class_datasetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_class_datasets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_class_datasetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_class_datasets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_class_datasetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_class_datasets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_class_datasetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_class_datasets_links_parseFromJSON(_links); //nonprimitive
    }


    sendig_class_datasets_local_var = sendig_class_datasets_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sendig_class_datasets_local_var;
end:
    if (_links_local_nonprim) {
        sendig_class_datasets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
