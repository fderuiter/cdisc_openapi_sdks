#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_item_ref_element.h"



static qrs_item_ref_element_t *qrs_item_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    qrs_item_ref_element_t *qrs_item_ref_element_local_var = malloc(sizeof(qrs_item_ref_element_t));
    if (!qrs_item_ref_element_local_var) {
        return NULL;
    }
    qrs_item_ref_element_local_var->href = href;
    qrs_item_ref_element_local_var->title = title;
    qrs_item_ref_element_local_var->type = type;

    qrs_item_ref_element_local_var->_library_owned = 1;
    return qrs_item_ref_element_local_var;
}

__attribute__((deprecated)) qrs_item_ref_element_t *qrs_item_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return qrs_item_ref_element_create_internal (
        href,
        title,
        type
        );
}

void qrs_item_ref_element_free(qrs_item_ref_element_t *qrs_item_ref_element) {
    if(NULL == qrs_item_ref_element){
        return ;
    }
    if(qrs_item_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_item_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_item_ref_element->href) {
        free(qrs_item_ref_element->href);
        qrs_item_ref_element->href = NULL;
    }
    if (qrs_item_ref_element->title) {
        free(qrs_item_ref_element->title);
        qrs_item_ref_element->title = NULL;
    }
    if (qrs_item_ref_element->type) {
        free(qrs_item_ref_element->type);
        qrs_item_ref_element->type = NULL;
    }
    free(qrs_item_ref_element);
}

cJSON *qrs_item_ref_element_convertToJSON(qrs_item_ref_element_t *qrs_item_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // qrs_item_ref_element->href
    if(qrs_item_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", qrs_item_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // qrs_item_ref_element->title
    if(qrs_item_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", qrs_item_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // qrs_item_ref_element->type
    if(qrs_item_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", qrs_item_ref_element->type) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

qrs_item_ref_element_t *qrs_item_ref_element_parseFromJSON(cJSON *qrs_item_ref_elementJSON){

    qrs_item_ref_element_t *qrs_item_ref_element_local_var = NULL;

    // qrs_item_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(qrs_item_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // qrs_item_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(qrs_item_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // qrs_item_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(qrs_item_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    qrs_item_ref_element_local_var = qrs_item_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return qrs_item_ref_element_local_var;
end:
    return NULL;

}
