#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_adam_datastructures_row.h"



static export_adam_datastructures_row_t *export_adam_datastructures_row_create_internal(
    char *version,
    char *data_structure_name,
    char *dataset_name,
    char *dataset_label,
    char *dataset_description,
    char *_class
    ) {
    export_adam_datastructures_row_t *export_adam_datastructures_row_local_var = malloc(sizeof(export_adam_datastructures_row_t));
    if (!export_adam_datastructures_row_local_var) {
        return NULL;
    }
    export_adam_datastructures_row_local_var->version = version;
    export_adam_datastructures_row_local_var->data_structure_name = data_structure_name;
    export_adam_datastructures_row_local_var->dataset_name = dataset_name;
    export_adam_datastructures_row_local_var->dataset_label = dataset_label;
    export_adam_datastructures_row_local_var->dataset_description = dataset_description;
    export_adam_datastructures_row_local_var->_class = _class;

    export_adam_datastructures_row_local_var->_library_owned = 1;
    return export_adam_datastructures_row_local_var;
}

__attribute__((deprecated)) export_adam_datastructures_row_t *export_adam_datastructures_row_create(
    char *version,
    char *data_structure_name,
    char *dataset_name,
    char *dataset_label,
    char *dataset_description,
    char *_class
    ) {
    return export_adam_datastructures_row_create_internal (
        version,
        data_structure_name,
        dataset_name,
        dataset_label,
        dataset_description,
        _class
        );
}

void export_adam_datastructures_row_free(export_adam_datastructures_row_t *export_adam_datastructures_row) {
    if(NULL == export_adam_datastructures_row){
        return ;
    }
    if(export_adam_datastructures_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_adam_datastructures_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_adam_datastructures_row->version) {
        free(export_adam_datastructures_row->version);
        export_adam_datastructures_row->version = NULL;
    }
    if (export_adam_datastructures_row->data_structure_name) {
        free(export_adam_datastructures_row->data_structure_name);
        export_adam_datastructures_row->data_structure_name = NULL;
    }
    if (export_adam_datastructures_row->dataset_name) {
        free(export_adam_datastructures_row->dataset_name);
        export_adam_datastructures_row->dataset_name = NULL;
    }
    if (export_adam_datastructures_row->dataset_label) {
        free(export_adam_datastructures_row->dataset_label);
        export_adam_datastructures_row->dataset_label = NULL;
    }
    if (export_adam_datastructures_row->dataset_description) {
        free(export_adam_datastructures_row->dataset_description);
        export_adam_datastructures_row->dataset_description = NULL;
    }
    if (export_adam_datastructures_row->_class) {
        free(export_adam_datastructures_row->_class);
        export_adam_datastructures_row->_class = NULL;
    }
    free(export_adam_datastructures_row);
}

cJSON *export_adam_datastructures_row_convertToJSON(export_adam_datastructures_row_t *export_adam_datastructures_row) {
    cJSON *item = cJSON_CreateObject();

    // export_adam_datastructures_row->version
    if(export_adam_datastructures_row->version) {
    if(cJSON_AddStringToObject(item, "Version", export_adam_datastructures_row->version) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_datastructures_row->data_structure_name
    if(export_adam_datastructures_row->data_structure_name) {
    if(cJSON_AddStringToObject(item, "Data Structure Name", export_adam_datastructures_row->data_structure_name) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_datastructures_row->dataset_name
    if(export_adam_datastructures_row->dataset_name) {
    if(cJSON_AddStringToObject(item, "Dataset Name", export_adam_datastructures_row->dataset_name) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_datastructures_row->dataset_label
    if(export_adam_datastructures_row->dataset_label) {
    if(cJSON_AddStringToObject(item, "Dataset Label", export_adam_datastructures_row->dataset_label) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_datastructures_row->dataset_description
    if(export_adam_datastructures_row->dataset_description) {
    if(cJSON_AddStringToObject(item, "Dataset Description", export_adam_datastructures_row->dataset_description) == NULL) {
    goto fail; //String
    }
    }


    // export_adam_datastructures_row->_class
    if(export_adam_datastructures_row->_class) {
    if(cJSON_AddStringToObject(item, "Class", export_adam_datastructures_row->_class) == NULL) {
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

export_adam_datastructures_row_t *export_adam_datastructures_row_parseFromJSON(cJSON *export_adam_datastructures_rowJSON){

    export_adam_datastructures_row_t *export_adam_datastructures_row_local_var = NULL;

    // export_adam_datastructures_row->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_rowJSON, "Version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // export_adam_datastructures_row->data_structure_name
    cJSON *data_structure_name = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_rowJSON, "Data Structure Name");
    if (cJSON_IsNull(data_structure_name)) {
        data_structure_name = NULL;
    }
    if (data_structure_name) { 
    if(!cJSON_IsString(data_structure_name) && !cJSON_IsNull(data_structure_name))
    {
    goto end; //String
    }
    }

    // export_adam_datastructures_row->dataset_name
    cJSON *dataset_name = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_rowJSON, "Dataset Name");
    if (cJSON_IsNull(dataset_name)) {
        dataset_name = NULL;
    }
    if (dataset_name) { 
    if(!cJSON_IsString(dataset_name) && !cJSON_IsNull(dataset_name))
    {
    goto end; //String
    }
    }

    // export_adam_datastructures_row->dataset_label
    cJSON *dataset_label = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_rowJSON, "Dataset Label");
    if (cJSON_IsNull(dataset_label)) {
        dataset_label = NULL;
    }
    if (dataset_label) { 
    if(!cJSON_IsString(dataset_label) && !cJSON_IsNull(dataset_label))
    {
    goto end; //String
    }
    }

    // export_adam_datastructures_row->dataset_description
    cJSON *dataset_description = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_rowJSON, "Dataset Description");
    if (cJSON_IsNull(dataset_description)) {
        dataset_description = NULL;
    }
    if (dataset_description) { 
    if(!cJSON_IsString(dataset_description) && !cJSON_IsNull(dataset_description))
    {
    goto end; //String
    }
    }

    // export_adam_datastructures_row->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_rowJSON, "Class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }


    export_adam_datastructures_row_local_var = export_adam_datastructures_row_create_internal (
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        data_structure_name && !cJSON_IsNull(data_structure_name) ? strdup(data_structure_name->valuestring) : NULL,
        dataset_name && !cJSON_IsNull(dataset_name) ? strdup(dataset_name->valuestring) : NULL,
        dataset_label && !cJSON_IsNull(dataset_label) ? strdup(dataset_label->valuestring) : NULL,
        dataset_description && !cJSON_IsNull(dataset_description) ? strdup(dataset_description->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL
        );

    return export_adam_datastructures_row_local_var;
end:
    return NULL;

}
