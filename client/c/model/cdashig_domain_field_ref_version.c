#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain_field_ref_version.h"



static cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_local_var = malloc(sizeof(cdashig_domain_field_ref_version_t));
    if (!cdashig_domain_field_ref_version_local_var) {
        return NULL;
    }
    cdashig_domain_field_ref_version_local_var->href = href;
    cdashig_domain_field_ref_version_local_var->title = title;
    cdashig_domain_field_ref_version_local_var->type = type;

    cdashig_domain_field_ref_version_local_var->_library_owned = 1;
    return cdashig_domain_field_ref_version_local_var;
}

__attribute__((deprecated)) cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_create(
    char *href,
    char *title,
    char *type
    ) {
    return cdashig_domain_field_ref_version_create_internal (
        href,
        title,
        type
        );
}

void cdashig_domain_field_ref_version_free(cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version) {
    if(NULL == cdashig_domain_field_ref_version){
        return ;
    }
    if(cdashig_domain_field_ref_version->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_field_ref_version_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain_field_ref_version->href) {
        free(cdashig_domain_field_ref_version->href);
        cdashig_domain_field_ref_version->href = NULL;
    }
    if (cdashig_domain_field_ref_version->title) {
        free(cdashig_domain_field_ref_version->title);
        cdashig_domain_field_ref_version->title = NULL;
    }
    if (cdashig_domain_field_ref_version->type) {
        free(cdashig_domain_field_ref_version->type);
        cdashig_domain_field_ref_version->type = NULL;
    }
    free(cdashig_domain_field_ref_version);
}

cJSON *cdashig_domain_field_ref_version_convertToJSON(cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain_field_ref_version->href
    if(cdashig_domain_field_ref_version->href) {
    if(cJSON_AddStringToObject(item, "href", cdashig_domain_field_ref_version->href) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field_ref_version->title
    if(cdashig_domain_field_ref_version->title) {
    if(cJSON_AddStringToObject(item, "title", cdashig_domain_field_ref_version->title) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field_ref_version->type
    if(cdashig_domain_field_ref_version->type) {
    if(cJSON_AddStringToObject(item, "type", cdashig_domain_field_ref_version->type) == NULL) {
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

cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_parseFromJSON(cJSON *cdashig_domain_field_ref_versionJSON){

    cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_local_var = NULL;

    // cdashig_domain_field_ref_version->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(cdashig_domain_field_ref_versionJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field_ref_version->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(cdashig_domain_field_ref_versionJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field_ref_version->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(cdashig_domain_field_ref_versionJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    cdashig_domain_field_ref_version_local_var = cdashig_domain_field_ref_version_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return cdashig_domain_field_ref_version_local_var;
end:
    return NULL;

}
