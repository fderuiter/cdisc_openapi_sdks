#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_adam_datastructures_table.h"



static export_adam_datastructures_table_t *export_adam_datastructures_table_create_internal(
    list_t *datastructures
    ) {
    export_adam_datastructures_table_t *export_adam_datastructures_table_local_var = malloc(sizeof(export_adam_datastructures_table_t));
    if (!export_adam_datastructures_table_local_var) {
        return NULL;
    }
    export_adam_datastructures_table_local_var->datastructures = datastructures;

    export_adam_datastructures_table_local_var->_library_owned = 1;
    return export_adam_datastructures_table_local_var;
}

__attribute__((deprecated)) export_adam_datastructures_table_t *export_adam_datastructures_table_create(
    list_t *datastructures
    ) {
    return export_adam_datastructures_table_create_internal (
        datastructures
        );
}

void export_adam_datastructures_table_free(export_adam_datastructures_table_t *export_adam_datastructures_table) {
    if(NULL == export_adam_datastructures_table){
        return ;
    }
    if(export_adam_datastructures_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_adam_datastructures_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_adam_datastructures_table->datastructures) {
        list_ForEach(listEntry, export_adam_datastructures_table->datastructures) {
            export_adam_datastructures_row_free(listEntry->data);
        }
        list_freeList(export_adam_datastructures_table->datastructures);
        export_adam_datastructures_table->datastructures = NULL;
    }
    free(export_adam_datastructures_table);
}

cJSON *export_adam_datastructures_table_convertToJSON(export_adam_datastructures_table_t *export_adam_datastructures_table) {
    cJSON *item = cJSON_CreateObject();

    // export_adam_datastructures_table->datastructures
    if(export_adam_datastructures_table->datastructures) {
    cJSON *datastructures = cJSON_AddArrayToObject(item, "datastructures");
    if(datastructures == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datastructuresListEntry;
    if (export_adam_datastructures_table->datastructures) {
    list_ForEach(datastructuresListEntry, export_adam_datastructures_table->datastructures) {
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

export_adam_datastructures_table_t *export_adam_datastructures_table_parseFromJSON(cJSON *export_adam_datastructures_tableJSON){

    export_adam_datastructures_table_t *export_adam_datastructures_table_local_var = NULL;

    // define the local list for export_adam_datastructures_table->datastructures
    list_t *datastructuresList = NULL;

    // export_adam_datastructures_table->datastructures
    cJSON *datastructures = cJSON_GetObjectItemCaseSensitive(export_adam_datastructures_tableJSON, "datastructures");
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


    export_adam_datastructures_table_local_var = export_adam_datastructures_table_create_internal (
        datastructures ? datastructuresList : NULL
        );

    return export_adam_datastructures_table_local_var;
end:
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
