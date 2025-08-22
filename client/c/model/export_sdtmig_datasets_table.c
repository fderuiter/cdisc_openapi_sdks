#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_sdtmig_datasets_table.h"



static export_sdtmig_datasets_table_t *export_sdtmig_datasets_table_create_internal(
    list_t *datasets
    ) {
    export_sdtmig_datasets_table_t *export_sdtmig_datasets_table_local_var = malloc(sizeof(export_sdtmig_datasets_table_t));
    if (!export_sdtmig_datasets_table_local_var) {
        return NULL;
    }
    export_sdtmig_datasets_table_local_var->datasets = datasets;

    export_sdtmig_datasets_table_local_var->_library_owned = 1;
    return export_sdtmig_datasets_table_local_var;
}

__attribute__((deprecated)) export_sdtmig_datasets_table_t *export_sdtmig_datasets_table_create(
    list_t *datasets
    ) {
    return export_sdtmig_datasets_table_create_internal (
        datasets
        );
}

void export_sdtmig_datasets_table_free(export_sdtmig_datasets_table_t *export_sdtmig_datasets_table) {
    if(NULL == export_sdtmig_datasets_table){
        return ;
    }
    if(export_sdtmig_datasets_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_sdtmig_datasets_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_sdtmig_datasets_table->datasets) {
        list_ForEach(listEntry, export_sdtmig_datasets_table->datasets) {
            export_sdtmig_datasets_row_free(listEntry->data);
        }
        list_freeList(export_sdtmig_datasets_table->datasets);
        export_sdtmig_datasets_table->datasets = NULL;
    }
    free(export_sdtmig_datasets_table);
}

cJSON *export_sdtmig_datasets_table_convertToJSON(export_sdtmig_datasets_table_t *export_sdtmig_datasets_table) {
    cJSON *item = cJSON_CreateObject();

    // export_sdtmig_datasets_table->datasets
    if(export_sdtmig_datasets_table->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (export_sdtmig_datasets_table->datasets) {
    list_ForEach(datasetsListEntry, export_sdtmig_datasets_table->datasets) {
    cJSON *itemLocal = export_sdtmig_datasets_row_convertToJSON(datasetsListEntry->data);
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

export_sdtmig_datasets_table_t *export_sdtmig_datasets_table_parseFromJSON(cJSON *export_sdtmig_datasets_tableJSON){

    export_sdtmig_datasets_table_t *export_sdtmig_datasets_table_local_var = NULL;

    // define the local list for export_sdtmig_datasets_table->datasets
    list_t *datasetsList = NULL;

    // export_sdtmig_datasets_table->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(export_sdtmig_datasets_tableJSON, "datasets");
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
        export_sdtmig_datasets_row_t *datasetsItem = export_sdtmig_datasets_row_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    export_sdtmig_datasets_table_local_var = export_sdtmig_datasets_table_create_internal (
        datasets ? datasetsList : NULL
        );

    return export_sdtmig_datasets_table_local_var;
end:
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            export_sdtmig_datasets_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
