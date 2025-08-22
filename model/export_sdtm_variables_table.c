#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sdtm_variables_table.h"



static export_sdtm_variables_table_t *export_sdtm_variables_table_create_internal(
    list_t *class_variables,
    list_t *dataset_variables
    ) {
    export_sdtm_variables_table_t *export_sdtm_variables_table_local_var = malloc(sizeof(export_sdtm_variables_table_t));
    if (!export_sdtm_variables_table_local_var) {
        return NULL;
    }
    export_sdtm_variables_table_local_var->class_variables = class_variables;
    export_sdtm_variables_table_local_var->dataset_variables = dataset_variables;

    export_sdtm_variables_table_local_var->_library_owned = 1;
    return export_sdtm_variables_table_local_var;
}

__attribute__((deprecated)) export_sdtm_variables_table_t *export_sdtm_variables_table_create(
    list_t *class_variables,
    list_t *dataset_variables
    ) {
    return export_sdtm_variables_table_create_internal (
        class_variables,
        dataset_variables
        );
}

void export_sdtm_variables_table_free(export_sdtm_variables_table_t *export_sdtm_variables_table) {
    if(NULL == export_sdtm_variables_table){
        return ;
    }
    if(export_sdtm_variables_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sdtm_variables_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sdtm_variables_table->class_variables) {
        list_ForEach(listEntry, export_sdtm_variables_table->class_variables) {
            export_sdtm_class_variables_row_free(listEntry->data);
        }
        list_freeList(export_sdtm_variables_table->class_variables);
        export_sdtm_variables_table->class_variables = NULL;
    }
    if (export_sdtm_variables_table->dataset_variables) {
        list_ForEach(listEntry, export_sdtm_variables_table->dataset_variables) {
            export_sdtm_dataset_variables_row_free(listEntry->data);
        }
        list_freeList(export_sdtm_variables_table->dataset_variables);
        export_sdtm_variables_table->dataset_variables = NULL;
    }
    free(export_sdtm_variables_table);
}

cJSON *export_sdtm_variables_table_convertToJSON(export_sdtm_variables_table_t *export_sdtm_variables_table) {
    cJSON *item = cJSON_CreateObject();

    // export_sdtm_variables_table->class_variables
    if(export_sdtm_variables_table->class_variables) {
    cJSON *class_variables = cJSON_AddArrayToObject(item, "class-variables");
    if(class_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *class_variablesListEntry;
    if (export_sdtm_variables_table->class_variables) {
    list_ForEach(class_variablesListEntry, export_sdtm_variables_table->class_variables) {
    cJSON *itemLocal = export_sdtm_class_variables_row_convertToJSON(class_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(class_variables, itemLocal);
    }
    }
    }


    // export_sdtm_variables_table->dataset_variables
    if(export_sdtm_variables_table->dataset_variables) {
    cJSON *dataset_variables = cJSON_AddArrayToObject(item, "dataset-variables");
    if(dataset_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataset_variablesListEntry;
    if (export_sdtm_variables_table->dataset_variables) {
    list_ForEach(dataset_variablesListEntry, export_sdtm_variables_table->dataset_variables) {
    cJSON *itemLocal = export_sdtm_dataset_variables_row_convertToJSON(dataset_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(dataset_variables, itemLocal);
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

export_sdtm_variables_table_t *export_sdtm_variables_table_parseFromJSON(cJSON *export_sdtm_variables_tableJSON){

    export_sdtm_variables_table_t *export_sdtm_variables_table_local_var = NULL;

    // define the local list for export_sdtm_variables_table->class_variables
    list_t *class_variablesList = NULL;

    // define the local list for export_sdtm_variables_table->dataset_variables
    list_t *dataset_variablesList = NULL;

    // export_sdtm_variables_table->class_variables
    cJSON *class_variables = cJSON_GetObjectItemCaseSensitive(export_sdtm_variables_tableJSON, "class-variables");
    if (cJSON_IsNull(class_variables)) {
        class_variables = NULL;
    }
    if (class_variables) { 
    cJSON *class_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(class_variables)){
        goto end; //nonprimitive container
    }

    class_variablesList = list_createList();

    cJSON_ArrayForEach(class_variables_local_nonprimitive,class_variables )
    {
        if(!cJSON_IsObject(class_variables_local_nonprimitive)){
            goto end;
        }
        export_sdtm_class_variables_row_t *class_variablesItem = export_sdtm_class_variables_row_parseFromJSON(class_variables_local_nonprimitive);

        list_addElement(class_variablesList, class_variablesItem);
    }
    }

    // export_sdtm_variables_table->dataset_variables
    cJSON *dataset_variables = cJSON_GetObjectItemCaseSensitive(export_sdtm_variables_tableJSON, "dataset-variables");
    if (cJSON_IsNull(dataset_variables)) {
        dataset_variables = NULL;
    }
    if (dataset_variables) { 
    cJSON *dataset_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(dataset_variables)){
        goto end; //nonprimitive container
    }

    dataset_variablesList = list_createList();

    cJSON_ArrayForEach(dataset_variables_local_nonprimitive,dataset_variables )
    {
        if(!cJSON_IsObject(dataset_variables_local_nonprimitive)){
            goto end;
        }
        export_sdtm_dataset_variables_row_t *dataset_variablesItem = export_sdtm_dataset_variables_row_parseFromJSON(dataset_variables_local_nonprimitive);

        list_addElement(dataset_variablesList, dataset_variablesItem);
    }
    }


    export_sdtm_variables_table_local_var = export_sdtm_variables_table_create_internal (
        class_variables ? class_variablesList : NULL,
        dataset_variables ? dataset_variablesList : NULL
        );

    return export_sdtm_variables_table_local_var;
end:
    if (class_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, class_variablesList) {
            export_sdtm_class_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(class_variablesList);
        class_variablesList = NULL;
    }
    if (dataset_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataset_variablesList) {
            export_sdtm_dataset_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataset_variablesList);
        dataset_variablesList = NULL;
    }
    return NULL;

}
