#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_product_ref.h"



static adam_product_ref_t *adam_product_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    adam_product_ref_t *adam_product_ref_local_var = malloc(sizeof(adam_product_ref_t));
    if (!adam_product_ref_local_var) {
        return NULL;
    }
    adam_product_ref_local_var->href = href;
    adam_product_ref_local_var->title = title;
    adam_product_ref_local_var->type = type;

    adam_product_ref_local_var->_library_owned = 1;
    return adam_product_ref_local_var;
}

__attribute__((deprecated)) adam_product_ref_t *adam_product_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return adam_product_ref_create_internal (
        href,
        title,
        type
        );
}

void adam_product_ref_free(adam_product_ref_t *adam_product_ref) {
    if(NULL == adam_product_ref){
        return ;
    }
    if(adam_product_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_product_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_product_ref->href) {
        free(adam_product_ref->href);
        adam_product_ref->href = NULL;
    }
    if (adam_product_ref->title) {
        free(adam_product_ref->title);
        adam_product_ref->title = NULL;
    }
    if (adam_product_ref->type) {
        free(adam_product_ref->type);
        adam_product_ref->type = NULL;
    }
    free(adam_product_ref);
}

cJSON *adam_product_ref_convertToJSON(adam_product_ref_t *adam_product_ref) {
    cJSON *item = cJSON_CreateObject();

    // adam_product_ref->href
    if(adam_product_ref->href) {
    if(cJSON_AddStringToObject(item, "href", adam_product_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_ref->title
    if(adam_product_ref->title) {
    if(cJSON_AddStringToObject(item, "title", adam_product_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // adam_product_ref->type
    if(adam_product_ref->type) {
    if(cJSON_AddStringToObject(item, "type", adam_product_ref->type) == NULL) {
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

adam_product_ref_t *adam_product_ref_parseFromJSON(cJSON *adam_product_refJSON){

    adam_product_ref_t *adam_product_ref_local_var = NULL;

    // adam_product_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(adam_product_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // adam_product_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(adam_product_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // adam_product_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(adam_product_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    adam_product_ref_local_var = adam_product_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return adam_product_ref_local_var;
end:
    return NULL;

}
