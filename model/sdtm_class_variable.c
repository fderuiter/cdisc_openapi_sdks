#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_variable.h"



static sdtm_class_variable_t *sdtm_class_variable_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *role_description,
    char *simple_datatype,
    char *described_value_domain,
    sdtm_class_variable_links_t *_links
    ) {
    sdtm_class_variable_t *sdtm_class_variable_local_var = malloc(sizeof(sdtm_class_variable_t));
    if (!sdtm_class_variable_local_var) {
        return NULL;
    }
    sdtm_class_variable_local_var->ordinal = ordinal;
    sdtm_class_variable_local_var->name = name;
    sdtm_class_variable_local_var->label = label;
    sdtm_class_variable_local_var->description = description;
    sdtm_class_variable_local_var->role = role;
    sdtm_class_variable_local_var->role_description = role_description;
    sdtm_class_variable_local_var->simple_datatype = simple_datatype;
    sdtm_class_variable_local_var->described_value_domain = described_value_domain;
    sdtm_class_variable_local_var->_links = _links;

    sdtm_class_variable_local_var->_library_owned = 1;
    return sdtm_class_variable_local_var;
}

__attribute__((deprecated)) sdtm_class_variable_t *sdtm_class_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *role_description,
    char *simple_datatype,
    char *described_value_domain,
    sdtm_class_variable_links_t *_links
    ) {
    return sdtm_class_variable_create_internal (
        ordinal,
        name,
        label,
        description,
        role,
        role_description,
        simple_datatype,
        described_value_domain,
        _links
        );
}

void sdtm_class_variable_free(sdtm_class_variable_t *sdtm_class_variable) {
    if(NULL == sdtm_class_variable){
        return ;
    }
    if(sdtm_class_variable->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_variable_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_variable->ordinal) {
        free(sdtm_class_variable->ordinal);
        sdtm_class_variable->ordinal = NULL;
    }
    if (sdtm_class_variable->name) {
        free(sdtm_class_variable->name);
        sdtm_class_variable->name = NULL;
    }
    if (sdtm_class_variable->label) {
        free(sdtm_class_variable->label);
        sdtm_class_variable->label = NULL;
    }
    if (sdtm_class_variable->description) {
        free(sdtm_class_variable->description);
        sdtm_class_variable->description = NULL;
    }
    if (sdtm_class_variable->role) {
        free(sdtm_class_variable->role);
        sdtm_class_variable->role = NULL;
    }
    if (sdtm_class_variable->role_description) {
        free(sdtm_class_variable->role_description);
        sdtm_class_variable->role_description = NULL;
    }
    if (sdtm_class_variable->simple_datatype) {
        free(sdtm_class_variable->simple_datatype);
        sdtm_class_variable->simple_datatype = NULL;
    }
    if (sdtm_class_variable->described_value_domain) {
        free(sdtm_class_variable->described_value_domain);
        sdtm_class_variable->described_value_domain = NULL;
    }
    if (sdtm_class_variable->_links) {
        sdtm_class_variable_links_free(sdtm_class_variable->_links);
        sdtm_class_variable->_links = NULL;
    }
    free(sdtm_class_variable);
}

cJSON *sdtm_class_variable_convertToJSON(sdtm_class_variable_t *sdtm_class_variable) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_variable->ordinal
    if(sdtm_class_variable->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sdtm_class_variable->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->name
    if(sdtm_class_variable->name) {
    if(cJSON_AddStringToObject(item, "name", sdtm_class_variable->name) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->label
    if(sdtm_class_variable->label) {
    if(cJSON_AddStringToObject(item, "label", sdtm_class_variable->label) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->description
    if(sdtm_class_variable->description) {
    if(cJSON_AddStringToObject(item, "description", sdtm_class_variable->description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->role
    if(sdtm_class_variable->role) {
    if(cJSON_AddStringToObject(item, "role", sdtm_class_variable->role) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->role_description
    if(sdtm_class_variable->role_description) {
    if(cJSON_AddStringToObject(item, "roleDescription", sdtm_class_variable->role_description) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->simple_datatype
    if(sdtm_class_variable->simple_datatype) {
    if(cJSON_AddStringToObject(item, "simpleDatatype", sdtm_class_variable->simple_datatype) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->described_value_domain
    if(sdtm_class_variable->described_value_domain) {
    if(cJSON_AddStringToObject(item, "describedValueDomain", sdtm_class_variable->described_value_domain) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable->_links
    if(sdtm_class_variable->_links) {
    cJSON *_links_local_JSON = sdtm_class_variable_links_convertToJSON(sdtm_class_variable->_links);
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

sdtm_class_variable_t *sdtm_class_variable_parseFromJSON(cJSON *sdtm_class_variableJSON){

    sdtm_class_variable_t *sdtm_class_variable_local_var = NULL;

    // define the local variable for sdtm_class_variable->_links
    sdtm_class_variable_links_t *_links_local_nonprim = NULL;

    // sdtm_class_variable->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->role
    cJSON *role = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "role");
    if (cJSON_IsNull(role)) {
        role = NULL;
    }
    if (role) { 
    if(!cJSON_IsString(role) && !cJSON_IsNull(role))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->role_description
    cJSON *role_description = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "roleDescription");
    if (cJSON_IsNull(role_description)) {
        role_description = NULL;
    }
    if (role_description) { 
    if(!cJSON_IsString(role_description) && !cJSON_IsNull(role_description))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->simple_datatype
    cJSON *simple_datatype = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "simpleDatatype");
    if (cJSON_IsNull(simple_datatype)) {
        simple_datatype = NULL;
    }
    if (simple_datatype) { 
    if(!cJSON_IsString(simple_datatype) && !cJSON_IsNull(simple_datatype))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->described_value_domain
    cJSON *described_value_domain = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "describedValueDomain");
    if (cJSON_IsNull(described_value_domain)) {
        described_value_domain = NULL;
    }
    if (described_value_domain) { 
    if(!cJSON_IsString(described_value_domain) && !cJSON_IsNull(described_value_domain))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sdtm_class_variableJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sdtm_class_variable_links_parseFromJSON(_links); //nonprimitive
    }


    sdtm_class_variable_local_var = sdtm_class_variable_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        role && !cJSON_IsNull(role) ? strdup(role->valuestring) : NULL,
        role_description && !cJSON_IsNull(role_description) ? strdup(role_description->valuestring) : NULL,
        simple_datatype && !cJSON_IsNull(simple_datatype) ? strdup(simple_datatype->valuestring) : NULL,
        described_value_domain && !cJSON_IsNull(described_value_domain) ? strdup(described_value_domain->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return sdtm_class_variable_local_var;
end:
    if (_links_local_nonprim) {
        sdtm_class_variable_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
