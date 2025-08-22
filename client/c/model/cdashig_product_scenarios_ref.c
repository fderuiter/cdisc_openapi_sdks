#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_product_scenarios_ref.h"



static cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref_local_var = malloc(sizeof(cdashig_product_scenarios_ref_t));
    if (!cdashig_product_scenarios_ref_local_var) {
        return NULL;
    }
    cdashig_product_scenarios_ref_local_var->href = href;
    cdashig_product_scenarios_ref_local_var->title = title;
    cdashig_product_scenarios_ref_local_var->type = type;

    cdashig_product_scenarios_ref_local_var->_library_owned = 1;
    return cdashig_product_scenarios_ref_local_var;
}

__attribute__((deprecated)) cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return cdashig_product_scenarios_ref_create_internal (
        href,
        title,
        type
        );
}

void cdashig_product_scenarios_ref_free(cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref) {
    if(NULL == cdashig_product_scenarios_ref){
        return ;
    }
    if(cdashig_product_scenarios_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_product_scenarios_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_product_scenarios_ref->href) {
        free(cdashig_product_scenarios_ref->href);
        cdashig_product_scenarios_ref->href = NULL;
    }
    if (cdashig_product_scenarios_ref->title) {
        free(cdashig_product_scenarios_ref->title);
        cdashig_product_scenarios_ref->title = NULL;
    }
    if (cdashig_product_scenarios_ref->type) {
        free(cdashig_product_scenarios_ref->type);
        cdashig_product_scenarios_ref->type = NULL;
    }
    free(cdashig_product_scenarios_ref);
}

cJSON *cdashig_product_scenarios_ref_convertToJSON(cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_product_scenarios_ref->href
    if(cdashig_product_scenarios_ref->href) {
    if(cJSON_AddStringToObject(item, "href", cdashig_product_scenarios_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios_ref->title
    if(cdashig_product_scenarios_ref->title) {
    if(cJSON_AddStringToObject(item, "title", cdashig_product_scenarios_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_product_scenarios_ref->type
    if(cdashig_product_scenarios_ref->type) {
    if(cJSON_AddStringToObject(item, "type", cdashig_product_scenarios_ref->type) == NULL) {
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

cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref_parseFromJSON(cJSON *cdashig_product_scenarios_refJSON){

    cdashig_product_scenarios_ref_t *cdashig_product_scenarios_ref_local_var = NULL;

    // cdashig_product_scenarios_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenarios_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenarios_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // cdashig_product_scenarios_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(cdashig_product_scenarios_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    cdashig_product_scenarios_ref_local_var = cdashig_product_scenarios_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return cdashig_product_scenarios_ref_local_var;
end:
    return NULL;

}
