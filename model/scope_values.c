#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "scope_values.h"



static scope_values_t *scope_values_create_internal(
    double total,
    int has_more,
    list_t *values
    ) {
    scope_values_t *scope_values_local_var = malloc(sizeof(scope_values_t));
    if (!scope_values_local_var) {
        return NULL;
    }
    scope_values_local_var->total = total;
    scope_values_local_var->has_more = has_more;
    scope_values_local_var->values = values;

    scope_values_local_var->_library_owned = 1;
    return scope_values_local_var;
}

__attribute__((deprecated)) scope_values_t *scope_values_create(
    double total,
    int has_more,
    list_t *values
    ) {
    return scope_values_create_internal (
        total,
        has_more,
        values
        );
}

void scope_values_free(scope_values_t *scope_values) {
    if(NULL == scope_values){
        return ;
    }
    if(scope_values->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "scope_values_free");
        return ;
    }
    listEntry_t *listEntry;
    if (scope_values->values) {
        list_ForEach(listEntry, scope_values->values) {
            free(listEntry->data);
        }
        list_freeList(scope_values->values);
        scope_values->values = NULL;
    }
    free(scope_values);
}

cJSON *scope_values_convertToJSON(scope_values_t *scope_values) {
    cJSON *item = cJSON_CreateObject();

    // scope_values->total
    if(scope_values->total) {
    if(cJSON_AddNumberToObject(item, "total", scope_values->total) == NULL) {
    goto fail; //Numeric
    }
    }


    // scope_values->has_more
    if(scope_values->has_more) {
    if(cJSON_AddBoolToObject(item, "hasMore", scope_values->has_more) == NULL) {
    goto fail; //Bool
    }
    }


    // scope_values->values
    if(scope_values->values) {
    cJSON *values = cJSON_AddArrayToObject(item, "values");
    if(values == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *valuesListEntry;
    list_ForEach(valuesListEntry, scope_values->values) {
    if(cJSON_AddStringToObject(values, "", valuesListEntry->data) == NULL)
    {
        goto fail;
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

scope_values_t *scope_values_parseFromJSON(cJSON *scope_valuesJSON){

    scope_values_t *scope_values_local_var = NULL;

    // define the local list for scope_values->values
    list_t *valuesList = NULL;

    // scope_values->total
    cJSON *total = cJSON_GetObjectItemCaseSensitive(scope_valuesJSON, "total");
    if (cJSON_IsNull(total)) {
        total = NULL;
    }
    if (total) { 
    if(!cJSON_IsNumber(total))
    {
    goto end; //Numeric
    }
    }

    // scope_values->has_more
    cJSON *has_more = cJSON_GetObjectItemCaseSensitive(scope_valuesJSON, "hasMore");
    if (cJSON_IsNull(has_more)) {
        has_more = NULL;
    }
    if (has_more) { 
    if(!cJSON_IsBool(has_more))
    {
    goto end; //Bool
    }
    }

    // scope_values->values
    cJSON *values = cJSON_GetObjectItemCaseSensitive(scope_valuesJSON, "values");
    if (cJSON_IsNull(values)) {
        values = NULL;
    }
    if (values) { 
    cJSON *values_local = NULL;
    if(!cJSON_IsArray(values)) {
        goto end;//primitive container
    }
    valuesList = list_createList();

    cJSON_ArrayForEach(values_local, values)
    {
        if(!cJSON_IsString(values_local))
        {
            goto end;
        }
        list_addElement(valuesList , strdup(values_local->valuestring));
    }
    }


    scope_values_local_var = scope_values_create_internal (
        total ? total->valuedouble : 0,
        has_more ? has_more->valueint : 0,
        values ? valuesList : NULL
        );

    return scope_values_local_var;
end:
    if (valuesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, valuesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(valuesList);
        valuesList = NULL;
    }
    return NULL;

}
