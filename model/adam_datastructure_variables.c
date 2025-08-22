#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_datastructure_variables.h"



static adam_datastructure_variables_t *adam_datastructure_variables_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_variables_links_t *_links
    ) {
    adam_datastructure_variables_t *adam_datastructure_variables_local_var = malloc(sizeof(adam_datastructure_variables_t));
    if (!adam_datastructure_variables_local_var) {
        return NULL;
    }
    adam_datastructure_variables_local_var->ordinal = ordinal;
    adam_datastructure_variables_local_var->name = name;
    adam_datastructure_variables_local_var->label = label;
    adam_datastructure_variables_local_var->description = description;
    adam_datastructure_variables_local_var->_class = _class;
    adam_datastructure_variables_local_var->_links = _links;

    adam_datastructure_variables_local_var->_library_owned = 1;
    return adam_datastructure_variables_local_var;
}

__attribute__((deprecated)) adam_datastructure_variables_t *adam_datastructure_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_variables_links_t *_links
    ) {
    return adam_datastructure_variables_create_internal (
        ordinal,
        name,
        label,
        description,
        _class,
        _links
        );
}

void adam_datastructure_variables_free(adam_datastructure_variables_t *adam_datastructure_variables) {
    if(NULL == adam_datastructure_variables){
        return ;
    }
    if(adam_datastructure_variables->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_datastructure_variables_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_datastructure_variables->ordinal) {
        free(adam_datastructure_variables->ordinal);
        adam_datastructure_variables->ordinal = NULL;
    }
    if (adam_datastructure_variables->name) {
        free(adam_datastructure_variables->name);
        adam_datastructure_variables->name = NULL;
    }
    if (adam_datastructure_variables->label) {
        free(adam_datastructure_variables->label);
        adam_datastructure_variables->label = NULL;
    }
    if (adam_datastructure_variables->description) {
        free(adam_datastructure_variables->description);
        adam_datastructure_variables->description = NULL;
    }
    if (adam_datastructure_variables->_class) {
        free(adam_datastructure_variables->_class);
        adam_datastructure_variables->_class = NULL;
    }
    if (adam_datastructure_variables->_links) {
        adam_datastructure_variables_links_free(adam_datastructure_variables->_links);
        adam_datastructure_variables->_links = NULL;
    }
    free(adam_datastructure_variables);
}

cJSON *adam_datastructure_variables_convertToJSON(adam_datastructure_variables_t *adam_datastructure_variables) {
    cJSON *item = cJSON_CreateObject();

    // adam_datastructure_variables->ordinal
    if(adam_datastructure_variables->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", adam_datastructure_variables->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_variables->name
    if(adam_datastructure_variables->name) {
    if(cJSON_AddStringToObject(item, "name", adam_datastructure_variables->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_variables->label
    if(adam_datastructure_variables->label) {
    if(cJSON_AddStringToObject(item, "label", adam_datastructure_variables->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_variables->description
    if(adam_datastructure_variables->description) {
    if(cJSON_AddStringToObject(item, "description", adam_datastructure_variables->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_variables->_class
    if(adam_datastructure_variables->_class) {
    if(cJSON_AddStringToObject(item, "class", adam_datastructure_variables->_class) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure_variables->_links
    if(adam_datastructure_variables->_links) {
    cJSON *_links_local_JSON = adam_datastructure_variables_links_convertToJSON(adam_datastructure_variables->_links);
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

adam_datastructure_variables_t *adam_datastructure_variables_parseFromJSON(cJSON *adam_datastructure_variablesJSON){

    adam_datastructure_variables_t *adam_datastructure_variables_local_var = NULL;

    // define the local variable for adam_datastructure_variables->_links
    adam_datastructure_variables_links_t *_links_local_nonprim = NULL;

    // adam_datastructure_variables->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(adam_datastructure_variablesJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // adam_datastructure_variables->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_datastructure_variablesJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_datastructure_variables->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_datastructure_variablesJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_datastructure_variables->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_datastructure_variablesJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_datastructure_variables->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(adam_datastructure_variablesJSON, "class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // adam_datastructure_variables->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_datastructure_variablesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_datastructure_variables_links_parseFromJSON(_links); //nonprimitive
    }


    adam_datastructure_variables_local_var = adam_datastructure_variables_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return adam_datastructure_variables_local_var;
end:
    if (_links_local_nonprim) {
        adam_datastructure_variables_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
