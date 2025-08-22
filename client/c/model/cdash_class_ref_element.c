#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_class_ref_element.h"



static cdash_class_ref_element_t *cdash_class_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    cdash_class_ref_element_t *cdash_class_ref_element_local_var = malloc(sizeof(cdash_class_ref_element_t));
    if (!cdash_class_ref_element_local_var) {
        return NULL;
    }
    cdash_class_ref_element_local_var->href = href;
    cdash_class_ref_element_local_var->title = title;
    cdash_class_ref_element_local_var->type = type;

    cdash_class_ref_element_local_var->_library_owned = 1;
    return cdash_class_ref_element_local_var;
}

__attribute__((deprecated)) cdash_class_ref_element_t *cdash_class_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return cdash_class_ref_element_create_internal (
        href,
        title,
        type
        );
}

void cdash_class_ref_element_free(cdash_class_ref_element_t *cdash_class_ref_element) {
    if(NULL == cdash_class_ref_element){
        return ;
    }
    if(cdash_class_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_class_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_class_ref_element->href) {
        free(cdash_class_ref_element->href);
        cdash_class_ref_element->href = NULL;
    }
    if (cdash_class_ref_element->title) {
        free(cdash_class_ref_element->title);
        cdash_class_ref_element->title = NULL;
    }
    if (cdash_class_ref_element->type) {
        free(cdash_class_ref_element->type);
        cdash_class_ref_element->type = NULL;
    }
    free(cdash_class_ref_element);
}

cJSON *cdash_class_ref_element_convertToJSON(cdash_class_ref_element_t *cdash_class_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // cdash_class_ref_element->href
    if(cdash_class_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", cdash_class_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_ref_element->title
    if(cdash_class_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", cdash_class_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_ref_element->type
    if(cdash_class_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", cdash_class_ref_element->type) == NULL) {
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

cdash_class_ref_element_t *cdash_class_ref_element_parseFromJSON(cJSON *cdash_class_ref_elementJSON){

    cdash_class_ref_element_t *cdash_class_ref_element_local_var = NULL;

    // cdash_class_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(cdash_class_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // cdash_class_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(cdash_class_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // cdash_class_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(cdash_class_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    cdash_class_ref_element_local_var = cdash_class_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return cdash_class_ref_element_local_var;
end:
    return NULL;

}
