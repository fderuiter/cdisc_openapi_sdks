#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "products_ref.h"



static products_ref_t *products_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    products_ref_t *products_ref_local_var = malloc(sizeof(products_ref_t));
    if (!products_ref_local_var) {
        return NULL;
    }
    products_ref_local_var->href = href;
    products_ref_local_var->title = title;
    products_ref_local_var->type = type;

    products_ref_local_var->_library_owned = 1;
    return products_ref_local_var;
}

__attribute__((deprecated)) products_ref_t *products_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return products_ref_create_internal (
        href,
        title,
        type
        );
}

void products_ref_free(products_ref_t *products_ref) {
    if(NULL == products_ref){
        return ;
    }
    if(products_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "products_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (products_ref->href) {
        free(products_ref->href);
        products_ref->href = NULL;
    }
    if (products_ref->title) {
        free(products_ref->title);
        products_ref->title = NULL;
    }
    if (products_ref->type) {
        free(products_ref->type);
        products_ref->type = NULL;
    }
    free(products_ref);
}

cJSON *products_ref_convertToJSON(products_ref_t *products_ref) {
    cJSON *item = cJSON_CreateObject();

    // products_ref->href
    if(products_ref->href) {
    if(cJSON_AddStringToObject(item, "href", products_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // products_ref->title
    if(products_ref->title) {
    if(cJSON_AddStringToObject(item, "title", products_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // products_ref->type
    if(products_ref->type) {
    if(cJSON_AddStringToObject(item, "type", products_ref->type) == NULL) {
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

products_ref_t *products_ref_parseFromJSON(cJSON *products_refJSON){

    products_ref_t *products_ref_local_var = NULL;

    // products_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(products_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // products_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(products_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // products_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(products_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    products_ref_local_var = products_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return products_ref_local_var;
end:
    return NULL;

}
