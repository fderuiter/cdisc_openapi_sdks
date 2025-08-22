#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_dataset_ref_element.h"



static sdtm_dataset_ref_element_t *sdtm_dataset_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sdtm_dataset_ref_element_t *sdtm_dataset_ref_element_local_var = malloc(sizeof(sdtm_dataset_ref_element_t));
    if (!sdtm_dataset_ref_element_local_var) {
        return NULL;
    }
    sdtm_dataset_ref_element_local_var->href = href;
    sdtm_dataset_ref_element_local_var->title = title;
    sdtm_dataset_ref_element_local_var->type = type;

    sdtm_dataset_ref_element_local_var->_library_owned = 1;
    return sdtm_dataset_ref_element_local_var;
}

__attribute__((deprecated)) sdtm_dataset_ref_element_t *sdtm_dataset_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return sdtm_dataset_ref_element_create_internal (
        href,
        title,
        type
        );
}

void sdtm_dataset_ref_element_free(sdtm_dataset_ref_element_t *sdtm_dataset_ref_element) {
    if(NULL == sdtm_dataset_ref_element){
        return ;
    }
    if(sdtm_dataset_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_dataset_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_dataset_ref_element->href) {
        free(sdtm_dataset_ref_element->href);
        sdtm_dataset_ref_element->href = NULL;
    }
    if (sdtm_dataset_ref_element->title) {
        free(sdtm_dataset_ref_element->title);
        sdtm_dataset_ref_element->title = NULL;
    }
    if (sdtm_dataset_ref_element->type) {
        free(sdtm_dataset_ref_element->type);
        sdtm_dataset_ref_element->type = NULL;
    }
    free(sdtm_dataset_ref_element);
}

cJSON *sdtm_dataset_ref_element_convertToJSON(sdtm_dataset_ref_element_t *sdtm_dataset_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_dataset_ref_element->href
    if(sdtm_dataset_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", sdtm_dataset_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_ref_element->title
    if(sdtm_dataset_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", sdtm_dataset_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_dataset_ref_element->type
    if(sdtm_dataset_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", sdtm_dataset_ref_element->type) == NULL) {
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

sdtm_dataset_ref_element_t *sdtm_dataset_ref_element_parseFromJSON(cJSON *sdtm_dataset_ref_elementJSON){

    sdtm_dataset_ref_element_t *sdtm_dataset_ref_element_local_var = NULL;

    // sdtm_dataset_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sdtm_dataset_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sdtm_dataset_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sdtm_dataset_ref_element_local_var = sdtm_dataset_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sdtm_dataset_ref_element_local_var;
end:
    return NULL;

}
