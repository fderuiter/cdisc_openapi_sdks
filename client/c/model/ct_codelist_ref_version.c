#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_codelist_ref_version.h"



static ct_codelist_ref_version_t *ct_codelist_ref_version_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    ct_codelist_ref_version_t *ct_codelist_ref_version_local_var = malloc(sizeof(ct_codelist_ref_version_t));
    if (!ct_codelist_ref_version_local_var) {
        return NULL;
    }
    ct_codelist_ref_version_local_var->href = href;
    ct_codelist_ref_version_local_var->title = title;
    ct_codelist_ref_version_local_var->type = type;

    ct_codelist_ref_version_local_var->_library_owned = 1;
    return ct_codelist_ref_version_local_var;
}

__attribute__((deprecated)) ct_codelist_ref_version_t *ct_codelist_ref_version_create(
    char *href,
    char *title,
    char *type
    ) {
    return ct_codelist_ref_version_create_internal (
        href,
        title,
        type
        );
}

void ct_codelist_ref_version_free(ct_codelist_ref_version_t *ct_codelist_ref_version) {
    if(NULL == ct_codelist_ref_version){
        return ;
    }
    if(ct_codelist_ref_version->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_codelist_ref_version_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_codelist_ref_version->href) {
        free(ct_codelist_ref_version->href);
        ct_codelist_ref_version->href = NULL;
    }
    if (ct_codelist_ref_version->title) {
        free(ct_codelist_ref_version->title);
        ct_codelist_ref_version->title = NULL;
    }
    if (ct_codelist_ref_version->type) {
        free(ct_codelist_ref_version->type);
        ct_codelist_ref_version->type = NULL;
    }
    free(ct_codelist_ref_version);
}

cJSON *ct_codelist_ref_version_convertToJSON(ct_codelist_ref_version_t *ct_codelist_ref_version) {
    cJSON *item = cJSON_CreateObject();

    // ct_codelist_ref_version->href
    if(ct_codelist_ref_version->href) {
    if(cJSON_AddStringToObject(item, "href", ct_codelist_ref_version->href) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_ref_version->title
    if(ct_codelist_ref_version->title) {
    if(cJSON_AddStringToObject(item, "title", ct_codelist_ref_version->title) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_ref_version->type
    if(ct_codelist_ref_version->type) {
    if(cJSON_AddStringToObject(item, "type", ct_codelist_ref_version->type) == NULL) {
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

ct_codelist_ref_version_t *ct_codelist_ref_version_parseFromJSON(cJSON *ct_codelist_ref_versionJSON){

    ct_codelist_ref_version_t *ct_codelist_ref_version_local_var = NULL;

    // ct_codelist_ref_version->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(ct_codelist_ref_versionJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // ct_codelist_ref_version->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(ct_codelist_ref_versionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // ct_codelist_ref_version->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(ct_codelist_ref_versionJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    ct_codelist_ref_version_local_var = ct_codelist_ref_version_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return ct_codelist_ref_version_local_var;
end:
    return NULL;

}
