#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_dataset_variable_ref_version.h"



static sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_local_var = malloc(sizeof(sdtmig_dataset_variable_ref_version_t));
    if (!sdtmig_dataset_variable_ref_version_local_var) {
        return NULL;
    }
    sdtmig_dataset_variable_ref_version_local_var->href = href;
    sdtmig_dataset_variable_ref_version_local_var->title = title;
    sdtmig_dataset_variable_ref_version_local_var->type = type;

    sdtmig_dataset_variable_ref_version_local_var->_library_owned = 1;
    return sdtmig_dataset_variable_ref_version_local_var;
}

__attribute__((deprecated)) sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_create(
    char *href,
    char *title,
    char *type
    ) {
    return sdtmig_dataset_variable_ref_version_create_internal (
        href,
        title,
        type
        );
}

void sdtmig_dataset_variable_ref_version_free(sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version) {
    if(NULL == sdtmig_dataset_variable_ref_version){
        return ;
    }
    if(sdtmig_dataset_variable_ref_version->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_dataset_variable_ref_version_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_dataset_variable_ref_version->href) {
        free(sdtmig_dataset_variable_ref_version->href);
        sdtmig_dataset_variable_ref_version->href = NULL;
    }
    if (sdtmig_dataset_variable_ref_version->title) {
        free(sdtmig_dataset_variable_ref_version->title);
        sdtmig_dataset_variable_ref_version->title = NULL;
    }
    if (sdtmig_dataset_variable_ref_version->type) {
        free(sdtmig_dataset_variable_ref_version->type);
        sdtmig_dataset_variable_ref_version->type = NULL;
    }
    free(sdtmig_dataset_variable_ref_version);
}

cJSON *sdtmig_dataset_variable_ref_version_convertToJSON(sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_dataset_variable_ref_version->href
    if(sdtmig_dataset_variable_ref_version->href) {
    if(cJSON_AddStringToObject(item, "href", sdtmig_dataset_variable_ref_version->href) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable_ref_version->title
    if(sdtmig_dataset_variable_ref_version->title) {
    if(cJSON_AddStringToObject(item, "title", sdtmig_dataset_variable_ref_version->title) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_dataset_variable_ref_version->type
    if(sdtmig_dataset_variable_ref_version->type) {
    if(cJSON_AddStringToObject(item, "type", sdtmig_dataset_variable_ref_version->type) == NULL) {
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

sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_parseFromJSON(cJSON *sdtmig_dataset_variable_ref_versionJSON){

    sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_local_var = NULL;

    // sdtmig_dataset_variable_ref_version->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variable_ref_versionJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable_ref_version->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variable_ref_versionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sdtmig_dataset_variable_ref_version->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sdtmig_dataset_variable_ref_versionJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sdtmig_dataset_variable_ref_version_local_var = sdtmig_dataset_variable_ref_version_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sdtmig_dataset_variable_ref_version_local_var;
end:
    return NULL;

}
