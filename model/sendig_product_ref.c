#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_product_ref.h"



static sendig_product_ref_t *sendig_product_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sendig_product_ref_t *sendig_product_ref_local_var = malloc(sizeof(sendig_product_ref_t));
    if (!sendig_product_ref_local_var) {
        return NULL;
    }
    sendig_product_ref_local_var->href = href;
    sendig_product_ref_local_var->title = title;
    sendig_product_ref_local_var->type = type;

    sendig_product_ref_local_var->_library_owned = 1;
    return sendig_product_ref_local_var;
}

__attribute__((deprecated)) sendig_product_ref_t *sendig_product_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return sendig_product_ref_create_internal (
        href,
        title,
        type
        );
}

void sendig_product_ref_free(sendig_product_ref_t *sendig_product_ref) {
    if(NULL == sendig_product_ref){
        return ;
    }
    if(sendig_product_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_product_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_product_ref->href) {
        free(sendig_product_ref->href);
        sendig_product_ref->href = NULL;
    }
    if (sendig_product_ref->title) {
        free(sendig_product_ref->title);
        sendig_product_ref->title = NULL;
    }
    if (sendig_product_ref->type) {
        free(sendig_product_ref->type);
        sendig_product_ref->type = NULL;
    }
    free(sendig_product_ref);
}

cJSON *sendig_product_ref_convertToJSON(sendig_product_ref_t *sendig_product_ref) {
    cJSON *item = cJSON_CreateObject();

    // sendig_product_ref->href
    if(sendig_product_ref->href) {
    if(cJSON_AddStringToObject(item, "href", sendig_product_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product_ref->title
    if(sendig_product_ref->title) {
    if(cJSON_AddStringToObject(item, "title", sendig_product_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // sendig_product_ref->type
    if(sendig_product_ref->type) {
    if(cJSON_AddStringToObject(item, "type", sendig_product_ref->type) == NULL) {
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

sendig_product_ref_t *sendig_product_ref_parseFromJSON(cJSON *sendig_product_refJSON){

    sendig_product_ref_t *sendig_product_ref_local_var = NULL;

    // sendig_product_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sendig_product_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sendig_product_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sendig_product_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sendig_product_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sendig_product_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sendig_product_ref_local_var = sendig_product_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sendig_product_ref_local_var;
end:
    return NULL;

}
