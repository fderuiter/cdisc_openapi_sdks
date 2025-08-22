#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_varset_ref_element.h"



static adam_varset_ref_element_t *adam_varset_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    adam_varset_ref_element_t *adam_varset_ref_element_local_var = malloc(sizeof(adam_varset_ref_element_t));
    if (!adam_varset_ref_element_local_var) {
        return NULL;
    }
    adam_varset_ref_element_local_var->href = href;
    adam_varset_ref_element_local_var->title = title;
    adam_varset_ref_element_local_var->type = type;

    adam_varset_ref_element_local_var->_library_owned = 1;
    return adam_varset_ref_element_local_var;
}

__attribute__((deprecated)) adam_varset_ref_element_t *adam_varset_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return adam_varset_ref_element_create_internal (
        href,
        title,
        type
        );
}

void adam_varset_ref_element_free(adam_varset_ref_element_t *adam_varset_ref_element) {
    if(NULL == adam_varset_ref_element){
        return ;
    }
    if(adam_varset_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_varset_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_varset_ref_element->href) {
        free(adam_varset_ref_element->href);
        adam_varset_ref_element->href = NULL;
    }
    if (adam_varset_ref_element->title) {
        free(adam_varset_ref_element->title);
        adam_varset_ref_element->title = NULL;
    }
    if (adam_varset_ref_element->type) {
        free(adam_varset_ref_element->type);
        adam_varset_ref_element->type = NULL;
    }
    free(adam_varset_ref_element);
}

cJSON *adam_varset_ref_element_convertToJSON(adam_varset_ref_element_t *adam_varset_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // adam_varset_ref_element->href
    if(adam_varset_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", adam_varset_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // adam_varset_ref_element->title
    if(adam_varset_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", adam_varset_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // adam_varset_ref_element->type
    if(adam_varset_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", adam_varset_ref_element->type) == NULL) {
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

adam_varset_ref_element_t *adam_varset_ref_element_parseFromJSON(cJSON *adam_varset_ref_elementJSON){

    adam_varset_ref_element_t *adam_varset_ref_element_local_var = NULL;

    // adam_varset_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(adam_varset_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // adam_varset_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(adam_varset_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // adam_varset_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(adam_varset_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    adam_varset_ref_element_local_var = adam_varset_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return adam_varset_ref_element_local_var;
end:
    return NULL;

}
