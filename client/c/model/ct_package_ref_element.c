#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package_ref_element.h"



static ct_package_ref_element_t *ct_package_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    ct_package_ref_element_t *ct_package_ref_element_local_var = malloc(sizeof(ct_package_ref_element_t));
    if (!ct_package_ref_element_local_var) {
        return NULL;
    }
    ct_package_ref_element_local_var->href = href;
    ct_package_ref_element_local_var->title = title;
    ct_package_ref_element_local_var->type = type;

    ct_package_ref_element_local_var->_library_owned = 1;
    return ct_package_ref_element_local_var;
}

__attribute__((deprecated)) ct_package_ref_element_t *ct_package_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return ct_package_ref_element_create_internal (
        href,
        title,
        type
        );
}

void ct_package_ref_element_free(ct_package_ref_element_t *ct_package_ref_element) {
    if(NULL == ct_package_ref_element){
        return ;
    }
    if(ct_package_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package_ref_element->href) {
        free(ct_package_ref_element->href);
        ct_package_ref_element->href = NULL;
    }
    if (ct_package_ref_element->title) {
        free(ct_package_ref_element->title);
        ct_package_ref_element->title = NULL;
    }
    if (ct_package_ref_element->type) {
        free(ct_package_ref_element->type);
        ct_package_ref_element->type = NULL;
    }
    free(ct_package_ref_element);
}

cJSON *ct_package_ref_element_convertToJSON(ct_package_ref_element_t *ct_package_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // ct_package_ref_element->href
    if(ct_package_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", ct_package_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_ref_element->title
    if(ct_package_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", ct_package_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_ref_element->type
    if(ct_package_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", ct_package_ref_element->type) == NULL) {
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

ct_package_ref_element_t *ct_package_ref_element_parseFromJSON(cJSON *ct_package_ref_elementJSON){

    ct_package_ref_element_t *ct_package_ref_element_local_var = NULL;

    // ct_package_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(ct_package_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // ct_package_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(ct_package_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // ct_package_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(ct_package_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    ct_package_ref_element_local_var = ct_package_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return ct_package_ref_element_local_var;
end:
    return NULL;

}
