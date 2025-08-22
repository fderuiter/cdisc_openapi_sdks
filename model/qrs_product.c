#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_product.h"



static qrs_product_t *qrs_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_product_links_t *_links,
    list_t *items
    ) {
    qrs_product_t *qrs_product_local_var = malloc(sizeof(qrs_product_t));
    if (!qrs_product_local_var) {
        return NULL;
    }
    qrs_product_local_var->name = name;
    qrs_product_local_var->label = label;
    qrs_product_local_var->description = description;
    qrs_product_local_var->effective_date = effective_date;
    qrs_product_local_var->until_date = until_date;
    qrs_product_local_var->registration_status = registration_status;
    qrs_product_local_var->version = version;
    qrs_product_local_var->qrs_type = qrs_type;
    qrs_product_local_var->_links = _links;
    qrs_product_local_var->items = items;

    qrs_product_local_var->_library_owned = 1;
    return qrs_product_local_var;
}

__attribute__((deprecated)) qrs_product_t *qrs_product_create(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_product_links_t *_links,
    list_t *items
    ) {
    return qrs_product_create_internal (
        name,
        label,
        description,
        effective_date,
        until_date,
        registration_status,
        version,
        qrs_type,
        _links,
        items
        );
}

void qrs_product_free(qrs_product_t *qrs_product) {
    if(NULL == qrs_product){
        return ;
    }
    if(qrs_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_product->name) {
        free(qrs_product->name);
        qrs_product->name = NULL;
    }
    if (qrs_product->label) {
        free(qrs_product->label);
        qrs_product->label = NULL;
    }
    if (qrs_product->description) {
        free(qrs_product->description);
        qrs_product->description = NULL;
    }
    if (qrs_product->effective_date) {
        free(qrs_product->effective_date);
        qrs_product->effective_date = NULL;
    }
    if (qrs_product->until_date) {
        free(qrs_product->until_date);
        qrs_product->until_date = NULL;
    }
    if (qrs_product->registration_status) {
        free(qrs_product->registration_status);
        qrs_product->registration_status = NULL;
    }
    if (qrs_product->version) {
        free(qrs_product->version);
        qrs_product->version = NULL;
    }
    if (qrs_product->qrs_type) {
        free(qrs_product->qrs_type);
        qrs_product->qrs_type = NULL;
    }
    if (qrs_product->_links) {
        qrs_product_links_free(qrs_product->_links);
        qrs_product->_links = NULL;
    }
    if (qrs_product->items) {
        list_ForEach(listEntry, qrs_product->items) {
            qrs_item_free(listEntry->data);
        }
        list_freeList(qrs_product->items);
        qrs_product->items = NULL;
    }
    free(qrs_product);
}

cJSON *qrs_product_convertToJSON(qrs_product_t *qrs_product) {
    cJSON *item = cJSON_CreateObject();

    // qrs_product->name
    if(qrs_product->name) {
    if(cJSON_AddStringToObject(item, "name", qrs_product->name) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->label
    if(qrs_product->label) {
    if(cJSON_AddStringToObject(item, "label", qrs_product->label) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->description
    if(qrs_product->description) {
    if(cJSON_AddStringToObject(item, "description", qrs_product->description) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->effective_date
    if(qrs_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", qrs_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->until_date
    if(qrs_product->until_date) {
    if(cJSON_AddStringToObject(item, "untilDate", qrs_product->until_date) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->registration_status
    if(qrs_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", qrs_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->version
    if(qrs_product->version) {
    if(cJSON_AddStringToObject(item, "version", qrs_product->version) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->qrs_type
    if(qrs_product->qrs_type) {
    if(cJSON_AddStringToObject(item, "qrsType", qrs_product->qrs_type) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product->_links
    if(qrs_product->_links) {
    cJSON *_links_local_JSON = qrs_product_links_convertToJSON(qrs_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_product->items
    if(qrs_product->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (qrs_product->items) {
    list_ForEach(itemsListEntry, qrs_product->items) {
    cJSON *itemLocal = qrs_item_convertToJSON(itemsListEntry->data);
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

qrs_product_t *qrs_product_parseFromJSON(cJSON *qrs_productJSON){

    qrs_product_t *qrs_product_local_var = NULL;

    // define the local variable for qrs_product->_links
    qrs_product_links_t *_links_local_nonprim = NULL;

    // define the local list for qrs_product->items
    list_t *itemsList = NULL;

    // qrs_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // qrs_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // qrs_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // qrs_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // qrs_product->until_date
    cJSON *until_date = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "untilDate");
    if (cJSON_IsNull(until_date)) {
        until_date = NULL;
    }
    if (until_date) { 
    if(!cJSON_IsString(until_date) && !cJSON_IsNull(until_date))
    {
    goto end; //String
    }
    }

    // qrs_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // qrs_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // qrs_product->qrs_type
    cJSON *qrs_type = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "qrsType");
    if (cJSON_IsNull(qrs_type)) {
        qrs_type = NULL;
    }
    if (qrs_type) { 
    if(!cJSON_IsString(qrs_type) && !cJSON_IsNull(qrs_type))
    {
    goto end; //String
    }
    }

    // qrs_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = qrs_product_links_parseFromJSON(_links); //nonprimitive
    }

    // qrs_product->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(qrs_productJSON, "items");
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
        qrs_item_t *itemsItem = qrs_item_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }


    qrs_product_local_var = qrs_product_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        until_date && !cJSON_IsNull(until_date) ? strdup(until_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        qrs_type && !cJSON_IsNull(qrs_type) ? strdup(qrs_type->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        items ? itemsList : NULL
        );

    return qrs_product_local_var;
end:
    if (_links_local_nonprim) {
        qrs_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            qrs_item_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
