#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_cdash_table.h"



static export_cdash_table_t *export_cdash_table_create_internal(
    list_t *class_variables,
    list_t *domain_variables
    ) {
    export_cdash_table_t *export_cdash_table_local_var = malloc(sizeof(export_cdash_table_t));
    if (!export_cdash_table_local_var) {
        return NULL;
    }
    export_cdash_table_local_var->class_variables = class_variables;
    export_cdash_table_local_var->domain_variables = domain_variables;

    export_cdash_table_local_var->_library_owned = 1;
    return export_cdash_table_local_var;
}

__attribute__((deprecated)) export_cdash_table_t *export_cdash_table_create(
    list_t *class_variables,
    list_t *domain_variables
    ) {
    return export_cdash_table_create_internal (
        class_variables,
        domain_variables
        );
}

void export_cdash_table_free(export_cdash_table_t *export_cdash_table) {
    if(NULL == export_cdash_table){
        return ;
    }
    if(export_cdash_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_cdash_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_cdash_table->class_variables) {
        list_ForEach(listEntry, export_cdash_table->class_variables) {
            export_cdash_class_variables_row_free(listEntry->data);
        }
        list_freeList(export_cdash_table->class_variables);
        export_cdash_table->class_variables = NULL;
    }
    if (export_cdash_table->domain_variables) {
        list_ForEach(listEntry, export_cdash_table->domain_variables) {
            export_cdash_domain_variables_row_free(listEntry->data);
        }
        list_freeList(export_cdash_table->domain_variables);
        export_cdash_table->domain_variables = NULL;
    }
    free(export_cdash_table);
}

cJSON *export_cdash_table_convertToJSON(export_cdash_table_t *export_cdash_table) {
    cJSON *item = cJSON_CreateObject();

    // export_cdash_table->class_variables
    if(export_cdash_table->class_variables) {
    cJSON *class_variables = cJSON_AddArrayToObject(item, "class-variables");
    if(class_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *class_variablesListEntry;
    if (export_cdash_table->class_variables) {
    list_ForEach(class_variablesListEntry, export_cdash_table->class_variables) {
    cJSON *itemLocal = export_cdash_class_variables_row_convertToJSON(class_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(class_variables, itemLocal);
    }
    }
    }


    // export_cdash_table->domain_variables
    if(export_cdash_table->domain_variables) {
    cJSON *domain_variables = cJSON_AddArrayToObject(item, "domain-variables");
    if(domain_variables == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domain_variablesListEntry;
    if (export_cdash_table->domain_variables) {
    list_ForEach(domain_variablesListEntry, export_cdash_table->domain_variables) {
    cJSON *itemLocal = export_cdash_domain_variables_row_convertToJSON(domain_variablesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(domain_variables, itemLocal);
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

export_cdash_table_t *export_cdash_table_parseFromJSON(cJSON *export_cdash_tableJSON){

    export_cdash_table_t *export_cdash_table_local_var = NULL;

    // define the local list for export_cdash_table->class_variables
    list_t *class_variablesList = NULL;

    // define the local list for export_cdash_table->domain_variables
    list_t *domain_variablesList = NULL;

    // export_cdash_table->class_variables
    cJSON *class_variables = cJSON_GetObjectItemCaseSensitive(export_cdash_tableJSON, "class-variables");
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
        export_cdash_class_variables_row_t *class_variablesItem = export_cdash_class_variables_row_parseFromJSON(class_variables_local_nonprimitive);

        list_addElement(class_variablesList, class_variablesItem);
    }
    }

    // export_cdash_table->domain_variables
    cJSON *domain_variables = cJSON_GetObjectItemCaseSensitive(export_cdash_tableJSON, "domain-variables");
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
        export_cdash_domain_variables_row_t *domain_variablesItem = export_cdash_domain_variables_row_parseFromJSON(domain_variables_local_nonprimitive);

        list_addElement(domain_variablesList, domain_variablesItem);
    }
    }


    export_cdash_table_local_var = export_cdash_table_create_internal (
        class_variables ? class_variablesList : NULL,
        domain_variables ? domain_variablesList : NULL
        );

    return export_cdash_table_local_var;
end:
    if (class_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, class_variablesList) {
            export_cdash_class_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(class_variablesList);
        class_variablesList = NULL;
    }
    if (domain_variablesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, domain_variablesList) {
            export_cdash_domain_variables_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(domain_variablesList);
        domain_variablesList = NULL;
    }
    return NULL;

}
