#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain_ref_element.h"



static cdashig_domain_ref_element_t *cdashig_domain_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    cdashig_domain_ref_element_t *cdashig_domain_ref_element_local_var = malloc(sizeof(cdashig_domain_ref_element_t));
    if (!cdashig_domain_ref_element_local_var) {
        return NULL;
    }
    cdashig_domain_ref_element_local_var->href = href;
    cdashig_domain_ref_element_local_var->title = title;
    cdashig_domain_ref_element_local_var->type = type;

    cdashig_domain_ref_element_local_var->_library_owned = 1;
    return cdashig_domain_ref_element_local_var;
}

__attribute__((deprecated)) cdashig_domain_ref_element_t *cdashig_domain_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return cdashig_domain_ref_element_create_internal (
        href,
        title,
        type
        );
}

void cdashig_domain_ref_element_free(cdashig_domain_ref_element_t *cdashig_domain_ref_element) {
    if(NULL == cdashig_domain_ref_element){
        return ;
    }
    if(cdashig_domain_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain_ref_element->href) {
        free(cdashig_domain_ref_element->href);
        cdashig_domain_ref_element->href = NULL;
    }
    if (cdashig_domain_ref_element->title) {
        free(cdashig_domain_ref_element->title);
        cdashig_domain_ref_element->title = NULL;
    }
    if (cdashig_domain_ref_element->type) {
        free(cdashig_domain_ref_element->type);
        cdashig_domain_ref_element->type = NULL;
    }
    free(cdashig_domain_ref_element);
}

cJSON *cdashig_domain_ref_element_convertToJSON(cdashig_domain_ref_element_t *cdashig_domain_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain_ref_element->href
    if(cdashig_domain_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", cdashig_domain_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_ref_element->title
    if(cdashig_domain_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", cdashig_domain_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_ref_element->type
    if(cdashig_domain_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", cdashig_domain_ref_element->type) == NULL) {
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

cdashig_domain_ref_element_t *cdashig_domain_ref_element_parseFromJSON(cJSON *cdashig_domain_ref_elementJSON){

    cdashig_domain_ref_element_t *cdashig_domain_ref_element_local_var = NULL;

    // cdashig_domain_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(cdashig_domain_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // cdashig_domain_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(cdashig_domain_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // cdashig_domain_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(cdashig_domain_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    cdashig_domain_ref_element_local_var = cdashig_domain_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return cdashig_domain_ref_element_local_var;
end:
    return NULL;

}
