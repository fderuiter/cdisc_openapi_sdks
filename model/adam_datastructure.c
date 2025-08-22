#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_datastructure.h"



static adam_datastructure_t *adam_datastructure_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_links_t *_links,
    list_t *analysis_variable_sets
    ) {
    adam_datastructure_t *adam_datastructure_local_var = malloc(sizeof(adam_datastructure_t));
    if (!adam_datastructure_local_var) {
        return NULL;
    }
    adam_datastructure_local_var->ordinal = ordinal;
    adam_datastructure_local_var->name = name;
    adam_datastructure_local_var->label = label;
    adam_datastructure_local_var->description = description;
    adam_datastructure_local_var->_class = _class;
    adam_datastructure_local_var->_links = _links;
    adam_datastructure_local_var->analysis_variable_sets = analysis_variable_sets;

    adam_datastructure_local_var->_library_owned = 1;
    return adam_datastructure_local_var;
}

__attribute__((deprecated)) adam_datastructure_t *adam_datastructure_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_links_t *_links,
    list_t *analysis_variable_sets
    ) {
    return adam_datastructure_create_internal (
        ordinal,
        name,
        label,
        description,
        _class,
        _links,
        analysis_variable_sets
        );
}

void adam_datastructure_free(adam_datastructure_t *adam_datastructure) {
    if(NULL == adam_datastructure){
        return ;
    }
    if(adam_datastructure->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_datastructure_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_datastructure->ordinal) {
        free(adam_datastructure->ordinal);
        adam_datastructure->ordinal = NULL;
    }
    if (adam_datastructure->name) {
        free(adam_datastructure->name);
        adam_datastructure->name = NULL;
    }
    if (adam_datastructure->label) {
        free(adam_datastructure->label);
        adam_datastructure->label = NULL;
    }
    if (adam_datastructure->description) {
        free(adam_datastructure->description);
        adam_datastructure->description = NULL;
    }
    if (adam_datastructure->_class) {
        free(adam_datastructure->_class);
        adam_datastructure->_class = NULL;
    }
    if (adam_datastructure->_links) {
        adam_datastructure_links_free(adam_datastructure->_links);
        adam_datastructure->_links = NULL;
    }
    if (adam_datastructure->analysis_variable_sets) {
        list_ForEach(listEntry, adam_datastructure->analysis_variable_sets) {
            adam_varset_free(listEntry->data);
        }
        list_freeList(adam_datastructure->analysis_variable_sets);
        adam_datastructure->analysis_variable_sets = NULL;
    }
    free(adam_datastructure);
}

cJSON *adam_datastructure_convertToJSON(adam_datastructure_t *adam_datastructure) {
    cJSON *item = cJSON_CreateObject();

    // adam_datastructure->ordinal
    if(adam_datastructure->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", adam_datastructure->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure->name
    if(adam_datastructure->name) {
    if(cJSON_AddStringToObject(item, "name", adam_datastructure->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure->label
    if(adam_datastructure->label) {
    if(cJSON_AddStringToObject(item, "label", adam_datastructure->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure->description
    if(adam_datastructure->description) {
    if(cJSON_AddStringToObject(item, "description", adam_datastructure->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure->_class
    if(adam_datastructure->_class) {
    if(cJSON_AddStringToObject(item, "class", adam_datastructure->_class) == NULL) {
    goto fail; //String
    }
    }


    // adam_datastructure->_links
    if(adam_datastructure->_links) {
    cJSON *_links_local_JSON = adam_datastructure_links_convertToJSON(adam_datastructure->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_datastructure->analysis_variable_sets
    if(adam_datastructure->analysis_variable_sets) {
    cJSON *analysis_variable_sets = cJSON_AddArrayToObject(item, "analysisVariableSets");
    if(analysis_variable_sets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *analysis_variable_setsListEntry;
    if (adam_datastructure->analysis_variable_sets) {
    list_ForEach(analysis_variable_setsListEntry, adam_datastructure->analysis_variable_sets) {
    cJSON *itemLocal = adam_varset_convertToJSON(analysis_variable_setsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(analysis_variable_sets, itemLocal);
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

adam_datastructure_t *adam_datastructure_parseFromJSON(cJSON *adam_datastructureJSON){

    adam_datastructure_t *adam_datastructure_local_var = NULL;

    // define the local variable for adam_datastructure->_links
    adam_datastructure_links_t *_links_local_nonprim = NULL;

    // define the local list for adam_datastructure->analysis_variable_sets
    list_t *analysis_variable_setsList = NULL;

    // adam_datastructure->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // adam_datastructure->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_datastructure->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_datastructure->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_datastructure->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // adam_datastructure->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_datastructure_links_parseFromJSON(_links); //nonprimitive
    }

    // adam_datastructure->analysis_variable_sets
    cJSON *analysis_variable_sets = cJSON_GetObjectItemCaseSensitive(adam_datastructureJSON, "analysisVariableSets");
    if (cJSON_IsNull(analysis_variable_sets)) {
        analysis_variable_sets = NULL;
    }
    if (analysis_variable_sets) { 
    cJSON *analysis_variable_sets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(analysis_variable_sets)){
        goto end; //nonprimitive container
    }

    analysis_variable_setsList = list_createList();

    cJSON_ArrayForEach(analysis_variable_sets_local_nonprimitive,analysis_variable_sets )
    {
        if(!cJSON_IsObject(analysis_variable_sets_local_nonprimitive)){
            goto end;
        }
        adam_varset_t *analysis_variable_setsItem = adam_varset_parseFromJSON(analysis_variable_sets_local_nonprimitive);

        list_addElement(analysis_variable_setsList, analysis_variable_setsItem);
    }
    }


    adam_datastructure_local_var = adam_datastructure_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        analysis_variable_sets ? analysis_variable_setsList : NULL
        );

    return adam_datastructure_local_var;
end:
    if (_links_local_nonprim) {
        adam_datastructure_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (analysis_variable_setsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, analysis_variable_setsList) {
            adam_varset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(analysis_variable_setsList);
        analysis_variable_setsList = NULL;
    }
    return NULL;

}
