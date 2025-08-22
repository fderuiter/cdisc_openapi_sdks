#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_class.h"



static sendig_class_t *sendig_class_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sendig_class_links_t *_links,
    list_t *datasets
    ) {
    sendig_class_t *sendig_class_local_var = malloc(sizeof(sendig_class_t));
    if (!sendig_class_local_var) {
        return NULL;
    }
    sendig_class_local_var->ordinal = ordinal;
    sendig_class_local_var->name = name;
    sendig_class_local_var->label = label;
    sendig_class_local_var->description = description;
    sendig_class_local_var->_links = _links;
    sendig_class_local_var->datasets = datasets;

    sendig_class_local_var->_library_owned = 1;
    return sendig_class_local_var;
}

__attribute__((deprecated)) sendig_class_t *sendig_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sendig_class_links_t *_links,
    list_t *datasets
    ) {
    return sendig_class_create_internal (
        ordinal,
        name,
        label,
        description,
        _links,
        datasets
        );
}

void sendig_class_free(sendig_class_t *sendig_class) {
    if(NULL == sendig_class){
        return ;
    }
    if(sendig_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_class->ordinal) {
        free(sendig_class->ordinal);
        sendig_class->ordinal = NULL;
    }
    if (sendig_class->name) {
        free(sendig_class->name);
        sendig_class->name = NULL;
    }
    if (sendig_class->label) {
        free(sendig_class->label);
        sendig_class->label = NULL;
    }
    if (sendig_class->description) {
        free(sendig_class->description);
        sendig_class->description = NULL;
    }
    if (sendig_class->_links) {
        sendig_class_links_free(sendig_class->_links);
        sendig_class->_links = NULL;
    }
    if (sendig_class->datasets) {
        list_ForEach(listEntry, sendig_class->datasets) {
            sendig_dataset_free(listEntry->data);
        }
        list_freeList(sendig_class->datasets);
        sendig_class->datasets = NULL;
    }
    free(sendig_class);
}

cJSON *sendig_class_convertToJSON(sendig_class_t *sendig_class) {
    cJSON *item = cJSON_CreateObject();

    // sendig_class->ordinal
    if(sendig_class->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", sendig_class->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class->name
    if(sendig_class->name) {
    if(cJSON_AddStringToObject(item, "name", sendig_class->name) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class->label
    if(sendig_class->label) {
    if(cJSON_AddStringToObject(item, "label", sendig_class->label) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class->description
    if(sendig_class->description) {
    if(cJSON_AddStringToObject(item, "description", sendig_class->description) == NULL) {
    goto fail; //String
    }
    }


    // sendig_class->_links
    if(sendig_class->_links) {
    cJSON *_links_local_JSON = sendig_class_links_convertToJSON(sendig_class->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_class->datasets
    if(sendig_class->datasets) {
    cJSON *datasets = cJSON_AddArrayToObject(item, "datasets");
    if(datasets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *datasetsListEntry;
    if (sendig_class->datasets) {
    list_ForEach(datasetsListEntry, sendig_class->datasets) {
    cJSON *itemLocal = sendig_dataset_convertToJSON(datasetsListEntry->data);
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

sendig_class_t *sendig_class_parseFromJSON(cJSON *sendig_classJSON){

    sendig_class_t *sendig_class_local_var = NULL;

    // define the local variable for sendig_class->_links
    sendig_class_links_t *_links_local_nonprim = NULL;

    // define the local list for sendig_class->datasets
    list_t *datasetsList = NULL;

    // sendig_class->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(sendig_classJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // sendig_class->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sendig_classJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sendig_class->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(sendig_classJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // sendig_class->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(sendig_classJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // sendig_class->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(sendig_classJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = sendig_class_links_parseFromJSON(_links); //nonprimitive
    }

    // sendig_class->datasets
    cJSON *datasets = cJSON_GetObjectItemCaseSensitive(sendig_classJSON, "datasets");
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
        sendig_dataset_t *datasetsItem = sendig_dataset_parseFromJSON(datasets_local_nonprimitive);

        list_addElement(datasetsList, datasetsItem);
    }
    }


    sendig_class_local_var = sendig_class_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        datasets ? datasetsList : NULL
        );

    return sendig_class_local_var;
end:
    if (_links_local_nonprim) {
        sendig_class_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (datasetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, datasetsList) {
            sendig_dataset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(datasetsList);
        datasetsList = NULL;
    }
    return NULL;

}
