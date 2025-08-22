#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sdtmig_variables_row.h"



static export_sdtmig_variables_row_t *export_sdtmig_variables_row_create_internal(
    char *version,
    char *variable_order,
    char *_class,
    char *dataset_name,
    char *variable_name,
    char *variable_label,
    char *type,
    char *controlled_terms_codelist_or_format,
    char *role,
    char *cdisc_notes,
    char *core
    ) {
    export_sdtmig_variables_row_t *export_sdtmig_variables_row_local_var = malloc(sizeof(export_sdtmig_variables_row_t));
    if (!export_sdtmig_variables_row_local_var) {
        return NULL;
    }
    export_sdtmig_variables_row_local_var->version = version;
    export_sdtmig_variables_row_local_var->variable_order = variable_order;
    export_sdtmig_variables_row_local_var->_class = _class;
    export_sdtmig_variables_row_local_var->dataset_name = dataset_name;
    export_sdtmig_variables_row_local_var->variable_name = variable_name;
    export_sdtmig_variables_row_local_var->variable_label = variable_label;
    export_sdtmig_variables_row_local_var->type = type;
    export_sdtmig_variables_row_local_var->controlled_terms_codelist_or_format = controlled_terms_codelist_or_format;
    export_sdtmig_variables_row_local_var->role = role;
    export_sdtmig_variables_row_local_var->cdisc_notes = cdisc_notes;
    export_sdtmig_variables_row_local_var->core = core;

    export_sdtmig_variables_row_local_var->_library_owned = 1;
    return export_sdtmig_variables_row_local_var;
}

__attribute__((deprecated)) export_sdtmig_variables_row_t *export_sdtmig_variables_row_create(
    char *version,
    char *variable_order,
    char *_class,
    char *dataset_name,
    char *variable_name,
    char *variable_label,
    char *type,
    char *controlled_terms_codelist_or_format,
    char *role,
    char *cdisc_notes,
    char *core
    ) {
    return export_sdtmig_variables_row_create_internal (
        version,
        variable_order,
        _class,
        dataset_name,
        variable_name,
        variable_label,
        type,
        controlled_terms_codelist_or_format,
        role,
        cdisc_notes,
        core
        );
}

void export_sdtmig_variables_row_free(export_sdtmig_variables_row_t *export_sdtmig_variables_row) {
    if(NULL == export_sdtmig_variables_row){
        return ;
    }
    if(export_sdtmig_variables_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sdtmig_variables_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sdtmig_variables_row->version) {
        free(export_sdtmig_variables_row->version);
        export_sdtmig_variables_row->version = NULL;
    }
    if (export_sdtmig_variables_row->variable_order) {
        free(export_sdtmig_variables_row->variable_order);
        export_sdtmig_variables_row->variable_order = NULL;
    }
    if (export_sdtmig_variables_row->_class) {
        free(export_sdtmig_variables_row->_class);
        export_sdtmig_variables_row->_class = NULL;
    }
    if (export_sdtmig_variables_row->dataset_name) {
        free(export_sdtmig_variables_row->dataset_name);
        export_sdtmig_variables_row->dataset_name = NULL;
    }
    if (export_sdtmig_variables_row->variable_name) {
        free(export_sdtmig_variables_row->variable_name);
        export_sdtmig_variables_row->variable_name = NULL;
    }
    if (export_sdtmig_variables_row->variable_label) {
        free(export_sdtmig_variables_row->variable_label);
        export_sdtmig_variables_row->variable_label = NULL;
    }
    if (export_sdtmig_variables_row->type) {
        free(export_sdtmig_variables_row->type);
        export_sdtmig_variables_row->type = NULL;
    }
    if (export_sdtmig_variables_row->controlled_terms_codelist_or_format) {
        free(export_sdtmig_variables_row->controlled_terms_codelist_or_format);
        export_sdtmig_variables_row->controlled_terms_codelist_or_format = NULL;
    }
    if (export_sdtmig_variables_row->role) {
        free(export_sdtmig_variables_row->role);
        export_sdtmig_variables_row->role = NULL;
    }
    if (export_sdtmig_variables_row->cdisc_notes) {
        free(export_sdtmig_variables_row->cdisc_notes);
        export_sdtmig_variables_row->cdisc_notes = NULL;
    }
    if (export_sdtmig_variables_row->core) {
        free(export_sdtmig_variables_row->core);
        export_sdtmig_variables_row->core = NULL;
    }
    free(export_sdtmig_variables_row);
}

cJSON *export_sdtmig_variables_row_convertToJSON(export_sdtmig_variables_row_t *export_sdtmig_variables_row) {
    cJSON *item = cJSON_CreateObject();

    // export_sdtmig_variables_row->version
    if(export_sdtmig_variables_row->version) {
    if(cJSON_AddStringToObject(item, "Version", export_sdtmig_variables_row->version) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->variable_order
    if(export_sdtmig_variables_row->variable_order) {
    if(cJSON_AddStringToObject(item, "Variable Order", export_sdtmig_variables_row->variable_order) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->_class
    if(export_sdtmig_variables_row->_class) {
    if(cJSON_AddStringToObject(item, "Class", export_sdtmig_variables_row->_class) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->dataset_name
    if(export_sdtmig_variables_row->dataset_name) {
    if(cJSON_AddStringToObject(item, "Dataset Name", export_sdtmig_variables_row->dataset_name) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->variable_name
    if(export_sdtmig_variables_row->variable_name) {
    if(cJSON_AddStringToObject(item, "Variable Name", export_sdtmig_variables_row->variable_name) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->variable_label
    if(export_sdtmig_variables_row->variable_label) {
    if(cJSON_AddStringToObject(item, "Variable Label", export_sdtmig_variables_row->variable_label) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->type
    if(export_sdtmig_variables_row->type) {
    if(cJSON_AddStringToObject(item, "Type", export_sdtmig_variables_row->type) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->controlled_terms_codelist_or_format
    if(export_sdtmig_variables_row->controlled_terms_codelist_or_format) {
    if(cJSON_AddStringToObject(item, "Controlled Terms, Codelist or Format", export_sdtmig_variables_row->controlled_terms_codelist_or_format) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->role
    if(export_sdtmig_variables_row->role) {
    if(cJSON_AddStringToObject(item, "Role", export_sdtmig_variables_row->role) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->cdisc_notes
    if(export_sdtmig_variables_row->cdisc_notes) {
    if(cJSON_AddStringToObject(item, "CDISC Notes", export_sdtmig_variables_row->cdisc_notes) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_variables_row->core
    if(export_sdtmig_variables_row->core) {
    if(cJSON_AddStringToObject(item, "Core", export_sdtmig_variables_row->core) == NULL) {
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

export_sdtmig_variables_row_t *export_sdtmig_variables_row_parseFromJSON(cJSON *export_sdtmig_variables_rowJSON){

    export_sdtmig_variables_row_t *export_sdtmig_variables_row_local_var = NULL;

    // export_sdtmig_variables_row->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->variable_order
    cJSON *variable_order = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Variable Order");
    if (cJSON_IsNull(variable_order)) {
        variable_order = NULL;
    }
    if (variable_order) { 
    if(!cJSON_IsString(variable_order) && !cJSON_IsNull(variable_order))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->dataset_name
    cJSON *dataset_name = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Dataset Name");
    if (cJSON_IsNull(dataset_name)) {
        dataset_name = NULL;
    }
    if (dataset_name) { 
    if(!cJSON_IsString(dataset_name) && !cJSON_IsNull(dataset_name))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->variable_name
    cJSON *variable_name = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Variable Name");
    if (cJSON_IsNull(variable_name)) {
        variable_name = NULL;
    }
    if (variable_name) { 
    if(!cJSON_IsString(variable_name) && !cJSON_IsNull(variable_name))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->variable_label
    cJSON *variable_label = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Variable Label");
    if (cJSON_IsNull(variable_label)) {
        variable_label = NULL;
    }
    if (variable_label) { 
    if(!cJSON_IsString(variable_label) && !cJSON_IsNull(variable_label))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->controlled_terms_codelist_or_format
    cJSON *controlled_terms_codelist_or_format = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Controlled Terms, Codelist or Format");
    if (cJSON_IsNull(controlled_terms_codelist_or_format)) {
        controlled_terms_codelist_or_format = NULL;
    }
    if (controlled_terms_codelist_or_format) { 
    if(!cJSON_IsString(controlled_terms_codelist_or_format) && !cJSON_IsNull(controlled_terms_codelist_or_format))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->role
    cJSON *role = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Role");
    if (cJSON_IsNull(role)) {
        role = NULL;
    }
    if (role) { 
    if(!cJSON_IsString(role) && !cJSON_IsNull(role))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->cdisc_notes
    cJSON *cdisc_notes = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "CDISC Notes");
    if (cJSON_IsNull(cdisc_notes)) {
        cdisc_notes = NULL;
    }
    if (cdisc_notes) { 
    if(!cJSON_IsString(cdisc_notes) && !cJSON_IsNull(cdisc_notes))
    {
    goto end; //String
    }
    }

    // export_sdtmig_variables_row->core
    cJSON *core = cJSON_GetObjectItemCaseSensitive(export_sdtmig_variables_rowJSON, "Core");
    if (cJSON_IsNull(core)) {
        core = NULL;
    }
    if (core) { 
    if(!cJSON_IsString(core) && !cJSON_IsNull(core))
    {
    goto end; //String
    }
    }


    export_sdtmig_variables_row_local_var = export_sdtmig_variables_row_create_internal (
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        variable_order && !cJSON_IsNull(variable_order) ? strdup(variable_order->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        dataset_name && !cJSON_IsNull(dataset_name) ? strdup(dataset_name->valuestring) : NULL,
        variable_name && !cJSON_IsNull(variable_name) ? strdup(variable_name->valuestring) : NULL,
        variable_label && !cJSON_IsNull(variable_label) ? strdup(variable_label->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        controlled_terms_codelist_or_format && !cJSON_IsNull(controlled_terms_codelist_or_format) ? strdup(controlled_terms_codelist_or_format->valuestring) : NULL,
        role && !cJSON_IsNull(role) ? strdup(role->valuestring) : NULL,
        cdisc_notes && !cJSON_IsNull(cdisc_notes) ? strdup(cdisc_notes->valuestring) : NULL,
        core && !cJSON_IsNull(core) ? strdup(core->valuestring) : NULL
        );

    return export_sdtmig_variables_row_local_var;
end:
    return NULL;

}
