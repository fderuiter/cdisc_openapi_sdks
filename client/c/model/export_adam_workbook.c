#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_adam_workbook.h"



static export_adam_workbook_t *export_adam_workbook_create_internal(
    list_t *variables,
    list_t *datastructures
    ) {
    export_adam_workbook_t *export_adam_workbook_local_var = malloc(sizeof(export_adam_workbook_t));
    if (!export_adam_workbook_local_var) {
        return NULL;
    }
    export_adam_workbook_local_var->variables = variables;
    export_adam_workbook_local_var->datastructures = datastructures;

    export_adam_workbook_local_var->_library_owned = 1;
    return export_adam_workbook_local_var;
}

__attribute__((deprecated)) export_adam_workbook_t *export_adam_workbook_create(
    list_t *variables,
    list_t *datastructures
    ) {
    return export_adam_workbook_create_internal (
        variables,
        datastructures
        );
}

void export_adam_workbook_free(export_adam_workbook_t *export_adam_workbook) {
    if(NULL == export_adam_workbook){
        return ;
    }
    if(export_adam_workbook->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_adam_workbook_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_adam_workbook->variables) {
        list_ForEach(listEntry, export_adam_workbook->variables) {
            export_adam_variables_row_free(listEntry->data);
        }
        list_freeList(export_adam_workbook->variables);
        export_adam_workbook->variables = NULL;
    }
    if (export_adam_workbook->datastructures) {
        list_ForEach(listEntry, export_adam_workbook->datastructures) {
            export_adam_datastructures_row_free(listEntry->data);
        }
        list_freeList(export_adam_workbook->datastructures);
        export_adam_workbook->datastructures = NULL;
    }
    free(export_adam_workbook);
}

cJSON *export_adam_workbook_convertToJSON(export_adam_workbook_t *export_adam_workbook) {
    cJSON *item = cJSON_CreateObject();

    // export_adam_workbook->variables
    if(export_adam_workbook->variables) {
    cJSON *variables = cJSON_AddArrayToObject(item, "variables");
    if(variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *variablesListEntry;
    if (export_adam_workbook->variables) {
    list_ForEach(variablesListEntry, export_adam_workbook->variables) {
    cJSON *itemLocal = export_adam_variables_row_convertToJSON(variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(variables, itemLocal);
    }
    }
    }


    // export_adam_workbook->datastructures
    if(export_adam_workbook->datastructures) {
    cJSON *datastructures = cJSON_AddArrayToObject(item, "datastructures");
    if(datastructures == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datastructuresListEntry;
    if (export_adam_workbook->datastructures) {
    list_ForEach(datastructuresListEntry, export_adam_workbook->datastructures) {
    cJSON *itemLocal = export_adam_datastructures_row_convertToJSON(datastructuresListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(datastructures, itemLocal);
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

export_adam_workbook_t *export_adam_workbook_parseFromJSON(cJSON *export_adam_workbookJSON){

    export_adam_workbook_t *export_adam_workbook_local_var = NULL;

    // define the local list for export_adam_workbook->variables
    list_t *variablesList = NULL;

    // define the local list for export_adam_workbook->datastructures
    list_t *datastructuresList = NULL;

    // export_adam_workbook->variables
    cJSON *variables = cJSON_GetObjectItemCaseSensitive(export_adam_workbookJSON, "variables");
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
        export_adam_variables_row_t *variablesItem = export_adam_variables_row_parseFromJSON(variables_local_nonprimitive);

        list_addElement(variablesList, variablesItem);
    }
    }

    // export_adam_workbook->datastructures
    cJSON *datastructures = cJSON_GetObjectItemCaseSensitive(export_adam_workbookJSON, "datastructures");
    if (cJSON_IsNull(datastructures)) {
        datastructures = NULL;
    }
    if (datastructures) { 
    cJSON *datastructures_local_nonprimitive = NULL;
    if(!cJSON_IsArray(datastructures)){
        goto end; //nonprimitive container
    }

    datastructuresList = list_createList();

    cJSON_ArrayForEach(datastructures_local_nonprimitive,datastructures )
    {
        if(!cJSON_IsObject(datastructures_local_nonprimitive)){
            goto end;
        }
        export_adam_datastructures_row_t *datastructuresItem = export_adam_datastructures_row_parseFromJSON(datastructures_local_nonprimitive);

        list_addElement(datastructuresList, datastructuresItem);
    }
    }


    export_adam_workbook_local_var = export_adam_workbook_create_internal (
        variables ? variablesList : NULL,
        datastructures ? datastructuresList : NULL
        );

    return export_adam_workbook_local_var;
end:
    if (variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, variablesList) {
            export_adam_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(variablesList);
        variablesList = NULL;
    }
    if (datastructuresList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datastructuresList) {
            export_adam_datastructures_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datastructuresList);
        datastructuresList = NULL;
    }
    return NULL;

}
