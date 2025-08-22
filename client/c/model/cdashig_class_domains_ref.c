#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_class_domains_ref.h"



static cdashig_class_domains_ref_t *cdashig_class_domains_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    cdashig_class_domains_ref_t *cdashig_class_domains_ref_local_var = malloc(sizeof(cdashig_class_domains_ref_t));
    if (!cdashig_class_domains_ref_local_var) {
        return NULL;
    }
    cdashig_class_domains_ref_local_var->href = href;
    cdashig_class_domains_ref_local_var->title = title;
    cdashig_class_domains_ref_local_var->type = type;

    cdashig_class_domains_ref_local_var->_library_owned = 1;
    return cdashig_class_domains_ref_local_var;
}

__attribute__((deprecated)) cdashig_class_domains_ref_t *cdashig_class_domains_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return cdashig_class_domains_ref_create_internal (
        href,
        title,
        type
        );
}

void cdashig_class_domains_ref_free(cdashig_class_domains_ref_t *cdashig_class_domains_ref) {
    if(NULL == cdashig_class_domains_ref){
        return ;
    }
    if(cdashig_class_domains_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_class_domains_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_class_domains_ref->href) {
        free(cdashig_class_domains_ref->href);
        cdashig_class_domains_ref->href = NULL;
    }
    if (cdashig_class_domains_ref->title) {
        free(cdashig_class_domains_ref->title);
        cdashig_class_domains_ref->title = NULL;
    }
    if (cdashig_class_domains_ref->type) {
        free(cdashig_class_domains_ref->type);
        cdashig_class_domains_ref->type = NULL;
    }
    free(cdashig_class_domains_ref);
}

cJSON *cdashig_class_domains_ref_convertToJSON(cdashig_class_domains_ref_t *cdashig_class_domains_ref) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_class_domains_ref->href
    if(cdashig_class_domains_ref->href) {
    if(cJSON_AddStringToObject(item, "href", cdashig_class_domains_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class_domains_ref->title
    if(cdashig_class_domains_ref->title) {
    if(cJSON_AddStringToObject(item, "title", cdashig_class_domains_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class_domains_ref->type
    if(cdashig_class_domains_ref->type) {
    if(cJSON_AddStringToObject(item, "type", cdashig_class_domains_ref->type) == NULL) {
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

cdashig_class_domains_ref_t *cdashig_class_domains_ref_parseFromJSON(cJSON *cdashig_class_domains_refJSON){

    cdashig_class_domains_ref_t *cdashig_class_domains_ref_local_var = NULL;

    // cdashig_class_domains_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(cdashig_class_domains_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // cdashig_class_domains_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(cdashig_class_domains_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // cdashig_class_domains_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(cdashig_class_domains_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    cdashig_class_domains_ref_local_var = cdashig_class_domains_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return cdashig_class_domains_ref_local_var;
end:
    return NULL;

}
