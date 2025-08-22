#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sendig_workbook.h"



static export_sendig_workbook_t *export_sendig_workbook_create_internal(
    list_t *variables,
    list_t *datasets
    ) {
    export_sendig_workbook_t *export_sendig_workbook_local_var = malloc(sizeof(export_sendig_workbook_t));
    if (!export_sendig_workbook_local_var) {
        return NULL;
    }
    export_sendig_workbook_local_var->variables = variables;
    export_sendig_workbook_local_var->datasets = datasets;

    export_sendig_workbook_local_var->_library_owned = 1;
    return export_sendig_workbook_local_var;
}

__attribute__((deprecated)) export_sendig_workbook_t *export_sendig_workbook_create(
    list_t *variables,
    list_t *datasets
    ) {
    return export_sendig_workbook_create_internal (
        variables,
        datasets
        );
}

void export_sendig_workbook_free(export_sendig_workbook_t *export_sendig_workbook) {
    if(NULL == export_sendig_workbook){
        return ;
    }
    if(export_sendig_workbook->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sendig_workbook_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sendig_workbook->variables) {
        list_ForEach(listEntry, export_sendig_workbook->variables) {
            export_sendig_variables_row_free(listEntry->data);
        }
        list_freeList(export_sendig_workbook->variables);
        export_sendig_workbook->variables = NULL;
    }
    if (export_sendig_workbook->datasets) {
        list_ForEach(listEntry, export_sendig_workbook->datasets) {
            export_sendig_datasets_row_free(listEntry->data);
        }
        list_freeList(export_sendig_workbook->datasets);
        export_sendig_workbook->datasets = NULL;
    }
    free(export_sendig_workbook);
}

cJSON *export_sendig_workbook_convertToJSON(export_sendig_workbook_t *export_sendig_workbook) {
    cJSON *item = cJSON_CreateObject();

    // export_sendig_workbook->variables
    if(export_sendig_workbook->variables) {
    cJSON *variables = cJSON_AddArrayToObject(item, "variables");
    if(variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *variablesListEntry;
    if (export_sendig_workbook->variables) {
    list_ForEach(variablesListEntry, export_sendig_workbook->variables) {
    cJSON *itemLocal = export_sendig_variables_row_convertToJSON(variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(variables, itemLocal);
    }
    }
    }


    // export_sendig_workbook->datasets
    if(export_sendig_workbook->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (export_sendig_workbook->datasets) {
    list_ForEach(datasetsListEntry, export_sendig_workbook->datasets) {
    cJSON *itemLocal = export_sendig_datasets_row_convertToJSON(datasetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(datasets, itemLocal);
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

export_sendig_workbook_t *export_sendig_workbook_parseFromJSON(cJSON *export_sendig_workbookJSON){

    export_sendig_workbook_t *export_sendig_workbook_local_var = NULL;

    // define the local list for export_sendig_workbook->variables
    list_t *variablesList = NULL;

    // define the local list for export_sendig_workbook->datasets
    list_t *datasetsList = NULL;

    // export_sendig_workbook->variables
    cJSON *variables = cJSON_GetObjectItemCaseSensitive(export_sendig_workbookJSON, "variables");
    if (cJSON_IsNull(variables)) {
        variables = NULL;
    }
    if (variables) { 
    cJSON *variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(variables)){
        goto end; //nonprimitive container
    }

    variablesList = list_createList();

    cJSON_ArrayForEach(variables_local_nonprimitive,variables )
    {
        if(!cJSON_IsObject(variables_local_nonprimitive)){
            goto end;
        }
        export_sendig_variables_row_t *variablesItem = export_sendig_variables_row_parseFromJSON(variables_local_nonprimitive);

        list_addElement(variablesList, variablesItem);
    }
    }

    // export_sendig_workbook->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(export_sendig_workbookJSON, "datasets");
    if (cJSON_IsNull(datasets)) {
        datasets = NULL;
    }
    if (datasets) { 
    cJSON *datasets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(datasets)){
        goto end; //nonprimitive container
    }

    datasetsList = list_createList();

    cJSON_ArrayForEach(datasets_local_nonprimitive,datasets )
    {
        if(!cJSON_IsObject(datasets_local_nonprimitive)){
            goto end;
        }
        export_sendig_datasets_row_t *datasetsItem = export_sendig_datasets_row_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    export_sendig_workbook_local_var = export_sendig_workbook_create_internal (
        variables ? variablesList : NULL,
        datasets ? datasetsList : NULL
        );

    return export_sendig_workbook_local_var;
end:
    if (variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, variablesList) {
            export_sendig_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(variablesList);
        variablesList = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            export_sendig_datasets_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
