#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_datastructure_varsets.h"



static adam_datastructure_varsets_t *adam_datastructure_varsets_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_varsets_links_t *_links
    ) {
    adam_datastructure_varsets_t *adam_datastructure_varsets_local_var = malloc(sizeof(adam_datastructure_varsets_t));
    if (!adam_datastructure_varsets_local_var) {
        return NULL;
    }
    adam_datastructure_varsets_local_var->ordinal = ordinal;
    adam_datastructure_varsets_local_var->name = name;
    adam_datastructure_varsets_local_var->label = label;
    adam_datastructure_varsets_local_var->description = description;
    adam_datastructure_varsets_local_var->_class = _class;
    adam_datastructure_varsets_local_var->_links = _links;

    adam_datastructure_varsets_local_var->_library_owned = 1;
    return adam_datastructure_varsets_local_var;
}

__attribute__((deprecated)) adam_datastructure_varsets_t *adam_datastructure_varsets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_varsets_links_t *_links
    ) {
    return adam_datastructure_varsets_create_internal (
        ordinal,
        name,
        label,
        description,
        _class,
        _links
        );
}

void adam_datastructure_varsets_free(adam_datastructure_varsets_t *adam_datastructure_varsets) {
    if(NULL == adam_datastructure_varsets){
        return ;
    }
    if(adam_datastructure_varsets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_datastructure_varsets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_datastructure_varsets->ordinal) {
        free(adam_datastructure_varsets->ordinal);
        adam_datastructure_varsets->ordinal = NULL;
    }
    if (adam_datastructure_varsets->name) {
        free(adam_datastructure_varsets->name);
        adam_datastructure_varsets->name = NULL;
    }
    if (adam_datastructure_varsets->label) {
        free(adam_datastructure_varsets->label);
        adam_datastructure_varsets->label = NULL;
    }
    if (adam_datastructure_varsets->description) {
        free(adam_datastructure_varsets->description);
        adam_datastructure_varsets->description = NULL;
    }
    if (adam_datastructure_varsets->_class) {
        free(adam_datastructure_varsets->_class);
        adam_datastructure_varsets->_class = NULL;
    }
    if (adam_datastructure_varsets->_links) {
        adam_datastructure_varsets_links_free(adam_datastructure_varsets->_links);
        adam_datastructure_varsets->_links = NULL;
    }
    free(adam_datastructure_varsets);
}

cJSON *adam_datastructure_varsets_convertToJSON(adam_datastructure_varsets_t *adam_datastructure_varsets) {
    cJSON *item = cJSON_CreateObject();

    // adam_datastructure_varsets->ordinal
    if(adam_datastructure_varsets->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", adam_datastructure_varsets->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_varsets->name
    if(adam_datastructure_varsets->name) {
    if(cJSON_AddStringToObject(item, "name", adam_datastructure_varsets->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_varsets->label
    if(adam_datastructure_varsets->label) {
    if(cJSON_AddStringToObject(item, "label", adam_datastructure_varsets->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_varsets->description
    if(adam_datastructure_varsets->description) {
    if(cJSON_AddStringToObject(item, "description", adam_datastructure_varsets->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_varsets->_class
    if(adam_datastructure_varsets->_class) {
    if(cJSON_AddStringToObject(item, "class", adam_datastructure_varsets->_class) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_varsets->_links
    if(adam_datastructure_varsets->_links) {
    cJSON *_links_local_JSON = adam_datastructure_varsets_links_convertToJSON(adam_datastructure_varsets->_links);
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

adam_datastructure_varsets_t *adam_datastructure_varsets_parseFromJSON(cJSON *adam_datastructure_varsetsJSON){

    adam_datastructure_varsets_t *adam_datastructure_varsets_local_var = NULL;

    // define the local variable for adam_datastructure_varsets->_links
    adam_datastructure_varsets_links_t *_links_local_nonprim = NULL;

    // adam_datastructure_varsets->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsetsJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // adam_datastructure_varsets->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsetsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_datastructure_varsets->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsetsJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_datastructure_varsets->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsetsJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_datastructure_varsets->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsetsJSON, "class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // adam_datastructure_varsets->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_datastructure_varsetsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_datastructure_varsets_links_parseFromJSON(_links); //nonprimitive
    }


    adam_datastructure_varsets_local_var = adam_datastructure_varsets_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return adam_datastructure_varsets_local_var;
end:
    if (_links_local_nonprim) {
        adam_datastructure_varsets_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
