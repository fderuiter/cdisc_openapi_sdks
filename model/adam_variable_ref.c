#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_variable_ref.h"



static adam_variable_ref_t *adam_variable_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    adam_variable_ref_t *adam_variable_ref_local_var = malloc(sizeof(adam_variable_ref_t));
    if (!adam_variable_ref_local_var) {
        return NULL;
    }
    adam_variable_ref_local_var->href = href;
    adam_variable_ref_local_var->title = title;
    adam_variable_ref_local_var->type = type;

    adam_variable_ref_local_var->_library_owned = 1;
    return adam_variable_ref_local_var;
}

__attribute__((deprecated)) adam_variable_ref_t *adam_variable_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return adam_variable_ref_create_internal (
        href,
        title,
        type
        );
}

void adam_variable_ref_free(adam_variable_ref_t *adam_variable_ref) {
    if(NULL == adam_variable_ref){
        return ;
    }
    if(adam_variable_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_variable_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_variable_ref->href) {
        free(adam_variable_ref->href);
        adam_variable_ref->href = NULL;
    }
    if (adam_variable_ref->title) {
        free(adam_variable_ref->title);
        adam_variable_ref->title = NULL;
    }
    if (adam_variable_ref->type) {
        free(adam_variable_ref->type);
        adam_variable_ref->type = NULL;
    }
    free(adam_variable_ref);
}

cJSON *adam_variable_ref_convertToJSON(adam_variable_ref_t *adam_variable_ref) {
    cJSON *item = cJSON_CreateObject();

    // adam_variable_ref->href
    if(adam_variable_ref->href) {
    if(cJSON_AddStringToObject(item, "href", adam_variable_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable_ref->title
    if(adam_variable_ref->title) {
    if(cJSON_AddStringToObject(item, "title", adam_variable_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // adam_variable_ref->type
    if(adam_variable_ref->type) {
    if(cJSON_AddStringToObject(item, "type", adam_variable_ref->type) == NULL) {
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

adam_variable_ref_t *adam_variable_ref_parseFromJSON(cJSON *adam_variable_refJSON){

    adam_variable_ref_t *adam_variable_ref_local_var = NULL;

    // adam_variable_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(adam_variable_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // adam_variable_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(adam_variable_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // adam_variable_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(adam_variable_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    adam_variable_ref_local_var = adam_variable_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return adam_variable_ref_local_var;
end:
    return NULL;

}
