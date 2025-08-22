#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_dataset_variable_ref_version.h"



static sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_local_var = malloc(sizeof(sendig_dataset_variable_ref_version_t));
    if (!sendig_dataset_variable_ref_version_local_var) {
        return NULL;
    }
    sendig_dataset_variable_ref_version_local_var->href = href;
    sendig_dataset_variable_ref_version_local_var->title = title;
    sendig_dataset_variable_ref_version_local_var->type = type;

    sendig_dataset_variable_ref_version_local_var->_library_owned = 1;
    return sendig_dataset_variable_ref_version_local_var;
}

__attribute__((deprecated)) sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_create(
    char *href,
    char *title,
    char *type
    ) {
    return sendig_dataset_variable_ref_version_create_internal (
        href,
        title,
        type
        );
}

void sendig_dataset_variable_ref_version_free(sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version) {
    if(NULL == sendig_dataset_variable_ref_version){
        return ;
    }
    if(sendig_dataset_variable_ref_version->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_dataset_variable_ref_version_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_dataset_variable_ref_version->href) {
        free(sendig_dataset_variable_ref_version->href);
        sendig_dataset_variable_ref_version->href = NULL;
    }
    if (sendig_dataset_variable_ref_version->title) {
        free(sendig_dataset_variable_ref_version->title);
        sendig_dataset_variable_ref_version->title = NULL;
    }
    if (sendig_dataset_variable_ref_version->type) {
        free(sendig_dataset_variable_ref_version->type);
        sendig_dataset_variable_ref_version->type = NULL;
    }
    free(sendig_dataset_variable_ref_version);
}

cJSON *sendig_dataset_variable_ref_version_convertToJSON(sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version) {
    cJSON *item = cJSON_CreateObject();

    // sendig_dataset_variable_ref_version->href
    if(sendig_dataset_variable_ref_version->href) {
    if(cJSON_AddStringToObject(item, "href", sendig_dataset_variable_ref_version->href) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variable_ref_version->title
    if(sendig_dataset_variable_ref_version->title) {
    if(cJSON_AddStringToObject(item, "title", sendig_dataset_variable_ref_version->title) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_variable_ref_version->type
    if(sendig_dataset_variable_ref_version->type) {
    if(cJSON_AddStringToObject(item, "type", sendig_dataset_variable_ref_version->type) == NULL) {
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

sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_parseFromJSON(cJSON *sendig_dataset_variable_ref_versionJSON){

    sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_local_var = NULL;

    // sendig_dataset_variable_ref_version->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_ref_versionJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variable_ref_version->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_ref_versionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sendig_dataset_variable_ref_version->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sendig_dataset_variable_ref_versionJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sendig_dataset_variable_ref_version_local_var = sendig_dataset_variable_ref_version_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sendig_dataset_variable_ref_version_local_var;
end:
    return NULL;

}
