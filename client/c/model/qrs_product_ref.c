#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_product_ref.h"



static qrs_product_ref_t *qrs_product_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    qrs_product_ref_t *qrs_product_ref_local_var = malloc(sizeof(qrs_product_ref_t));
    if (!qrs_product_ref_local_var) {
        return NULL;
    }
    qrs_product_ref_local_var->href = href;
    qrs_product_ref_local_var->title = title;
    qrs_product_ref_local_var->type = type;

    qrs_product_ref_local_var->_library_owned = 1;
    return qrs_product_ref_local_var;
}

__attribute__((deprecated)) qrs_product_ref_t *qrs_product_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return qrs_product_ref_create_internal (
        href,
        title,
        type
        );
}

void qrs_product_ref_free(qrs_product_ref_t *qrs_product_ref) {
    if(NULL == qrs_product_ref){
        return ;
    }
    if(qrs_product_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_product_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_product_ref->href) {
        free(qrs_product_ref->href);
        qrs_product_ref->href = NULL;
    }
    if (qrs_product_ref->title) {
        free(qrs_product_ref->title);
        qrs_product_ref->title = NULL;
    }
    if (qrs_product_ref->type) {
        free(qrs_product_ref->type);
        qrs_product_ref->type = NULL;
    }
    free(qrs_product_ref);
}

cJSON *qrs_product_ref_convertToJSON(qrs_product_ref_t *qrs_product_ref) {
    cJSON *item = cJSON_CreateObject();

    // qrs_product_ref->href
    if(qrs_product_ref->href) {
    if(cJSON_AddStringToObject(item, "href", qrs_product_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product_ref->title
    if(qrs_product_ref->title) {
    if(cJSON_AddStringToObject(item, "title", qrs_product_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // qrs_product_ref->type
    if(qrs_product_ref->type) {
    if(cJSON_AddStringToObject(item, "type", qrs_product_ref->type) == NULL) {
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

qrs_product_ref_t *qrs_product_ref_parseFromJSON(cJSON *qrs_product_refJSON){

    qrs_product_ref_t *qrs_product_ref_local_var = NULL;

    // qrs_product_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(qrs_product_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // qrs_product_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(qrs_product_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // qrs_product_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(qrs_product_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    qrs_product_ref_local_var = qrs_product_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return qrs_product_ref_local_var;
end:
    return NULL;

}
