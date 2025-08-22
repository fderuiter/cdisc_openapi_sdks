#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "about_ref.h"



static about_ref_t *about_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    about_ref_t *about_ref_local_var = malloc(sizeof(about_ref_t));
    if (!about_ref_local_var) {
        return NULL;
    }
    about_ref_local_var->href = href;
    about_ref_local_var->title = title;
    about_ref_local_var->type = type;

    about_ref_local_var->_library_owned = 1;
    return about_ref_local_var;
}

__attribute__((deprecated)) about_ref_t *about_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return about_ref_create_internal (
        href,
        title,
        type
        );
}

void about_ref_free(about_ref_t *about_ref) {
    if(NULL == about_ref){
        return ;
    }
    if(about_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "about_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (about_ref->href) {
        free(about_ref->href);
        about_ref->href = NULL;
    }
    if (about_ref->title) {
        free(about_ref->title);
        about_ref->title = NULL;
    }
    if (about_ref->type) {
        free(about_ref->type);
        about_ref->type = NULL;
    }
    free(about_ref);
}

cJSON *about_ref_convertToJSON(about_ref_t *about_ref) {
    cJSON *item = cJSON_CreateObject();

    // about_ref->href
    if(about_ref->href) {
    if(cJSON_AddStringToObject(item, "href", about_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // about_ref->title
    if(about_ref->title) {
    if(cJSON_AddStringToObject(item, "title", about_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // about_ref->type
    if(about_ref->type) {
    if(cJSON_AddStringToObject(item, "type", about_ref->type) == NULL) {
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

about_ref_t *about_ref_parseFromJSON(cJSON *about_refJSON){

    about_ref_t *about_ref_local_var = NULL;

    // about_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(about_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // about_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(about_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // about_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(about_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    about_ref_local_var = about_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return about_ref_local_var;
end:
    return NULL;

}
