#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_variable.h"



static adam_variable_t *adam_variable_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *core,
    char *simple_datatype,
    char *described_value_domain,
    list_t *value_list,
    adam_variable_links_t *_links
    ) {
    adam_variable_t *adam_variable_local_var = malloc(sizeof(adam_variable_t));
    if (!adam_variable_local_var) {
        return NULL;
    }
    adam_variable_local_var->ordinal = ordinal;
    adam_variable_local_var->name = name;
    adam_variable_local_var->label = label;
    adam_variable_local_var->description = description;
    adam_variable_local_var->core = core;
    adam_variable_local_var->simple_datatype = simple_datatype;
    adam_variable_local_var->described_value_domain = described_value_domain;
    adam_variable_local_var->value_list = value_list;
    adam_variable_local_var->_links = _links;

    adam_variable_local_var->_library_owned = 1;
    return adam_variable_local_var;
}

__attribute__((deprecated)) adam_variable_t *adam_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *core,
    char *simple_datatype,
    char *described_value_domain,
    list_t *value_list,
    adam_variable_links_t *_links
    ) {
    return adam_variable_create_internal (
        ordinal,
        name,
        label,
        description,
        core,
        simple_datatype,
        described_value_domain,
        value_list,
        _links
        );
}

void adam_variable_free(adam_variable_t *adam_variable) {
    if(NULL == adam_variable){
        return ;
    }
    if(adam_variable->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_variable_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_variable->ordinal) {
        free(adam_variable->ordinal);
        adam_variable->ordinal = NULL;
    }
    if (adam_variable->name) {
        free(adam_variable->name);
        adam_variable->name = NULL;
    }
    if (adam_variable->label) {
        free(adam_variable->label);
        adam_variable->label = NULL;
    }
    if (adam_variable->description) {
        free(adam_variable->description);
        adam_variable->description = NULL;
    }
    if (adam_variable->core) {
        free(adam_variable->core);
        adam_variable->core = NULL;
    }
    if (adam_variable->simple_datatype) {
        free(adam_variable->simple_datatype);
        adam_variable->simple_datatype = NULL;
    }
    if (adam_variable->described_value_domain) {
        free(adam_variable->described_value_domain);
        adam_variable->described_value_domain = NULL;
    }
    if (adam_variable->value_list) {
        list_ForEach(listEntry, adam_variable->value_list) {
            free(listEntry->data);
        }
        list_freeList(adam_variable->value_list);
        adam_variable->value_list = NULL;
    }
    if (adam_variable->_links) {
        adam_variable_links_free(adam_variable->_links);
        adam_variable->_links = NULL;
    }
    free(adam_variable);
}

cJSON *adam_variable_convertToJSON(adam_variable_t *adam_variable) {
    cJSON *item = cJSON_CreateObject();

    // adam_variable->ordinal
    if(adam_variable->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", adam_variable->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->name
    if(adam_variable->name) {
    if(cJSON_AddStringToObject(item, "name", adam_variable->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->label
    if(adam_variable->label) {
    if(cJSON_AddStringToObject(item, "label", adam_variable->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->description
    if(adam_variable->description) {
    if(cJSON_AddStringToObject(item, "description", adam_variable->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->core
    if(adam_variable->core) {
    if(cJSON_AddStringToObject(item, "core", adam_variable->core) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->simple_datatype
    if(adam_variable->simple_datatype) {
    if(cJSON_AddStringToObject(item, "simpleDatatype", adam_variable->simple_datatype) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->described_value_domain
    if(adam_variable->described_value_domain) {
    if(cJSON_AddStringToObject(item, "describedValueDomain", adam_variable->described_value_domain) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable->value_list
    if(adam_variable->value_list) {
    cJSON *value_list = cJSON_AddArrayToObject(item, "valueList");
    if(value_list == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *value_listListEntry;
    list_ForEach(value_listListEntry, adam_variable->value_list) {
    if(cJSON_AddStringToObject(value_list, "", value_listListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // adam_variable->_links
    if(adam_variable->_links) {
    cJSON *_links_local_JSON = adam_variable_links_convertToJSON(adam_variable->_links);
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

adam_variable_t *adam_variable_parseFromJSON(cJSON *adam_variableJSON){

    adam_variable_t *adam_variable_local_var = NULL;

    // define the local list for adam_variable->value_list
    list_t *value_listList = NULL;

    // define the local variable for adam_variable->_links
    adam_variable_links_t *_links_local_nonprim = NULL;

    // adam_variable->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // adam_variable->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_variable->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_variable->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_variable->core
    cJSON *core = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "core");
    if (cJSON_IsNull(core)) {
        core = NULL;
    }
    if (core) { 
    if(!cJSON_IsString(core) && !cJSON_IsNull(core))
    {
    goto end; //String
    }
    }

    // adam_variable->simple_datatype
    cJSON *simple_datatype = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "simpleDatatype");
    if (cJSON_IsNull(simple_datatype)) {
        simple_datatype = NULL;
    }
    if (simple_datatype) { 
    if(!cJSON_IsString(simple_datatype) && !cJSON_IsNull(simple_datatype))
    {
    goto end; //String
    }
    }

    // adam_variable->described_value_domain
    cJSON *described_value_domain = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "describedValueDomain");
    if (cJSON_IsNull(described_value_domain)) {
        described_value_domain = NULL;
    }
    if (described_value_domain) { 
    if(!cJSON_IsString(described_value_domain) && !cJSON_IsNull(described_value_domain))
    {
    goto end; //String
    }
    }

    // adam_variable->value_list
    cJSON *value_list = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "valueList");
    if (cJSON_IsNull(value_list)) {
        value_list = NULL;
    }
    if (value_list) { 
    cJSON *value_list_local = NULL;
    if(!cJSON_IsArray(value_list)) {
        goto end;//primitive container
    }
    value_listList = list_createList();

    cJSON_ArrayForEach(value_list_local, value_list)
    {
        if(!cJSON_IsString(value_list_local))
        {
            goto end;
        }
        list_addElement(value_listList , strdup(value_list_local->valuestring));
    }
    }

    // adam_variable->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_variableJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_variable_links_parseFromJSON(_links); //nonprimitive
    }


    adam_variable_local_var = adam_variable_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        core && !cJSON_IsNull(core) ? strdup(core->valuestring) : NULL,
        simple_datatype && !cJSON_IsNull(simple_datatype) ? strdup(simple_datatype->valuestring) : NULL,
        described_value_domain && !cJSON_IsNull(described_value_domain) ? strdup(described_value_domain->valuestring) : NULL,
        value_list ? value_listList : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return adam_variable_local_var;
end:
    if (value_listList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, value_listList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(value_listList);
        value_listList = NULL;
    }
    if (_links_local_nonprim) {
        adam_variable_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
