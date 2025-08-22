#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_adam_variables_row.h"



static export_adam_variables_row_t *export_adam_variables_row_create_internal(
    char *version,
    char *data_structure_name,
    char *dataset_name,
    char *variable_group,
    char *variable_name,
    char *variable_label,
    char *type,
    char *codelist_controlled_terms,
    char *core,
    char *cdisc_notes
    ) {
    export_adam_variables_row_t *export_adam_variables_row_local_var = malloc(sizeof(export_adam_variables_row_t));
    if (!export_adam_variables_row_local_var) {
        return NULL;
    }
    export_adam_variables_row_local_var->version = version;
    export_adam_variables_row_local_var->data_structure_name = data_structure_name;
    export_adam_variables_row_local_var->dataset_name = dataset_name;
    export_adam_variables_row_local_var->variable_group = variable_group;
    export_adam_variables_row_local_var->variable_name = variable_name;
    export_adam_variables_row_local_var->variable_label = variable_label;
    export_adam_variables_row_local_var->type = type;
    export_adam_variables_row_local_var->codelist_controlled_terms = codelist_controlled_terms;
    export_adam_variables_row_local_var->core = core;
    export_adam_variables_row_local_var->cdisc_notes = cdisc_notes;

    export_adam_variables_row_local_var->_library_owned = 1;
    return export_adam_variables_row_local_var;
}

__attribute__((deprecated)) export_adam_variables_row_t *export_adam_variables_row_create(
    char *version,
    char *data_structure_name,
    char *dataset_name,
    char *variable_group,
    char *variable_name,
    char *variable_label,
    char *type,
    char *codelist_controlled_terms,
    char *core,
    char *cdisc_notes
    ) {
    return export_adam_variables_row_create_internal (
        version,
        data_structure_name,
        dataset_name,
        variable_group,
        variable_name,
        variable_label,
        type,
        codelist_controlled_terms,
        core,
        cdisc_notes
        );
}

void export_adam_variables_row_free(export_adam_variables_row_t *export_adam_variables_row) {
    if(NULL == export_adam_variables_row){
        return ;
    }
    if(export_adam_variables_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_adam_variables_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_adam_variables_row->version) {
        free(export_adam_variables_row->version);
        export_adam_variables_row->version = NULL;
    }
    if (export_adam_variables_row->data_structure_name) {
        free(export_adam_variables_row->data_structure_name);
        export_adam_variables_row->data_structure_name = NULL;
    }
    if (export_adam_variables_row->dataset_name) {
        free(export_adam_variables_row->dataset_name);
        export_adam_variables_row->dataset_name = NULL;
    }
    if (export_adam_variables_row->variable_group) {
        free(export_adam_variables_row->variable_group);
        export_adam_variables_row->variable_group = NULL;
    }
    if (export_adam_variables_row->variable_name) {
        free(export_adam_variables_row->variable_name);
        export_adam_variables_row->variable_name = NULL;
    }
    if (export_adam_variables_row->variable_label) {
        free(export_adam_variables_row->variable_label);
        export_adam_variables_row->variable_label = NULL;
    }
    if (export_adam_variables_row->type) {
        free(export_adam_variables_row->type);
        export_adam_variables_row->type = NULL;
    }
    if (export_adam_variables_row->codelist_controlled_terms) {
        free(export_adam_variables_row->codelist_controlled_terms);
        export_adam_variables_row->codelist_controlled_terms = NULL;
    }
    if (export_adam_variables_row->core) {
        free(export_adam_variables_row->core);
        export_adam_variables_row->core = NULL;
    }
    if (export_adam_variables_row->cdisc_notes) {
        free(export_adam_variables_row->cdisc_notes);
        export_adam_variables_row->cdisc_notes = NULL;
    }
    free(export_adam_variables_row);
}

cJSON *export_adam_variables_row_convertToJSON(export_adam_variables_row_t *export_adam_variables_row) {
    cJSON *item = cJSON_CreateObject();

    // export_adam_variables_row->version
    if(export_adam_variables_row->version) {
    if(cJSON_AddStringToObject(item, "Version", export_adam_variables_row->version) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->data_structure_name
    if(export_adam_variables_row->data_structure_name) {
    if(cJSON_AddStringToObject(item, "Data Structure Name", export_adam_variables_row->data_structure_name) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->dataset_name
    if(export_adam_variables_row->dataset_name) {
    if(cJSON_AddStringToObject(item, "Dataset Name", export_adam_variables_row->dataset_name) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->variable_group
    if(export_adam_variables_row->variable_group) {
    if(cJSON_AddStringToObject(item, "Variable Group", export_adam_variables_row->variable_group) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->variable_name
    if(export_adam_variables_row->variable_name) {
    if(cJSON_AddStringToObject(item, "Variable Name", export_adam_variables_row->variable_name) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->variable_label
    if(export_adam_variables_row->variable_label) {
    if(cJSON_AddStringToObject(item, "Variable Label", export_adam_variables_row->variable_label) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->type
    if(export_adam_variables_row->type) {
    if(cJSON_AddStringToObject(item, "Type", export_adam_variables_row->type) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->codelist_controlled_terms
    if(export_adam_variables_row->codelist_controlled_terms) {
    if(cJSON_AddStringToObject(item, "Codelist/Controlled Terms", export_adam_variables_row->codelist_controlled_terms) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->core
    if(export_adam_variables_row->core) {
    if(cJSON_AddStringToObject(item, "Core", export_adam_variables_row->core) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_variables_row->cdisc_notes
    if(export_adam_variables_row->cdisc_notes) {
    if(cJSON_AddStringToObject(item, "CDISC Notes", export_adam_variables_row->cdisc_notes) == NULL) {
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

export_adam_variables_row_t *export_adam_variables_row_parseFromJSON(cJSON *export_adam_variables_rowJSON){

    export_adam_variables_row_t *export_adam_variables_row_local_var = NULL;

    // export_adam_variables_row->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->data_structure_name
    cJSON *data_structure_name = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Data Structure Name");
    if (cJSON_IsNull(data_structure_name)) {
        data_structure_name = NULL;
    }
    if (data_structure_name) { 
    if(!cJSON_IsString(data_structure_name) && !cJSON_IsNull(data_structure_name))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->dataset_name
    cJSON *dataset_name = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Dataset Name");
    if (cJSON_IsNull(dataset_name)) {
        dataset_name = NULL;
    }
    if (dataset_name) { 
    if(!cJSON_IsString(dataset_name) && !cJSON_IsNull(dataset_name))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->variable_group
    cJSON *variable_group = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Variable Group");
    if (cJSON_IsNull(variable_group)) {
        variable_group = NULL;
    }
    if (variable_group) { 
    if(!cJSON_IsString(variable_group) && !cJSON_IsNull(variable_group))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->variable_name
    cJSON *variable_name = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Variable Name");
    if (cJSON_IsNull(variable_name)) {
        variable_name = NULL;
    }
    if (variable_name) { 
    if(!cJSON_IsString(variable_name) && !cJSON_IsNull(variable_name))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->variable_label
    cJSON *variable_label = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Variable Label");
    if (cJSON_IsNull(variable_label)) {
        variable_label = NULL;
    }
    if (variable_label) { 
    if(!cJSON_IsString(variable_label) && !cJSON_IsNull(variable_label))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->codelist_controlled_terms
    cJSON *codelist_controlled_terms = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Codelist/Controlled Terms");
    if (cJSON_IsNull(codelist_controlled_terms)) {
        codelist_controlled_terms = NULL;
    }
    if (codelist_controlled_terms) { 
    if(!cJSON_IsString(codelist_controlled_terms) && !cJSON_IsNull(codelist_controlled_terms))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->core
    cJSON *core = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "Core");
    if (cJSON_IsNull(core)) {
        core = NULL;
    }
    if (core) { 
    if(!cJSON_IsString(core) && !cJSON_IsNull(core))
    {
    goto end; //String
    }
    }

    // export_adam_variables_row->cdisc_notes
    cJSON *cdisc_notes = cJSON_GetObjectItemCaseSensitive(export_adam_variables_rowJSON, "CDISC Notes");
    if (cJSON_IsNull(cdisc_notes)) {
        cdisc_notes = NULL;
    }
    if (cdisc_notes) { 
    if(!cJSON_IsString(cdisc_notes) && !cJSON_IsNull(cdisc_notes))
    {
    goto end; //String
    }
    }


    export_adam_variables_row_local_var = export_adam_variables_row_create_internal (
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        data_structure_name && !cJSON_IsNull(data_structure_name) ? strdup(data_structure_name->valuestring) : NULL,
        dataset_name && !cJSON_IsNull(dataset_name) ? strdup(dataset_name->valuestring) : NULL,
        variable_group && !cJSON_IsNull(variable_group) ? strdup(variable_group->valuestring) : NULL,
        variable_name && !cJSON_IsNull(variable_name) ? strdup(variable_name->valuestring) : NULL,
        variable_label && !cJSON_IsNull(variable_label) ? strdup(variable_label->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        codelist_controlled_terms && !cJSON_IsNull(codelist_controlled_terms) ? strdup(codelist_controlled_terms->valuestring) : NULL,
        core && !cJSON_IsNull(core) ? strdup(core->valuestring) : NULL,
        cdisc_notes && !cJSON_IsNull(cdisc_notes) ? strdup(cdisc_notes->valuestring) : NULL
        );

    return export_adam_variables_row_local_var;
end:
    return NULL;

}
