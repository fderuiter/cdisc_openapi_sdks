#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_class_ref_subclass.h"



static sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_local_var = malloc(sizeof(sdtmig_class_ref_subclass_t));
    if (!sdtmig_class_ref_subclass_local_var) {
        return NULL;
    }
    sdtmig_class_ref_subclass_local_var->href = href;
    sdtmig_class_ref_subclass_local_var->title = title;
    sdtmig_class_ref_subclass_local_var->type = type;

    sdtmig_class_ref_subclass_local_var->_library_owned = 1;
    return sdtmig_class_ref_subclass_local_var;
}

__attribute__((deprecated)) sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_create(
    char *href,
    char *title,
    char *type
    ) {
    return sdtmig_class_ref_subclass_create_internal (
        href,
        title,
        type
        );
}

void sdtmig_class_ref_subclass_free(sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass) {
    if(NULL == sdtmig_class_ref_subclass){
        return ;
    }
    if(sdtmig_class_ref_subclass->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_class_ref_subclass_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_class_ref_subclass->href) {
        free(sdtmig_class_ref_subclass->href);
        sdtmig_class_ref_subclass->href = NULL;
    }
    if (sdtmig_class_ref_subclass->title) {
        free(sdtmig_class_ref_subclass->title);
        sdtmig_class_ref_subclass->title = NULL;
    }
    if (sdtmig_class_ref_subclass->type) {
        free(sdtmig_class_ref_subclass->type);
        sdtmig_class_ref_subclass->type = NULL;
    }
    free(sdtmig_class_ref_subclass);
}

cJSON *sdtmig_class_ref_subclass_convertToJSON(sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_class_ref_subclass->href
    if(sdtmig_class_ref_subclass->href) {
    if(cJSON_AddStringToObject(item, "href", sdtmig_class_ref_subclass->href) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class_ref_subclass->title
    if(sdtmig_class_ref_subclass->title) {
    if(cJSON_AddStringToObject(item, "title", sdtmig_class_ref_subclass->title) == NULL) {
    goto fail; //String
    }
    }


    // sdtmig_class_ref_subclass->type
    if(sdtmig_class_ref_subclass->type) {
    if(cJSON_AddStringToObject(item, "type", sdtmig_class_ref_subclass->type) == NULL) {
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

sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_parseFromJSON(cJSON *sdtmig_class_ref_subclassJSON){

    sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_local_var = NULL;

    // sdtmig_class_ref_subclass->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sdtmig_class_ref_subclassJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sdtmig_class_ref_subclass->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sdtmig_class_ref_subclassJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sdtmig_class_ref_subclass->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sdtmig_class_ref_subclassJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sdtmig_class_ref_subclass_local_var = sdtmig_class_ref_subclass_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sdtmig_class_ref_subclass_local_var;
end:
    return NULL;

}
