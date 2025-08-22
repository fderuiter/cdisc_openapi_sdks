#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sendig_variables_table.h"



static export_sendig_variables_table_t *export_sendig_variables_table_create_internal(
    list_t *variables
    ) {
    export_sendig_variables_table_t *export_sendig_variables_table_local_var = malloc(sizeof(export_sendig_variables_table_t));
    if (!export_sendig_variables_table_local_var) {
        return NULL;
    }
    export_sendig_variables_table_local_var->variables = variables;

    export_sendig_variables_table_local_var->_library_owned = 1;
    return export_sendig_variables_table_local_var;
}

__attribute__((deprecated)) export_sendig_variables_table_t *export_sendig_variables_table_create(
    list_t *variables
    ) {
    return export_sendig_variables_table_create_internal (
        variables
        );
}

void export_sendig_variables_table_free(export_sendig_variables_table_t *export_sendig_variables_table) {
    if(NULL == export_sendig_variables_table){
        return ;
    }
    if(export_sendig_variables_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sendig_variables_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sendig_variables_table->variables) {
        list_ForEach(listEntry, export_sendig_variables_table->variables) {
            export_sendig_variables_row_free(listEntry->data);
        }
        list_freeList(export_sendig_variables_table->variables);
        export_sendig_variables_table->variables = NULL;
    }
    free(export_sendig_variables_table);
}

cJSON *export_sendig_variables_table_convertToJSON(export_sendig_variables_table_t *export_sendig_variables_table) {
    cJSON *item = cJSON_CreateObject();

    // export_sendig_variables_table->variables
    if(export_sendig_variables_table->variables) {
    cJSON *variables = cJSON_AddArrayToObject(item, "variables");
    if(variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *variablesListEntry;
    if (export_sendig_variables_table->variables) {
    list_ForEach(variablesListEntry, export_sendig_variables_table->variables) {
    cJSON *itemLocal = export_sendig_variables_row_convertToJSON(variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(variables, itemLocal);
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

export_sendig_variables_table_t *export_sendig_variables_table_parseFromJSON(cJSON *export_sendig_variables_tableJSON){

    export_sendig_variables_table_t *export_sendig_variables_table_local_var = NULL;

    // define the local list for export_sendig_variables_table->variables
    list_t *variablesList = NULL;

    // export_sendig_variables_table->variables
    cJSON *variables = cJSON_GetObjectItemCaseSensitive(export_sendig_variables_tableJSON, "variables");
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


    export_sendig_variables_table_local_var = export_sendig_variables_table_create_internal (
        variables ? variablesList : NULL
        );

    return export_sendig_variables_table_local_var;
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
    return NULL;

}
