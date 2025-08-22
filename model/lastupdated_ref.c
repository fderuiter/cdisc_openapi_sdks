#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "lastupdated_ref.h"



static lastupdated_ref_t *lastupdated_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    lastupdated_ref_t *lastupdated_ref_local_var = malloc(sizeof(lastupdated_ref_t));
    if (!lastupdated_ref_local_var) {
        return NULL;
    }
    lastupdated_ref_local_var->href = href;
    lastupdated_ref_local_var->title = title;
    lastupdated_ref_local_var->type = type;

    lastupdated_ref_local_var->_library_owned = 1;
    return lastupdated_ref_local_var;
}

__attribute__((deprecated)) lastupdated_ref_t *lastupdated_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return lastupdated_ref_create_internal (
        href,
        title,
        type
        );
}

void lastupdated_ref_free(lastupdated_ref_t *lastupdated_ref) {
    if(NULL == lastupdated_ref){
        return ;
    }
    if(lastupdated_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "lastupdated_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (lastupdated_ref->href) {
        free(lastupdated_ref->href);
        lastupdated_ref->href = NULL;
    }
    if (lastupdated_ref->title) {
        free(lastupdated_ref->title);
        lastupdated_ref->title = NULL;
    }
    if (lastupdated_ref->type) {
        free(lastupdated_ref->type);
        lastupdated_ref->type = NULL;
    }
    free(lastupdated_ref);
}

cJSON *lastupdated_ref_convertToJSON(lastupdated_ref_t *lastupdated_ref) {
    cJSON *item = cJSON_CreateObject();

    // lastupdated_ref->href
    if(lastupdated_ref->href) {
    if(cJSON_AddStringToObject(item, "href", lastupdated_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated_ref->title
    if(lastupdated_ref->title) {
    if(cJSON_AddStringToObject(item, "title", lastupdated_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated_ref->type
    if(lastupdated_ref->type) {
    if(cJSON_AddStringToObject(item, "type", lastupdated_ref->type) == NULL) {
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

lastupdated_ref_t *lastupdated_ref_parseFromJSON(cJSON *lastupdated_refJSON){

    lastupdated_ref_t *lastupdated_ref_local_var = NULL;

    // lastupdated_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(lastupdated_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // lastupdated_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(lastupdated_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // lastupdated_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(lastupdated_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    lastupdated_ref_local_var = lastupdated_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return lastupdated_ref_local_var;
end:
    return NULL;

}
