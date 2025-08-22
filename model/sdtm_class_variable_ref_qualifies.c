#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_variable_ref_qualifies.h"



static sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_local_var = malloc(sizeof(sdtm_class_variable_ref_qualifies_t));
    if (!sdtm_class_variable_ref_qualifies_local_var) {
        return NULL;
    }
    sdtm_class_variable_ref_qualifies_local_var->href = href;
    sdtm_class_variable_ref_qualifies_local_var->title = title;
    sdtm_class_variable_ref_qualifies_local_var->type = type;

    sdtm_class_variable_ref_qualifies_local_var->_library_owned = 1;
    return sdtm_class_variable_ref_qualifies_local_var;
}

__attribute__((deprecated)) sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_create(
    char *href,
    char *title,
    char *type
    ) {
    return sdtm_class_variable_ref_qualifies_create_internal (
        href,
        title,
        type
        );
}

void sdtm_class_variable_ref_qualifies_free(sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies) {
    if(NULL == sdtm_class_variable_ref_qualifies){
        return ;
    }
    if(sdtm_class_variable_ref_qualifies->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_variable_ref_qualifies_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_variable_ref_qualifies->href) {
        free(sdtm_class_variable_ref_qualifies->href);
        sdtm_class_variable_ref_qualifies->href = NULL;
    }
    if (sdtm_class_variable_ref_qualifies->title) {
        free(sdtm_class_variable_ref_qualifies->title);
        sdtm_class_variable_ref_qualifies->title = NULL;
    }
    if (sdtm_class_variable_ref_qualifies->type) {
        free(sdtm_class_variable_ref_qualifies->type);
        sdtm_class_variable_ref_qualifies->type = NULL;
    }
    free(sdtm_class_variable_ref_qualifies);
}

cJSON *sdtm_class_variable_ref_qualifies_convertToJSON(sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_variable_ref_qualifies->href
    if(sdtm_class_variable_ref_qualifies->href) {
    if(cJSON_AddStringToObject(item, "href", sdtm_class_variable_ref_qualifies->href) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable_ref_qualifies->title
    if(sdtm_class_variable_ref_qualifies->title) {
    if(cJSON_AddStringToObject(item, "title", sdtm_class_variable_ref_qualifies->title) == NULL) {
    goto fail; //String
    }
    }


    // sdtm_class_variable_ref_qualifies->type
    if(sdtm_class_variable_ref_qualifies->type) {
    if(cJSON_AddStringToObject(item, "type", sdtm_class_variable_ref_qualifies->type) == NULL) {
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

sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_parseFromJSON(cJSON *sdtm_class_variable_ref_qualifiesJSON){

    sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_local_var = NULL;

    // sdtm_class_variable_ref_qualifies->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_ref_qualifiesJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable_ref_qualifies->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_ref_qualifiesJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sdtm_class_variable_ref_qualifies->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sdtm_class_variable_ref_qualifiesJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sdtm_class_variable_ref_qualifies_local_var = sdtm_class_variable_ref_qualifies_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sdtm_class_variable_ref_qualifies_local_var;
end:
    return NULL;

}
