#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_product.h"



static adam_product_t *adam_product_create_internal(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    adam_product_links_t *_links,
    list_t *data_structures
    ) {
    adam_product_t *adam_product_local_var = malloc(sizeof(adam_product_t));
    if (!adam_product_local_var) {
        return NULL;
    }
    adam_product_local_var->name = name;
    adam_product_local_var->label = label;
    adam_product_local_var->description = description;
    adam_product_local_var->source = source;
    adam_product_local_var->effective_date = effective_date;
    adam_product_local_var->registration_status = registration_status;
    adam_product_local_var->version = version;
    adam_product_local_var->_links = _links;
    adam_product_local_var->data_structures = data_structures;

    adam_product_local_var->_library_owned = 1;
    return adam_product_local_var;
}

__attribute__((deprecated)) adam_product_t *adam_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    adam_product_links_t *_links,
    list_t *data_structures
    ) {
    return adam_product_create_internal (
        name,
        label,
        description,
        source,
        effective_date,
        registration_status,
        version,
        _links,
        data_structures
        );
}

void adam_product_free(adam_product_t *adam_product) {
    if(NULL == adam_product){
        return ;
    }
    if(adam_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_product->name) {
        free(adam_product->name);
        adam_product->name = NULL;
    }
    if (adam_product->label) {
        free(adam_product->label);
        adam_product->label = NULL;
    }
    if (adam_product->description) {
        free(adam_product->description);
        adam_product->description = NULL;
    }
    if (adam_product->source) {
        free(adam_product->source);
        adam_product->source = NULL;
    }
    if (adam_product->effective_date) {
        free(adam_product->effective_date);
        adam_product->effective_date = NULL;
    }
    if (adam_product->registration_status) {
        free(adam_product->registration_status);
        adam_product->registration_status = NULL;
    }
    if (adam_product->version) {
        free(adam_product->version);
        adam_product->version = NULL;
    }
    if (adam_product->_links) {
        adam_product_links_free(adam_product->_links);
        adam_product->_links = NULL;
    }
    if (adam_product->data_structures) {
        list_ForEach(listEntry, adam_product->data_structures) {
            adam_datastructure_free(listEntry->data);
        }
        list_freeList(adam_product->data_structures);
        adam_product->data_structures = NULL;
    }
    free(adam_product);
}

cJSON *adam_product_convertToJSON(adam_product_t *adam_product) {
    cJSON *item = cJSON_CreateObject();

    // adam_product->name
    if(adam_product->name) {
    if(cJSON_AddStringToObject(item, "name", adam_product->name) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->label
    if(adam_product->label) {
    if(cJSON_AddStringToObject(item, "label", adam_product->label) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->description
    if(adam_product->description) {
    if(cJSON_AddStringToObject(item, "description", adam_product->description) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->source
    if(adam_product->source) {
    if(cJSON_AddStringToObject(item, "source", adam_product->source) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->effective_date
    if(adam_product->effective_date) {
    if(cJSON_AddStringToObject(item, "effectiveDate", adam_product->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->registration_status
    if(adam_product->registration_status) {
    if(cJSON_AddStringToObject(item, "registrationStatus", adam_product->registration_status) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->version
    if(adam_product->version) {
    if(cJSON_AddStringToObject(item, "version", adam_product->version) == NULL) {
    goto fail; //String
    }
    }


    // adam_product->_links
    if(adam_product->_links) {
    cJSON *_links_local_JSON = adam_product_links_convertToJSON(adam_product->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_product->data_structures
    if(adam_product->data_structures) {
    cJSON *data_structures = cJSON_AddArrayToObject(item, "dataStructures");
    if(data_structures == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *data_structuresListEntry;
    if (adam_product->data_structures) {
    list_ForEach(data_structuresListEntry, adam_product->data_structures) {
    cJSON *itemLocal = adam_datastructure_convertToJSON(data_structuresListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data_structures, itemLocal);
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

adam_product_t *adam_product_parseFromJSON(cJSON *adam_productJSON){

    adam_product_t *adam_product_local_var = NULL;

    // define the local variable for adam_product->_links
    adam_product_links_t *_links_local_nonprim = NULL;

    // define the local list for adam_product->data_structures
    list_t *data_structuresList = NULL;

    // adam_product->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // adam_product->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // adam_product->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // adam_product->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // adam_product->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "effectiveDate");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // adam_product->registration_status
    cJSON *registration_status = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "registrationStatus");
    if (cJSON_IsNull(registration_status)) {
        registration_status = NULL;
    }
    if (registration_status) { 
    if(!cJSON_IsString(registration_status) && !cJSON_IsNull(registration_status))
    {
    goto end; //String
    }
    }

    // adam_product->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // adam_product->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = adam_product_links_parseFromJSON(_links); //nonprimitive
    }

    // adam_product->data_structures
    cJSON *data_structures = cJSON_GetObjectItemCaseSensitive(adam_productJSON, "dataStructures");
    if (cJSON_IsNull(data_structures)) {
        data_structures = NULL;
    }
    if (data_structures) { 
    cJSON *data_structures_local_nonprimitive = NULL;
    if(!cJSON_IsArray(data_structures)){
        goto end; //nonprimitive container
    }

    data_structuresList = list_createList();

    cJSON_ArrayForEach(data_structures_local_nonprimitive,data_structures )
    {
        if(!cJSON_IsObject(data_structures_local_nonprimitive)){
            goto end;
        }
        adam_datastructure_t *data_structuresItem = adam_datastructure_parseFromJSON(data_structures_local_nonprimitive);

        list_addElement(data_structuresList, data_structuresItem);
    }
    }


    adam_product_local_var = adam_product_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        registration_status && !cJSON_IsNull(registration_status) ? strdup(registration_status->valuestring) : NULL,
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        data_structures ? data_structuresList : NULL
        );

    return adam_product_local_var;
end:
    if (_links_local_nonprim) {
        adam_product_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (data_structuresList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, data_structuresList) {
            adam_datastructure_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(data_structuresList);
        data_structuresList = NULL;
    }
    return NULL;

}
