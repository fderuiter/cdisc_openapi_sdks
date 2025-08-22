#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_class_domains_ref.h"



static cdash_class_domains_ref_t *cdash_class_domains_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    cdash_class_domains_ref_t *cdash_class_domains_ref_local_var = malloc(sizeof(cdash_class_domains_ref_t));
    if (!cdash_class_domains_ref_local_var) {
        return NULL;
    }
    cdash_class_domains_ref_local_var->href = href;
    cdash_class_domains_ref_local_var->title = title;
    cdash_class_domains_ref_local_var->type = type;

    cdash_class_domains_ref_local_var->_library_owned = 1;
    return cdash_class_domains_ref_local_var;
}

__attribute__((deprecated)) cdash_class_domains_ref_t *cdash_class_domains_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return cdash_class_domains_ref_create_internal (
        href,
        title,
        type
        );
}

void cdash_class_domains_ref_free(cdash_class_domains_ref_t *cdash_class_domains_ref) {
    if(NULL == cdash_class_domains_ref){
        return ;
    }
    if(cdash_class_domains_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_class_domains_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_class_domains_ref->href) {
        free(cdash_class_domains_ref->href);
        cdash_class_domains_ref->href = NULL;
    }
    if (cdash_class_domains_ref->title) {
        free(cdash_class_domains_ref->title);
        cdash_class_domains_ref->title = NULL;
    }
    if (cdash_class_domains_ref->type) {
        free(cdash_class_domains_ref->type);
        cdash_class_domains_ref->type = NULL;
    }
    free(cdash_class_domains_ref);
}

cJSON *cdash_class_domains_ref_convertToJSON(cdash_class_domains_ref_t *cdash_class_domains_ref) {
    cJSON *item = cJSON_CreateObject();

    // cdash_class_domains_ref->href
    if(cdash_class_domains_ref->href) {
    if(cJSON_AddStringToObject(item, "href", cdash_class_domains_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_domains_ref->title
    if(cdash_class_domains_ref->title) {
    if(cJSON_AddStringToObject(item, "title", cdash_class_domains_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_domains_ref->type
    if(cdash_class_domains_ref->type) {
    if(cJSON_AddStringToObject(item, "type", cdash_class_domains_ref->type) == NULL) {
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

cdash_class_domains_ref_t *cdash_class_domains_ref_parseFromJSON(cJSON *cdash_class_domains_refJSON){

    cdash_class_domains_ref_t *cdash_class_domains_ref_local_var = NULL;

    // cdash_class_domains_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(cdash_class_domains_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // cdash_class_domains_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(cdash_class_domains_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // cdash_class_domains_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(cdash_class_domains_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    cdash_class_domains_ref_local_var = cdash_class_domains_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return cdash_class_domains_ref_local_var;
end:
    return NULL;

}
