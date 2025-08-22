#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_class.h"



static cdash_class_t *cdash_class_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdash_class_links_t *_links,
    list_t *cdash_model_fields
    ) {
    cdash_class_t *cdash_class_local_var = malloc(sizeof(cdash_class_t));
    if (!cdash_class_local_var) {
        return NULL;
    }
    cdash_class_local_var->ordinal = ordinal;
    cdash_class_local_var->name = name;
    cdash_class_local_var->label = label;
    cdash_class_local_var->description = description;
    cdash_class_local_var->_links = _links;
    cdash_class_local_var->cdash_model_fields = cdash_model_fields;

    cdash_class_local_var->_library_owned = 1;
    return cdash_class_local_var;
}

__attribute__((deprecated)) cdash_class_t *cdash_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdash_class_links_t *_links,
    list_t *cdash_model_fields
    ) {
    return cdash_class_create_internal (
        ordinal,
        name,
        label,
        description,
        _links,
        cdash_model_fields
        );
}

void cdash_class_free(cdash_class_t *cdash_class) {
    if(NULL == cdash_class){
        return ;
    }
    if(cdash_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_class->ordinal) {
        free(cdash_class->ordinal);
        cdash_class->ordinal = NULL;
    }
    if (cdash_class->name) {
        free(cdash_class->name);
        cdash_class->name = NULL;
    }
    if (cdash_class->label) {
        free(cdash_class->label);
        cdash_class->label = NULL;
    }
    if (cdash_class->description) {
        free(cdash_class->description);
        cdash_class->description = NULL;
    }
    if (cdash_class->_links) {
        cdash_class_links_free(cdash_class->_links);
        cdash_class->_links = NULL;
    }
    if (cdash_class->cdash_model_fields) {
        list_ForEach(listEntry, cdash_class->cdash_model_fields) {
            cdash_class_field_free(listEntry->data);
        }
        list_freeList(cdash_class->cdash_model_fields);
        cdash_class->cdash_model_fields = NULL;
    }
    free(cdash_class);
}

cJSON *cdash_class_convertToJSON(cdash_class_t *cdash_class) {
    cJSON *item = cJSON_CreateObject();

    // cdash_class->ordinal
    if(cdash_class->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdash_class->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class->name
    if(cdash_class->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_class->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class->label
    if(cdash_class->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_class->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class->description
    if(cdash_class->description) {
    if(cJSON_AddStringToObject(item, "description", cdash_class->description) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class->_links
    if(cdash_class->_links) {
    cJSON *_links_local_JSON = cdash_class_links_convertToJSON(cdash_class->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_class->cdash_model_fields
    if(cdash_class->cdash_model_fields) {
    cJSON *cdash_model_fields = cJSON_AddArrayToObject(item, "cdashModelFields");
    if(cdash_model_fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *cdash_model_fieldsListEntry;
    if (cdash_class->cdash_model_fields) {
    list_ForEach(cdash_model_fieldsListEntry, cdash_class->cdash_model_fields) {
    cJSON *itemLocal = cdash_class_field_convertToJSON(cdash_model_fieldsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(cdash_model_fields, itemLocal);
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

cdash_class_t *cdash_class_parseFromJSON(cJSON *cdash_classJSON){

    cdash_class_t *cdash_class_local_var = NULL;

    // define the local variable for cdash_class->_links
    cdash_class_links_t *_links_local_nonprim = NULL;

    // define the local list for cdash_class->cdash_model_fields
    list_t *cdash_model_fieldsList = NULL;

    // cdash_class->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdash_classJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdash_class->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_classJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_class->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_classJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_class->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdash_classJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdash_class->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_classJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_class_links_parseFromJSON(_links); //nonprimitive
    }

    // cdash_class->cdash_model_fields
    cJSON *cdash_model_fields = cJSON_GetObjectItemCaseSensitive(cdash_classJSON, "cdashModelFields");
    if (cJSON_IsNull(cdash_model_fields)) {
        cdash_model_fields = NULL;
    }
    if (cdash_model_fields) { 
    cJSON *cdash_model_fields_local_nonprimitive = NULL;
    if(!cJSON_IsArray(cdash_model_fields)){
        goto end; //nonprimitive container
    }

    cdash_model_fieldsList = list_createList();

    cJSON_ArrayForEach(cdash_model_fields_local_nonprimitive,cdash_model_fields )
    {
        if(!cJSON_IsObject(cdash_model_fields_local_nonprimitive)){
            goto end;
        }
        cdash_class_field_t *cdash_model_fieldsItem = cdash_class_field_parseFromJSON(cdash_model_fields_local_nonprimitive);

        list_addElement(cdash_model_fieldsList, cdash_model_fieldsItem);
    }
    }


    cdash_class_local_var = cdash_class_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        cdash_model_fields ? cdash_model_fieldsList : NULL
        );

    return cdash_class_local_var;
end:
    if (_links_local_nonprim) {
        cdash_class_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (cdash_model_fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, cdash_model_fieldsList) {
            cdash_class_field_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(cdash_model_fieldsList);
        cdash_model_fieldsList = NULL;
    }
    return NULL;

}
