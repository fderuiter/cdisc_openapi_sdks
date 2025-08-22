#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package_codelists_ref.h"



static ct_package_codelists_ref_t *ct_package_codelists_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    ct_package_codelists_ref_t *ct_package_codelists_ref_local_var = malloc(sizeof(ct_package_codelists_ref_t));
    if (!ct_package_codelists_ref_local_var) {
        return NULL;
    }
    ct_package_codelists_ref_local_var->href = href;
    ct_package_codelists_ref_local_var->title = title;
    ct_package_codelists_ref_local_var->type = type;

    ct_package_codelists_ref_local_var->_library_owned = 1;
    return ct_package_codelists_ref_local_var;
}

__attribute__((deprecated)) ct_package_codelists_ref_t *ct_package_codelists_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return ct_package_codelists_ref_create_internal (
        href,
        title,
        type
        );
}

void ct_package_codelists_ref_free(ct_package_codelists_ref_t *ct_package_codelists_ref) {
    if(NULL == ct_package_codelists_ref){
        return ;
    }
    if(ct_package_codelists_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_codelists_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package_codelists_ref->href) {
        free(ct_package_codelists_ref->href);
        ct_package_codelists_ref->href = NULL;
    }
    if (ct_package_codelists_ref->title) {
        free(ct_package_codelists_ref->title);
        ct_package_codelists_ref->title = NULL;
    }
    if (ct_package_codelists_ref->type) {
        free(ct_package_codelists_ref->type);
        ct_package_codelists_ref->type = NULL;
    }
    free(ct_package_codelists_ref);
}

cJSON *ct_package_codelists_ref_convertToJSON(ct_package_codelists_ref_t *ct_package_codelists_ref) {
    cJSON *item = cJSON_CreateObject();

    // ct_package_codelists_ref->href
    if(ct_package_codelists_ref->href) {
    if(cJSON_AddStringToObject(item, "href", ct_package_codelists_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists_ref->title
    if(ct_package_codelists_ref->title) {
    if(cJSON_AddStringToObject(item, "title", ct_package_codelists_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_codelists_ref->type
    if(ct_package_codelists_ref->type) {
    if(cJSON_AddStringToObject(item, "type", ct_package_codelists_ref->type) == NULL) {
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

ct_package_codelists_ref_t *ct_package_codelists_ref_parseFromJSON(cJSON *ct_package_codelists_refJSON){

    ct_package_codelists_ref_t *ct_package_codelists_ref_local_var = NULL;

    // ct_package_codelists_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(ct_package_codelists_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // ct_package_codelists_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(ct_package_codelists_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // ct_package_codelists_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(ct_package_codelists_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    ct_package_codelists_ref_local_var = ct_package_codelists_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return ct_package_codelists_ref_local_var;
end:
    return NULL;

}
