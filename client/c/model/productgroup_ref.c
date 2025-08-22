#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_ref.h"



static productgroup_ref_t *productgroup_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    productgroup_ref_t *productgroup_ref_local_var = malloc(sizeof(productgroup_ref_t));
    if (!productgroup_ref_local_var) {
        return NULL;
    }
    productgroup_ref_local_var->href = href;
    productgroup_ref_local_var->title = title;
    productgroup_ref_local_var->type = type;

    productgroup_ref_local_var->_library_owned = 1;
    return productgroup_ref_local_var;
}

__attribute__((deprecated)) productgroup_ref_t *productgroup_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return productgroup_ref_create_internal (
        href,
        title,
        type
        );
}

void productgroup_ref_free(productgroup_ref_t *productgroup_ref) {
    if(NULL == productgroup_ref){
        return ;
    }
    if(productgroup_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_ref->href) {
        free(productgroup_ref->href);
        productgroup_ref->href = NULL;
    }
    if (productgroup_ref->title) {
        free(productgroup_ref->title);
        productgroup_ref->title = NULL;
    }
    if (productgroup_ref->type) {
        free(productgroup_ref->type);
        productgroup_ref->type = NULL;
    }
    free(productgroup_ref);
}

cJSON *productgroup_ref_convertToJSON(productgroup_ref_t *productgroup_ref) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_ref->href
    if(productgroup_ref->href) {
    if(cJSON_AddStringToObject(item, "href", productgroup_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // productgroup_ref->title
    if(productgroup_ref->title) {
    if(cJSON_AddStringToObject(item, "title", productgroup_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // productgroup_ref->type
    if(productgroup_ref->type) {
    if(cJSON_AddStringToObject(item, "type", productgroup_ref->type) == NULL) {
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

productgroup_ref_t *productgroup_ref_parseFromJSON(cJSON *productgroup_refJSON){

    productgroup_ref_t *productgroup_ref_local_var = NULL;

    // productgroup_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(productgroup_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // productgroup_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(productgroup_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // productgroup_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(productgroup_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    productgroup_ref_local_var = productgroup_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return productgroup_ref_local_var;
end:
    return NULL;

}
