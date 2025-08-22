#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sdtmig_datasets_row.h"



static export_sdtmig_datasets_row_t *export_sdtmig_datasets_row_create_internal(
    char *version,
    char *_class,
    char *dataset_name,
    char *dataset_label,
    char *structure
    ) {
    export_sdtmig_datasets_row_t *export_sdtmig_datasets_row_local_var = malloc(sizeof(export_sdtmig_datasets_row_t));
    if (!export_sdtmig_datasets_row_local_var) {
        return NULL;
    }
    export_sdtmig_datasets_row_local_var->version = version;
    export_sdtmig_datasets_row_local_var->_class = _class;
    export_sdtmig_datasets_row_local_var->dataset_name = dataset_name;
    export_sdtmig_datasets_row_local_var->dataset_label = dataset_label;
    export_sdtmig_datasets_row_local_var->structure = structure;

    export_sdtmig_datasets_row_local_var->_library_owned = 1;
    return export_sdtmig_datasets_row_local_var;
}

__attribute__((deprecated)) export_sdtmig_datasets_row_t *export_sdtmig_datasets_row_create(
    char *version,
    char *_class,
    char *dataset_name,
    char *dataset_label,
    char *structure
    ) {
    return export_sdtmig_datasets_row_create_internal (
        version,
        _class,
        dataset_name,
        dataset_label,
        structure
        );
}

void export_sdtmig_datasets_row_free(export_sdtmig_datasets_row_t *export_sdtmig_datasets_row) {
    if(NULL == export_sdtmig_datasets_row){
        return ;
    }
    if(export_sdtmig_datasets_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sdtmig_datasets_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sdtmig_datasets_row->version) {
        free(export_sdtmig_datasets_row->version);
        export_sdtmig_datasets_row->version = NULL;
    }
    if (export_sdtmig_datasets_row->_class) {
        free(export_sdtmig_datasets_row->_class);
        export_sdtmig_datasets_row->_class = NULL;
    }
    if (export_sdtmig_datasets_row->dataset_name) {
        free(export_sdtmig_datasets_row->dataset_name);
        export_sdtmig_datasets_row->dataset_name = NULL;
    }
    if (export_sdtmig_datasets_row->dataset_label) {
        free(export_sdtmig_datasets_row->dataset_label);
        export_sdtmig_datasets_row->dataset_label = NULL;
    }
    if (export_sdtmig_datasets_row->structure) {
        free(export_sdtmig_datasets_row->structure);
        export_sdtmig_datasets_row->structure = NULL;
    }
    free(export_sdtmig_datasets_row);
}

cJSON *export_sdtmig_datasets_row_convertToJSON(export_sdtmig_datasets_row_t *export_sdtmig_datasets_row) {
    cJSON *item = cJSON_CreateObject();

    // export_sdtmig_datasets_row->version
    if(export_sdtmig_datasets_row->version) {
    if(cJSON_AddStringToObject(item, "Version", export_sdtmig_datasets_row->version) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_datasets_row->_class
    if(export_sdtmig_datasets_row->_class) {
    if(cJSON_AddStringToObject(item, "Class", export_sdtmig_datasets_row->_class) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_datasets_row->dataset_name
    if(export_sdtmig_datasets_row->dataset_name) {
    if(cJSON_AddStringToObject(item, "Dataset Name", export_sdtmig_datasets_row->dataset_name) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_datasets_row->dataset_label
    if(export_sdtmig_datasets_row->dataset_label) {
    if(cJSON_AddStringToObject(item, "Dataset Label", export_sdtmig_datasets_row->dataset_label) == NULL) {
    goto fail; //String
    }
    }


    // export_sdtmig_datasets_row->structure
    if(export_sdtmig_datasets_row->structure) {
    if(cJSON_AddStringToObject(item, "Structure", export_sdtmig_datasets_row->structure) == NULL) {
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

export_sdtmig_datasets_row_t *export_sdtmig_datasets_row_parseFromJSON(cJSON *export_sdtmig_datasets_rowJSON){

    export_sdtmig_datasets_row_t *export_sdtmig_datasets_row_local_var = NULL;

    // export_sdtmig_datasets_row->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(export_sdtmig_datasets_rowJSON, "Version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // export_sdtmig_datasets_row->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(export_sdtmig_datasets_rowJSON, "Class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // export_sdtmig_datasets_row->dataset_name
    cJSON *dataset_name = cJSON_GetObjectItemCaseSensitive(export_sdtmig_datasets_rowJSON, "Dataset Name");
    if (cJSON_IsNull(dataset_name)) {
        dataset_name = NULL;
    }
    if (dataset_name) { 
    if(!cJSON_IsString(dataset_name) && !cJSON_IsNull(dataset_name))
    {
    goto end; //String
    }
    }

    // export_sdtmig_datasets_row->dataset_label
    cJSON *dataset_label = cJSON_GetObjectItemCaseSensitive(export_sdtmig_datasets_rowJSON, "Dataset Label");
    if (cJSON_IsNull(dataset_label)) {
        dataset_label = NULL;
    }
    if (dataset_label) { 
    if(!cJSON_IsString(dataset_label) && !cJSON_IsNull(dataset_label))
    {
    goto end; //String
    }
    }

    // export_sdtmig_datasets_row->structure
    cJSON *structure = cJSON_GetObjectItemCaseSensitive(export_sdtmig_datasets_rowJSON, "Structure");
    if (cJSON_IsNull(structure)) {
        structure = NULL;
    }
    if (structure) { 
    if(!cJSON_IsString(structure) && !cJSON_IsNull(structure))
    {
    goto end; //String
    }
    }


    export_sdtmig_datasets_row_local_var = export_sdtmig_datasets_row_create_internal (
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        dataset_name && !cJSON_IsNull(dataset_name) ? strdup(dataset_name->valuestring) : NULL,
        dataset_label && !cJSON_IsNull(dataset_label) ? strdup(dataset_label->valuestring) : NULL,
        structure && !cJSON_IsNull(structure) ? strdup(structure->valuestring) : NULL
        );

    return export_sdtmig_datasets_row_local_var;
end:
    return NULL;

}
