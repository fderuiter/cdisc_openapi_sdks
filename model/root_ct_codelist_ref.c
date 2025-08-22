#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_ct_codelist_ref.h"



static root_ct_codelist_ref_t *root_ct_codelist_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    root_ct_codelist_ref_t *root_ct_codelist_ref_local_var = malloc(sizeof(root_ct_codelist_ref_t));
    if (!root_ct_codelist_ref_local_var) {
        return NULL;
    }
    root_ct_codelist_ref_local_var->href = href;
    root_ct_codelist_ref_local_var->title = title;
    root_ct_codelist_ref_local_var->type = type;

    root_ct_codelist_ref_local_var->_library_owned = 1;
    return root_ct_codelist_ref_local_var;
}

__attribute__((deprecated)) root_ct_codelist_ref_t *root_ct_codelist_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return root_ct_codelist_ref_create_internal (
        href,
        title,
        type
        );
}

void root_ct_codelist_ref_free(root_ct_codelist_ref_t *root_ct_codelist_ref) {
    if(NULL == root_ct_codelist_ref){
        return ;
    }
    if(root_ct_codelist_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_ct_codelist_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_ct_codelist_ref->href) {
        free(root_ct_codelist_ref->href);
        root_ct_codelist_ref->href = NULL;
    }
    if (root_ct_codelist_ref->title) {
        free(root_ct_codelist_ref->title);
        root_ct_codelist_ref->title = NULL;
    }
    if (root_ct_codelist_ref->type) {
        free(root_ct_codelist_ref->type);
        root_ct_codelist_ref->type = NULL;
    }
    free(root_ct_codelist_ref);
}

cJSON *root_ct_codelist_ref_convertToJSON(root_ct_codelist_ref_t *root_ct_codelist_ref) {
    cJSON *item = cJSON_CreateObject();

    // root_ct_codelist_ref->href
    if(root_ct_codelist_ref->href) {
    if(cJSON_AddStringToObject(item, "href", root_ct_codelist_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // root_ct_codelist_ref->title
    if(root_ct_codelist_ref->title) {
    if(cJSON_AddStringToObject(item, "title", root_ct_codelist_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // root_ct_codelist_ref->type
    if(root_ct_codelist_ref->type) {
    if(cJSON_AddStringToObject(item, "type", root_ct_codelist_ref->type) == NULL) {
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

root_ct_codelist_ref_t *root_ct_codelist_ref_parseFromJSON(cJSON *root_ct_codelist_refJSON){

    root_ct_codelist_ref_t *root_ct_codelist_ref_local_var = NULL;

    // root_ct_codelist_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(root_ct_codelist_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // root_ct_codelist_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(root_ct_codelist_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // root_ct_codelist_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(root_ct_codelist_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    root_ct_codelist_ref_local_var = root_ct_codelist_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return root_ct_codelist_ref_local_var;
end:
    return NULL;

}
