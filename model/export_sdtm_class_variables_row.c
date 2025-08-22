#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sdtm_class_variables_row.h"



static export_sdtm_class_variables_row_t *export_sdtm_class_variables_row_create_internal(
    char *version,
    char *variable_order,
    char *_class,
    char *dataset_name,
    char *variable_name,
    char *variable_label,
    char *type,
    char *controlled_terms_codelist_or_format,
    char *role,
    char *role_description,
    char *description
    ) {
    export_sdtm_class_variables_row_t *export_sdtm_class_variables_row_local_var = malloc(sizeof(export_sdtm_class_variables_row_t));
    if (!export_sdtm_class_variables_row_local_var) {
        return NULL;
    }
    export_sdtm_class_variables_row_local_var->version = version;
    export_sdtm_class_variables_row_local_var->variable_order = variable_order;
    export_sdtm_class_variables_row_local_var->_class = _class;
    export_sdtm_class_variables_row_local_var->dataset_name = dataset_name;
    export_sdtm_class_variables_row_local_var->variable_name = variable_name;
    export_sdtm_class_variables_row_local_var->variable_label = variable_label;
    export_sdtm_class_variables_row_local_var->type = type;
    export_sdtm_class_variables_row_local_var->controlled_terms_codelist_or_format = controlled_terms_codelist_or_format;
    export_sdtm_class_variables_row_local_var->role = role;
    export_sdtm_class_variables_row_local_var->role_description = role_description;
    export_sdtm_class_variables_row_local_var->description = description;

    export_sdtm_class_variables_row_local_var->_library_owned = 1;
    return export_sdtm_class_variables_row_local_var;
}

__attribute__((deprecated)) export_sdtm_class_variables_row_t *export_sdtm_class_variables_row_create(
    char *version,
    char *variable_order,
    char *_class,
    char *dataset_name,
    char *variable_name,
    char *variable_label,
    char *type,
    char *controlled_terms_codelist_or_format,
    char *role,
    char *role_description,
    char *description
    ) {
    return export_sdtm_class_variables_row_create_internal (
        version,
        variable_order,
        _class,
        dataset_name,
        variable_name,
        variable_label,
        type,
        controlled_terms_codelist_or_format,
        role,
        role_description,
        description
        );
}

void export_sdtm_class_variables_row_free(export_sdtm_class_variables_row_t *export_sdtm_class_variables_row) {
    if(NULL == export_sdtm_class_variables_row){
        return ;
    }
    if(export_sdtm_class_variables_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sdtm_class_variables_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sdtm_class_variables_row->version) {
        free(export_sdtm_class_variables_row->version);
        export_sdtm_class_variables_row->version = NULL;
    }
    if (export_sdtm_class_variables_row->variable_order) {
        free(export_sdtm_class_variables_row->variable_order);
        export_sdtm_class_variables_row->variable_order = NULL;
    }
    if (export_sdtm_class_variables_row->_class) {
        free(export_sdtm_class_variables_row->_class);
        export_sdtm_class_variables_row->_class = NULL;
    }
    if (export_sdtm_class_variables_row->dataset_name) {
        free(export_sdtm_class_variables_row->dataset_name);
        export_sdtm_class_variables_row->dataset_name = NULL;
    }
    if (export_sdtm_class_variables_row->variable_name) {
        free(export_sdtm_class_variables_row->variable_name);
        export_sdtm_class_variables_row->variable_name = NULL;
    }
    if (export_sdtm_class_variables_row->variable_label) {
        free(export_sdtm_class_variables_row->variable_label);
        export_sdtm_class_variables_row->variable_label = NULL;
    }
    if (export_sdtm_class_variables_row->type) {
        free(export_sdtm_class_variables_row->type);
        export_sdtm_class_variables_row->type = NULL;
    }
    if (export_sdtm_class_variables_row->controlled_terms_codelist_or_format) {
        free(export_sdtm_class_variables_row->controlled_terms_codelist_or_format);
        export_sdtm_class_variables_row->controlled_terms_codelist_or_format = NULL;
    }
    if (export_sdtm_class_variables_row->role) {
        free(export_sdtm_class_variables_row->role);
        export_sdtm_class_variables_row->role = NULL;
    }
    if (export_sdtm_class_variables_row->role_description) {
        free(export_sdtm_class_variables_row->role_description);
        export_sdtm_class_variables_row->role_description = NULL;
    }
    if (export_sdtm_class_variables_row->description) {
        free(export_sdtm_class_variables_row->description);
        export_sdtm_class_variables_row->description = NULL;
    }
    free(export_sdtm_class_variables_row);
}

cJSON *export_sdtm_class_variables_row_convertToJSON(export_sdtm_class_variables_row_t *export_sdtm_class_variables_row) {
    cJSON *item = cJSON_CreateObject();

    // export_sdtm_class_variables_row->version
    if(export_sdtm_class_variables_row->version) {
    if(cJSON_AddStringToObject(item, "Version", export_sdtm_class_variables_row->version) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->variable_order
    if(export_sdtm_class_variables_row->variable_order) {
    if(cJSON_AddStringToObject(item, "Variable Order", export_sdtm_class_variables_row->variable_order) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->_class
    if(export_sdtm_class_variables_row->_class) {
    if(cJSON_AddStringToObject(item, "Class", export_sdtm_class_variables_row->_class) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->dataset_name
    if(export_sdtm_class_variables_row->dataset_name) {
    if(cJSON_AddStringToObject(item, "Dataset Name", export_sdtm_class_variables_row->dataset_name) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->variable_name
    if(export_sdtm_class_variables_row->variable_name) {
    if(cJSON_AddStringToObject(item, "Variable Name", export_sdtm_class_variables_row->variable_name) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->variable_label
    if(export_sdtm_class_variables_row->variable_label) {
    if(cJSON_AddStringToObject(item, "Variable Label", export_sdtm_class_variables_row->variable_label) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->type
    if(export_sdtm_class_variables_row->type) {
    if(cJSON_AddStringToObject(item, "Type", export_sdtm_class_variables_row->type) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->controlled_terms_codelist_or_format
    if(export_sdtm_class_variables_row->controlled_terms_codelist_or_format) {
    if(cJSON_AddStringToObject(item, "Controlled Terms, Codelist or Format", export_sdtm_class_variables_row->controlled_terms_codelist_or_format) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->role
    if(export_sdtm_class_variables_row->role) {
    if(cJSON_AddStringToObject(item, "Role", export_sdtm_class_variables_row->role) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->role_description
    if(export_sdtm_class_variables_row->role_description) {
    if(cJSON_AddStringToObject(item, "Role Description", export_sdtm_class_variables_row->role_description) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtm_class_variables_row->description
    if(export_sdtm_class_variables_row->description) {
    if(cJSON_AddStringToObject(item, "Description", export_sdtm_class_variables_row->description) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

export_sdtm_class_variables_row_t *export_sdtm_class_variables_row_parseFromJSON(cJSON *export_sdtm_class_variables_rowJSON){

    export_sdtm_class_variables_row_t *export_sdtm_class_variables_row_local_var = NULL;

    // export_sdtm_class_variables_row->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->variable_order
    cJSON *variable_order = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Variable Order");
    if (cJSON_IsNull(variable_order)) {
        variable_order = NULL;
    }
    if (variable_order) { 
    if(!cJSON_IsString(variable_order) && !cJSON_IsNull(variable_order))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->dataset_name
    cJSON *dataset_name = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Dataset Name");
    if (cJSON_IsNull(dataset_name)) {
        dataset_name = NULL;
    }
    if (dataset_name) { 
    if(!cJSON_IsString(dataset_name) && !cJSON_IsNull(dataset_name))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->variable_name
    cJSON *variable_name = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Variable Name");
    if (cJSON_IsNull(variable_name)) {
        variable_name = NULL;
    }
    if (variable_name) { 
    if(!cJSON_IsString(variable_name) && !cJSON_IsNull(variable_name))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->variable_label
    cJSON *variable_label = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Variable Label");
    if (cJSON_IsNull(variable_label)) {
        variable_label = NULL;
    }
    if (variable_label) { 
    if(!cJSON_IsString(variable_label) && !cJSON_IsNull(variable_label))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->controlled_terms_codelist_or_format
    cJSON *controlled_terms_codelist_or_format = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Controlled Terms, Codelist or Format");
    if (cJSON_IsNull(controlled_terms_codelist_or_format)) {
        controlled_terms_codelist_or_format = NULL;
    }
    if (controlled_terms_codelist_or_format) { 
    if(!cJSON_IsString(controlled_terms_codelist_or_format) && !cJSON_IsNull(controlled_terms_codelist_or_format))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->role
    cJSON *role = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Role");
    if (cJSON_IsNull(role)) {
        role = NULL;
    }
    if (role) { 
    if(!cJSON_IsString(role) && !cJSON_IsNull(role))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->role_description
    cJSON *role_description = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Role Description");
    if (cJSON_IsNull(role_description)) {
        role_description = NULL;
    }
    if (role_description) { 
    if(!cJSON_IsString(role_description) && !cJSON_IsNull(role_description))
    {
    goto end; //String
    }
    }

    // export_sdtm_class_variables_row->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(export_sdtm_class_variables_rowJSON, "Description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }


    export_sdtm_class_variables_row_local_var = export_sdtm_class_variables_row_create_internal (
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        variable_order && !cJSON_IsNull(variable_order) ? strdup(variable_order->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        dataset_name && !cJSON_IsNull(dataset_name) ? strdup(dataset_name->valuestring) : NULL,
        variable_name && !cJSON_IsNull(variable_name) ? strdup(variable_name->valuestring) : NULL,
        variable_label && !cJSON_IsNull(variable_label) ? strdup(variable_label->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        controlled_terms_codelist_or_format && !cJSON_IsNull(controlled_terms_codelist_or_format) ? strdup(controlled_terms_codelist_or_format->valuestring) : NULL,
        role && !cJSON_IsNull(role) ? strdup(role->valuestring) : NULL,
        role_description && !cJSON_IsNull(role_description) ? strdup(role_description->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL
        );

    return export_sdtm_class_variables_row_local_var;
end:
    return NULL;

}
