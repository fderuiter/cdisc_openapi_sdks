#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_dataset_variable.h"



static sdtmig_dataset_variable_t *sdtmig_dataset_variable_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *simple_datatype,
    char *core,
    char *described_value_domain,
    list_t *value_list,
    sdtmig_dataset_variable_links_t *_links
    ) {
    sdtmig_dataset_variable_t *sdtmig_dataset_variable_local_var = malloc(sizeof(sdtmig_dataset_variable_t));
    if (!sdtmig_dataset_variable_local_var) {
        return NULL;
    }
    sdtmig_dataset_variable_local_var->ordinal = ordinal;
    sdtmig_dataset_variable_local_var->name = name;
    sdtmig_dataset_variable_local_var->label = label;
    sdtmig_dataset_variable_local_var->description = description;
    sdtmig_dataset_variable_local_var->role = role;
    sdtmig_dataset_variable_local_var->simple_datatype = simple_datatype;
    sdtmig_dataset_variable_local_var->core = core;
    sdtmig_dataset_variable_local_var->described_value_domain = described_value_domain;
    sdtmig_dataset_variable_local_var->value_list = value_list;
    sdtmig_dataset_variable_local_var->_links = _links;

    sdtmig_dataset_variable_local_var->_library_owned = 1;
    return sdtmig_dataset_variable_local_var;
}

__attribute__((deprecated)) sdtmig_dataset_variable_t *sdtmig_dataset_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *simple_datatype,
    char *core,
    char *described_value_domain,
    list_t *value_list,
    sdtmig_dataset_variable_links_t *_links
    ) {
    return sdtmig_dataset_variable_create_internal (
        ordinal,
        name,
        label,
        description,
        role,
        simple_datatype,
        core,
        described_value_domain,
        value_list,
        _links
        );
}

void sdtmig_dataset_variable_free(sdtmig_dataset_variable_t *sdtmig_dataset_variable) {
    if(NULL == sdtmig_dataset_variable){
        return ;
    }
    if(sdtmig_dataset_variable->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_dataset_variable_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_dataset_variable->ordinal) {
        free(sdtmig_dataset_variable->ordinal);
        sdtmig_dataset_variable->ordinal = NULL;
    }
    if (sdtmig_dataset_variable->name) {
        free(sdtmig_dataset_variable->name);
        sdtmig_dataset_variable->name = NULL;
    }
    if (sdtmig_dataset_variable->label) {
        free(sdtmig_dataset_variable->label);
        sdtmig_dataset_variable->label = NULL;
    }
    if (sdtmig_dataset_variable->description) {
        free(sdtmig_dataset_variable->description);
        sdtmig_dataset_variable->description = NULL;
    }
    if (sdtmig_dataset_variable->role) {
        free(sdtmig_dataset_variable->role);
        sdtmig_dataset_variable->role = NULL;
    }
    if (sdtmig_dataset_variable->simple_datatype) {
        free(sdtmig_dataset_variable->simple_datatype);
        sdtmig_dataset_variable->simple_datatype = NULL;
    }
    if (sdtmig_dataset_variable->core) {
        free(sdtmig_dataset_variable->core);
        sdtmig_dataset_variable->core = NULL;
    }
    if (sdtmig_dataset_variable->described_value_domain) {
        free(sdtmig_dataset_variable->described_value_domain);
        sdtmig_dataset_variable->described_value_domain = NULL;
    }
    if (sdtmig_dataset_variable->value_list) {
        list_ForEach(listEntry, sdtmig_dataset_variable->value_list) {
            free(listEntry->data);
        }
        list_freeList(sdtmig_dataset_variable->value_list);
        sdtmig_dataset_variable->value_list = NULL;
    }
    if (sdtmig_dataset_variable->_links) {
        sdtmig_dataset_variable_links_free(sdtmig_dataset_variable->_links);
        sdtmig_dataset_variable->_links = NULL;
    }
    free(sdtmig_dataset_variable);
}

cJSON *sdtmig_dataset_variable_convertToJSON(sdtmig_dataset_variable_t *sdtmig_dataset_variable) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_dataset_variable->ordinal
    if(sdtmig_dataset_variable->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtmig_dataset_variable->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->name
    if(sdtmig_dataset_variable->name) {
    if(cJSON_AddStringToObject(item, "name", sdtmig_dataset_variable->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->label
    if(sdtmig_dataset_variable->label) {
    if(cJSON_AddStringToObject(item, "label", sdtmig_dataset_variable->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->description
    if(sdtmig_dataset_variable->description) {
    if(cJSON_AddStringToObject(item, "description", sdtmig_dataset_variable->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->role
    if(sdtmig_dataset_variable->role) {
    if(cJSON_AddStringToObject(item, "role", sdtmig_dataset_variable->role) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->simple_datatype
    if(sdtmig_dataset_variable->simple_datatype) {
    if(cJSON_AddStringToObject(item, "simpleDatatype", sdtmig_dataset_variable->simple_datatype) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->core
    if(sdtmig_dataset_variable->core) {
    if(cJSON_AddStringToObject(item, "core", sdtmig_dataset_variable->core) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->described_value_domain
    if(sdtmig_dataset_variable->described_value_domain) {
    if(cJSON_AddStringToObject(item, "describedValueDomain", sdtmig_dataset_variable->described_value_domain) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable->value_list
    if(sdtmig_dataset_variable->value_list) {
    cJSON *value_list = cJSON_AddArrayToObject(item, "valueList");
    if(value_list == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *value_listListEntry;
    list_ForEach(value_listListEntry, sdtmig_dataset_variable->value_list) {
    if(cJSON_AddStringToObject(value_list, "", value_listListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // sdtmig_dataset_variable->_links
    if(sdtmig_dataset_variable->_links) {
    cJSON *_links_local_JSON = sdtmig_dataset_variable_links_convertToJSON(sdtmig_dataset_variable->_links);
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

sdtmig_dataset_variable_t *sdtmig_dataset_variable_parseFromJSON(cJSON *sdtmig_dataset_variableJSON){

    sdtmig_dataset_variable_t *sdtmig_dataset_variable_local_var = NULL;

    // define the local list for sdtmig_dataset_variable->value_list
    list_t *value_listList = NULL;

    // define the local variable for sdtmig_dataset_variable->_links
    sdtmig_dataset_variable_links_t *_links_local_nonprim = NULL;

    // sdtmig_dataset_variable->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->role
    cJSON *role = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "role");
    if (cJSON_IsNull(role)) {
        role = NULL;
    }
    if (role) { 
    if(!cJSON_IsString(role) && !cJSON_IsNull(role))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->simple_datatype
    cJSON *simple_datatype = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "simpleDatatype");
    if (cJSON_IsNull(simple_datatype)) {
        simple_datatype = NULL;
    }
    if (simple_datatype) { 
    if(!cJSON_IsString(simple_datatype) && !cJSON_IsNull(simple_datatype))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->core
    cJSON *core = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "core");
    if (cJSON_IsNull(core)) {
        core = NULL;
    }
    if (core) { 
    if(!cJSON_IsString(core) && !cJSON_IsNull(core))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->described_value_domain
    cJSON *described_value_domain = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "describedValueDomain");
    if (cJSON_IsNull(described_value_domain)) {
        described_value_domain = NULL;
    }
    if (described_value_domain) { 
    if(!cJSON_IsString(described_value_domain) && !cJSON_IsNull(described_value_domain))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable->value_list
    cJSON *value_list = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "valueList");
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

    // sdtmig_dataset_variable->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variableJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtmig_dataset_variable_links_parseFromJSON(_links); //nonprimitive
    }


    sdtmig_dataset_variable_local_var = sdtmig_dataset_variable_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        role && !cJSON_IsNull(role) ? strdup(role->valuestring) : NULL,
        simple_datatype && !cJSON_IsNull(simple_datatype) ? strdup(simple_datatype->valuestring) : NULL,
        core && !cJSON_IsNull(core) ? strdup(core->valuestring) : NULL,
        described_value_domain && !cJSON_IsNull(described_value_domain) ? strdup(described_value_domain->valuestring) : NULL,
        value_list ? value_listList : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtmig_dataset_variable_local_var;
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
        sdtmig_dataset_variable_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
