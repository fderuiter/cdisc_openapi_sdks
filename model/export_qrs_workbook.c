#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_qrs_workbook.h"



static export_qrs_workbook_t *export_qrs_workbook_create_internal(
    export_qrs_general_t *self,
    list_t *items,
    list_t *responses
    ) {
    export_qrs_workbook_t *export_qrs_workbook_local_var = malloc(sizeof(export_qrs_workbook_t));
    if (!export_qrs_workbook_local_var) {
        return NULL;
    }
    export_qrs_workbook_local_var->self = self;
    export_qrs_workbook_local_var->items = items;
    export_qrs_workbook_local_var->responses = responses;

    export_qrs_workbook_local_var->_library_owned = 1;
    return export_qrs_workbook_local_var;
}

__attribute__((deprecated)) export_qrs_workbook_t *export_qrs_workbook_create(
    export_qrs_general_t *self,
    list_t *items,
    list_t *responses
    ) {
    return export_qrs_workbook_create_internal (
        self,
        items,
        responses
        );
}

void export_qrs_workbook_free(export_qrs_workbook_t *export_qrs_workbook) {
    if(NULL == export_qrs_workbook){
        return ;
    }
    if(export_qrs_workbook->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_qrs_workbook_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_qrs_workbook->self) {
        export_qrs_general_free(export_qrs_workbook->self);
        export_qrs_workbook->self = NULL;
    }
    if (export_qrs_workbook->items) {
        list_ForEach(listEntry, export_qrs_workbook->items) {
            export_qrs_workbook_items_row_free(listEntry->data);
        }
        list_freeList(export_qrs_workbook->items);
        export_qrs_workbook->items = NULL;
    }
    if (export_qrs_workbook->responses) {
        list_ForEach(listEntry, export_qrs_workbook->responses) {
            export_qrs_responses_free(listEntry->data);
        }
        list_freeList(export_qrs_workbook->responses);
        export_qrs_workbook->responses = NULL;
    }
    free(export_qrs_workbook);
}

cJSON *export_qrs_workbook_convertToJSON(export_qrs_workbook_t *export_qrs_workbook) {
    cJSON *item = cJSON_CreateObject();

    // export_qrs_workbook->self
    if(export_qrs_workbook->self) {
    cJSON *self_local_JSON = export_qrs_general_convertToJSON(export_qrs_workbook->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // export_qrs_workbook->items
    if(export_qrs_workbook->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (export_qrs_workbook->items) {
    list_ForEach(itemsListEntry, export_qrs_workbook->items) {
    cJSON *itemLocal = export_qrs_workbook_items_row_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // export_qrs_workbook->responses
    if(export_qrs_workbook->responses) {
    cJSON *responses = cJSON_AddArrayToObject(item, "responses");
    if(responses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *responsesListEntry;
    if (export_qrs_workbook->responses) {
    list_ForEach(responsesListEntry, export_qrs_workbook->responses) {
    cJSON *itemLocal = export_qrs_responses_convertToJSON(responsesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(responses, itemLocal);
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

export_qrs_workbook_t *export_qrs_workbook_parseFromJSON(cJSON *export_qrs_workbookJSON){

    export_qrs_workbook_t *export_qrs_workbook_local_var = NULL;

    // define the local variable for export_qrs_workbook->self
    export_qrs_general_t *self_local_nonprim = NULL;

    // define the local list for export_qrs_workbook->items
    list_t *itemsList = NULL;

    // define the local list for export_qrs_workbook->responses
    list_t *responsesList = NULL;

    // export_qrs_workbook->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(export_qrs_workbookJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = export_qrs_general_parseFromJSON(self); //nonprimitive
    }

    // export_qrs_workbook->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(export_qrs_workbookJSON, "items");
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
        export_qrs_workbook_items_row_t *itemsItem = export_qrs_workbook_items_row_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // export_qrs_workbook->responses
    cJSON *responses = cJSON_GetObjectItemCaseSensitive(export_qrs_workbookJSON, "responses");
    if (cJSON_IsNull(responses)) {
        responses = NULL;
    }
    if (responses) { 
    cJSON *responses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(responses)){
        goto end; //nonprimitive container
    }

    responsesList = list_createList();

    cJSON_ArrayForEach(responses_local_nonprimitive,responses )
    {
        if(!cJSON_IsObject(responses_local_nonprimitive)){
            goto end;
        }
        export_qrs_responses_t *responsesItem = export_qrs_responses_parseFromJSON(responses_local_nonprimitive);

        list_addElement(responsesList, responsesItem);
    }
    }


    export_qrs_workbook_local_var = export_qrs_workbook_create_internal (
        self ? self_local_nonprim : NULL,
        items ? itemsList : NULL,
        responses ? responsesList : NULL
        );

    return export_qrs_workbook_local_var;
end:
    if (self_local_nonprim) {
        export_qrs_general_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            export_qrs_workbook_items_row_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (responsesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, responsesList) {
            export_qrs_responses_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(responsesList);
        responsesList = NULL;
    }
    return NULL;

}
