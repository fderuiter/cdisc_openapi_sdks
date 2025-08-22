#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_variable_ref_version.h"



static sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version_local_var = malloc(sizeof(sdtm_class_variable_ref_version_t));
    if (!sdtm_class_variable_ref_version_local_var) {
        return NULL;
    }
    sdtm_class_variable_ref_version_local_var->href = href;
    sdtm_class_variable_ref_version_local_var->title = title;
    sdtm_class_variable_ref_version_local_var->type = type;

    sdtm_class_variable_ref_version_local_var->_library_owned = 1;
    return sdtm_class_variable_ref_version_local_var;
}

__attribute__((deprecated)) sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version_create(
    char *href,
    char *title,
    char *type
    ) {
    return sdtm_class_variable_ref_version_create_internal (
        href,
        title,
        type
        );
}

void sdtm_class_variable_ref_version_free(sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version) {
    if(NULL == sdtm_class_variable_ref_version){
        return ;
    }
    if(sdtm_class_variable_ref_version->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_variable_ref_version_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_variable_ref_version->href) {
        free(sdtm_class_variable_ref_version->href);
        sdtm_class_variable_ref_version->href = NULL;
    }
    if (sdtm_class_variable_ref_version->title) {
        free(sdtm_class_variable_ref_version->title);
        sdtm_class_variable_ref_version->title = NULL;
    }
    if (sdtm_class_variable_ref_version->type) {
        free(sdtm_class_variable_ref_version->type);
        sdtm_class_variable_ref_version->type = NULL;
    }
    free(sdtm_class_variable_ref_version);
}

cJSON *sdtm_class_variable_ref_version_convertToJSON(sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_variable_ref_version->href
    if(sdtm_class_variable_ref_version->href) {
    if(cJSON_AddStringToObject(item, "href", sdtm_class_variable_ref_version->href) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable_ref_version->title
    if(sdtm_class_variable_ref_version->title) {
    if(cJSON_AddStringToObject(item, "title", sdtm_class_variable_ref_version->title) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable_ref_version->type
    if(sdtm_class_variable_ref_version->type) {
    if(cJSON_AddStringToObject(item, "type", sdtm_class_variable_ref_version->type) == NULL) {
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

sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version_parseFromJSON(cJSON *sdtm_class_variable_ref_versionJSON){

    sdtm_class_variable_ref_version_t *sdtm_class_variable_ref_version_local_var = NULL;

    // sdtm_class_variable_ref_version->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_ref_versionJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable_ref_version->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_ref_versionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable_ref_version->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_ref_versionJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sdtm_class_variable_ref_version_local_var = sdtm_class_variable_ref_version_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sdtm_class_variable_ref_version_local_var;
end:
    return NULL;

}
