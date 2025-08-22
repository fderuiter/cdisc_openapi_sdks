#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_qrs_items_table.h"



static export_qrs_items_table_t *export_qrs_items_table_create_internal(
    list_t *items
    ) {
    export_qrs_items_table_t *export_qrs_items_table_local_var = malloc(sizeof(export_qrs_items_table_t));
    if (!export_qrs_items_table_local_var) {
        return NULL;
    }
    export_qrs_items_table_local_var->items = items;

    export_qrs_items_table_local_var->_library_owned = 1;
    return export_qrs_items_table_local_var;
}

__attribute__((deprecated)) export_qrs_items_table_t *export_qrs_items_table_create(
    list_t *items
    ) {
    return export_qrs_items_table_create_internal (
        items
        );
}

void export_qrs_items_table_free(export_qrs_items_table_t *export_qrs_items_table) {
    if(NULL == export_qrs_items_table){
        return ;
    }
    if(export_qrs_items_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_qrs_items_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_qrs_items_table->items) {
        list_ForEach(listEntry, export_qrs_items_table->items) {
            export_qrs_csv_items_row_free(listEntry->data);
        }
        list_freeList(export_qrs_items_table->items);
        export_qrs_items_table->items = NULL;
    }
    free(export_qrs_items_table);
}

cJSON *export_qrs_items_table_convertToJSON(export_qrs_items_table_t *export_qrs_items_table) {
    cJSON *item = cJSON_CreateObject();

    // export_qrs_items_table->items
    if(export_qrs_items_table->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (export_qrs_items_table->items) {
    list_ForEach(itemsListEntry, export_qrs_items_table->items) {
    cJSON *itemLocal = export_qrs_csv_items_row_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
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

export_qrs_items_table_t *export_qrs_items_table_parseFromJSON(cJSON *export_qrs_items_tableJSON){

    export_qrs_items_table_t *export_qrs_items_table_local_var = NULL;

    // define the local list for export_qrs_items_table->items
    list_t *itemsList = NULL;

    // export_qrs_items_table->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(export_qrs_items_tableJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        export_qrs_csv_items_row_t *itemsItem = export_qrs_csv_items_row_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }


    export_qrs_items_table_local_var = export_qrs_items_table_create_internal (
        items ? itemsList : NULL
        );

    return export_qrs_items_table_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            export_qrs_csv_items_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
