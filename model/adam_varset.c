#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_varset.h"



static adam_varset_t *adam_varset_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    adam_varset_links_t *_links,
    list_t *analysis_variables
    ) {
    adam_varset_t *adam_varset_local_var = malloc(sizeof(adam_varset_t));
    if (!adam_varset_local_var) {
        return NULL;
    }
    adam_varset_local_var->ordinal = ordinal;
    adam_varset_local_var->name = name;
    adam_varset_local_var->label = label;
    adam_varset_local_var->description = description;
    adam_varset_local_var->_links = _links;
    adam_varset_local_var->analysis_variables = analysis_variables;

    adam_varset_local_var->_library_owned = 1;
    return adam_varset_local_var;
}

__attribute__((deprecated)) adam_varset_t *adam_varset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    adam_varset_links_t *_links,
    list_t *analysis_variables
    ) {
    return adam_varset_create_internal (
        ordinal,
        name,
        label,
        description,
        _links,
        analysis_variables
        );
}

void adam_varset_free(adam_varset_t *adam_varset) {
    if(NULL == adam_varset){
        return ;
    }
    if(adam_varset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_varset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_varset->ordinal) {
        free(adam_varset->ordinal);
        adam_varset->ordinal = NULL;
    }
    if (adam_varset->name) {
        free(adam_varset->name);
        adam_varset->name = NULL;
    }
    if (adam_varset->label) {
        free(adam_varset->label);
        adam_varset->label = NULL;
    }
    if (adam_varset->description) {
        free(adam_varset->description);
        adam_varset->description = NULL;
    }
    if (adam_varset->_links) {
        adam_varset_links_free(adam_varset->_links);
        adam_varset->_links = NULL;
    }
    if (adam_varset->analysis_variables) {
        list_ForEach(listEntry, adam_varset->analysis_variables) {
            adam_variable_free(listEntry->data);
        }
        list_freeList(adam_varset->analysis_variables);
        adam_varset->analysis_variables = NULL;
    }
    free(adam_varset);
}

cJSON *adam_varset_convertToJSON(adam_varset_t *adam_varset) {
    cJSON *item = cJSON_CreateObject();

    // adam_varset->ordinal
    if(adam_varset->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", adam_varset->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // adam_varset->name
    if(adam_varset->name) {
    if(cJSON_AddStringToObject(item, "name", adam_varset->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_varset->label
    if(adam_varset->label) {
    if(cJSON_AddStringToObject(item, "label", adam_varset->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_varset->description
    if(adam_varset->description) {
    if(cJSON_AddStringToObject(item, "description", adam_varset->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_varset->_links
    if(adam_varset->_links) {
    cJSON *_links_local_JSON = adam_varset_links_convertToJSON(adam_varset->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_varset->analysis_variables
    if(adam_varset->analysis_variables) {
    cJSON *analysis_variables = cJSON_AddArrayToObject(item, "analysisVariables");
    if(analysis_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *analysis_variablesListEntry;
    if (adam_varset->analysis_variables) {
    list_ForEach(analysis_variablesListEntry, adam_varset->analysis_variables) {
    cJSON *itemLocal = adam_variable_convertToJSON(analysis_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(analysis_variables, itemLocal);
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

adam_varset_t *adam_varset_parseFromJSON(cJSON *adam_varsetJSON){

    adam_varset_t *adam_varset_local_var = NULL;

    // define the local variable for adam_varset->_links
    adam_varset_links_t *_links_local_nonprim = NULL;

    // define the local list for adam_varset->analysis_variables
    list_t *analysis_variablesList = NULL;

    // adam_varset->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(adam_varsetJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // adam_varset->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_varsetJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_varset->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_varsetJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_varset->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_varsetJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_varset->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_varsetJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_varset_links_parseFromJSON(_links); //nonprimitive
    }

    // adam_varset->analysis_variables
    cJSON *analysis_variables = cJSON_GetObjectItemCaseSensitive(adam_varsetJSON, "analysisVariables");
    if (cJSON_IsNull(analysis_variables)) {
        analysis_variables = NULL;
    }
    if (analysis_variables) { 
    cJSON *analysis_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(analysis_variables)){
        goto end; //nonprimitive container
    }

    analysis_variablesList = list_createList();

    cJSON_ArrayForEach(analysis_variables_local_nonprimitive,analysis_variables )
    {
        if(!cJSON_IsObject(analysis_variables_local_nonprimitive)){
            goto end;
        }
        adam_variable_t *analysis_variablesItem = adam_variable_parseFromJSON(analysis_variables_local_nonprimitive);

        list_addElement(analysis_variablesList, analysis_variablesItem);
    }
    }


    adam_varset_local_var = adam_varset_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        analysis_variables ? analysis_variablesList : NULL
        );

    return adam_varset_local_var;
end:
    if (_links_local_nonprim) {
        adam_varset_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (analysis_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, analysis_variablesList) {
            adam_variable_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(analysis_variablesList);
        analysis_variablesList = NULL;
    }
    return NULL;

}
