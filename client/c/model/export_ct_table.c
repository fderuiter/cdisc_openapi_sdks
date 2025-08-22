#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_ct_table.h"



static export_ct_table_t *export_ct_table_create_internal(
    list_t *ct
    ) {
    export_ct_table_t *export_ct_table_local_var = malloc(sizeof(export_ct_table_t));
    if (!export_ct_table_local_var) {
        return NULL;
    }
    export_ct_table_local_var->ct = ct;

    export_ct_table_local_var->_library_owned = 1;
    return export_ct_table_local_var;
}

__attribute__((deprecated)) export_ct_table_t *export_ct_table_create(
    list_t *ct
    ) {
    return export_ct_table_create_internal (
        ct
        );
}

void export_ct_table_free(export_ct_table_t *export_ct_table) {
    if(NULL == export_ct_table){
        return ;
    }
    if(export_ct_table->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_ct_table_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_ct_table->ct) {
        list_ForEach(listEntry, export_ct_table->ct) {
            export_ct_codelist_free(listEntry->data);
        }
        list_freeList(export_ct_table->ct);
        export_ct_table->ct = NULL;
    }
    free(export_ct_table);
}

cJSON *export_ct_table_convertToJSON(export_ct_table_t *export_ct_table) {
    cJSON *item = cJSON_CreateObject();

    // export_ct_table->ct
    if(export_ct_table->ct) {
    cJSON *ct = cJSON_AddArrayToObject(item, "ct");
    if(ct == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *ctListEntry;
    if (export_ct_table->ct) {
    list_ForEach(ctListEntry, export_ct_table->ct) {
    cJSON *itemLocal = export_ct_codelist_convertToJSON(ctListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(ct, itemLocal);
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

export_ct_table_t *export_ct_table_parseFromJSON(cJSON *export_ct_tableJSON){

    export_ct_table_t *export_ct_table_local_var = NULL;

    // define the local list for export_ct_table->ct
    list_t *ctList = NULL;

    // export_ct_table->ct
    cJSON *ct = cJSON_GetObjectItemCaseSensitive(export_ct_tableJSON, "ct");
    if (cJSON_IsNull(ct)) {
        ct = NULL;
    }
    if (ct) { 
    cJSON *ct_local_nonprimitive = NULL;
    if(!cJSON_IsArray(ct)){
        goto end; //nonprimitive container
    }

    ctList = list_createList();

    cJSON_ArrayForEach(ct_local_nonprimitive,ct )
    {
        if(!cJSON_IsObject(ct_local_nonprimitive)){
            goto end;
        }
        export_ct_codelist_t *ctItem = export_ct_codelist_parseFromJSON(ct_local_nonprimitive);

        list_addElement(ctList, ctItem);
    }
    }


    export_ct_table_local_var = export_ct_table_create_internal (
        ct ? ctList : NULL
        );

    return export_ct_table_local_var;
end:
    if (ctList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, ctList) {
            export_ct_codelist_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(ctList);
        ctList = NULL;
    }
    return NULL;

}
