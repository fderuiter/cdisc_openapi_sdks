#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_cdashig_table.h"



static export_cdashig_table_t *export_cdashig_table_create_internal(
    list_t *domain_variables,
    list_t *scenario_variables
    ) {
    export_cdashig_table_t *export_cdashig_table_local_var = malloc(sizeof(export_cdashig_table_t));
    if (!export_cdashig_table_local_var) {
        return NULL;
    }
    export_cdashig_table_local_var->domain_variables = domain_variables;
    export_cdashig_table_local_var->scenario_variables = scenario_variables;

    export_cdashig_table_local_var->_library_owned = 1;
    return export_cdashig_table_local_var;
}

__attribute__((deprecated)) export_cdashig_table_t *export_cdashig_table_create(
    list_t *domain_variables,
    list_t *scenario_variables
    ) {
    return export_cdashig_table_create_internal (
        domain_variables,
        scenario_variables
        );
}

void export_cdashig_table_free(export_cdashig_table_t *export_cdashig_table) {
    if(NULL == export_cdashig_table){
        return ;
    }
    if(export_cdashig_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_cdashig_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_cdashig_table->domain_variables) {
        list_ForEach(listEntry, export_cdashig_table->domain_variables) {
            export_cdashig_domain_variables_row_free(listEntry->data);
        }
        list_freeList(export_cdashig_table->domain_variables);
        export_cdashig_table->domain_variables = NULL;
    }
    if (export_cdashig_table->scenario_variables) {
        list_ForEach(listEntry, export_cdashig_table->scenario_variables) {
            export_cdashig_scenario_variables_row_free(listEntry->data);
        }
        list_freeList(export_cdashig_table->scenario_variables);
        export_cdashig_table->scenario_variables = NULL;
    }
    free(export_cdashig_table);
}

cJSON *export_cdashig_table_convertToJSON(export_cdashig_table_t *export_cdashig_table) {
    cJSON *item = cJSON_CreateObject();

    // export_cdashig_table->domain_variables
    if(export_cdashig_table->domain_variables) {
    cJSON *domain_variables = cJSON_AddArrayToObject(item, "domain-variables");
    if(domain_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domain_variablesListEntry;
    if (export_cdashig_table->domain_variables) {
    list_ForEach(domain_variablesListEntry, export_cdashig_table->domain_variables) {
    cJSON *itemLocal = export_cdashig_domain_variables_row_convertToJSON(domain_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(domain_variables, itemLocal);
    }
    }
    }


    // export_cdashig_table->scenario_variables
    if(export_cdashig_table->scenario_variables) {
    cJSON *scenario_variables = cJSON_AddArrayToObject(item, "scenario-variables");
    if(scenario_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *scenario_variablesListEntry;
    if (export_cdashig_table->scenario_variables) {
    list_ForEach(scenario_variablesListEntry, export_cdashig_table->scenario_variables) {
    cJSON *itemLocal = export_cdashig_scenario_variables_row_convertToJSON(scenario_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(scenario_variables, itemLocal);
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

export_cdashig_table_t *export_cdashig_table_parseFromJSON(cJSON *export_cdashig_tableJSON){

    export_cdashig_table_t *export_cdashig_table_local_var = NULL;

    // define the local list for export_cdashig_table->domain_variables
    list_t *domain_variablesList = NULL;

    // define the local list for export_cdashig_table->scenario_variables
    list_t *scenario_variablesList = NULL;

    // export_cdashig_table->domain_variables
    cJSON *domain_variables = cJSON_GetObjectItemCaseSensitive(export_cdashig_tableJSON, "domain-variables");
    if (cJSON_IsNull(domain_variables)) {
        domain_variables = NULL;
    }
    if (domain_variables) { 
    cJSON *domain_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(domain_variables)){
        goto end; //nonprimitive container
    }

    domain_variablesList = list_createList();

    cJSON_ArrayForEach(domain_variables_local_nonprimitive,domain_variables )
    {
        if(!cJSON_IsObject(domain_variables_local_nonprimitive)){
            goto end;
        }
        export_cdashig_domain_variables_row_t *domain_variablesItem = export_cdashig_domain_variables_row_parseFromJSON(domain_variables_local_nonprimitive);

        list_addElement(domain_variablesList, domain_variablesItem);
    }
    }

    // export_cdashig_table->scenario_variables
    cJSON *scenario_variables = cJSON_GetObjectItemCaseSensitive(export_cdashig_tableJSON, "scenario-variables");
    if (cJSON_IsNull(scenario_variables)) {
        scenario_variables = NULL;
    }
    if (scenario_variables) { 
    cJSON *scenario_variables_local_nonprimitive = NULL;
    if(!cJSON_IsArray(scenario_variables)){
        goto end; //nonprimitive container
    }

    scenario_variablesList = list_createList();

    cJSON_ArrayForEach(scenario_variables_local_nonprimitive,scenario_variables )
    {
        if(!cJSON_IsObject(scenario_variables_local_nonprimitive)){
            goto end;
        }
        export_cdashig_scenario_variables_row_t *scenario_variablesItem = export_cdashig_scenario_variables_row_parseFromJSON(scenario_variables_local_nonprimitive);

        list_addElement(scenario_variablesList, scenario_variablesItem);
    }
    }


    export_cdashig_table_local_var = export_cdashig_table_create_internal (
        domain_variables ? domain_variablesList : NULL,
        scenario_variables ? scenario_variablesList : NULL
        );

    return export_cdashig_table_local_var;
end:
    if (domain_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, domain_variablesList) {
            export_cdashig_domain_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(domain_variablesList);
        domain_variablesList = NULL;
    }
    if (scenario_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, scenario_variablesList) {
            export_cdashig_scenario_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(scenario_variablesList);
        scenario_variablesList = NULL;
    }
    return NULL;

}
