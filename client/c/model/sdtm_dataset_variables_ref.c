#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_dataset_variables_ref.h"



static sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref_local_var = malloc(sizeof(sdtm_dataset_variables_ref_t));
    if (!sdtm_dataset_variables_ref_local_var) {
        return NULL;
    }
    sdtm_dataset_variables_ref_local_var->href = href;
    sdtm_dataset_variables_ref_local_var->title = title;
    sdtm_dataset_variables_ref_local_var->type = type;

    sdtm_dataset_variables_ref_local_var->_library_owned = 1;
    return sdtm_dataset_variables_ref_local_var;
}

__attribute__((deprecated)) sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return sdtm_dataset_variables_ref_create_internal (
        href,
        title,
        type
        );
}

void sdtm_dataset_variables_ref_free(sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref) {
    if(NULL == sdtm_dataset_variables_ref){
        return ;
    }
    if(sdtm_dataset_variables_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_dataset_variables_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_dataset_variables_ref->href) {
        free(sdtm_dataset_variables_ref->href);
        sdtm_dataset_variables_ref->href = NULL;
    }
    if (sdtm_dataset_variables_ref->title) {
        free(sdtm_dataset_variables_ref->title);
        sdtm_dataset_variables_ref->title = NULL;
    }
    if (sdtm_dataset_variables_ref->type) {
        free(sdtm_dataset_variables_ref->type);
        sdtm_dataset_variables_ref->type = NULL;
    }
    free(sdtm_dataset_variables_ref);
}

cJSON *sdtm_dataset_variables_ref_convertToJSON(sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_dataset_variables_ref->href
    if(sdtm_dataset_variables_ref->href) {
    if(cJSON_AddStringToObject(item, "href", sdtm_dataset_variables_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables_ref->title
    if(sdtm_dataset_variables_ref->title) {
    if(cJSON_AddStringToObject(item, "title", sdtm_dataset_variables_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_variables_ref->type
    if(sdtm_dataset_variables_ref->type) {
    if(cJSON_AddStringToObject(item, "type", sdtm_dataset_variables_ref->type) == NULL) {
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

sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref_parseFromJSON(cJSON *sdtm_dataset_variables_refJSON){

    sdtm_dataset_variables_ref_t *sdtm_dataset_variables_ref_local_var = NULL;

    // sdtm_dataset_variables_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variables_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variables_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_variables_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_variables_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sdtm_dataset_variables_ref_local_var = sdtm_dataset_variables_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sdtm_dataset_variables_ref_local_var;
end:
    return NULL;

}
