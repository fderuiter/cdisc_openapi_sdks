#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_dataset_ref_element.h"



static sendig_dataset_ref_element_t *sendig_dataset_ref_element_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    sendig_dataset_ref_element_t *sendig_dataset_ref_element_local_var = malloc(sizeof(sendig_dataset_ref_element_t));
    if (!sendig_dataset_ref_element_local_var) {
        return NULL;
    }
    sendig_dataset_ref_element_local_var->href = href;
    sendig_dataset_ref_element_local_var->title = title;
    sendig_dataset_ref_element_local_var->type = type;

    sendig_dataset_ref_element_local_var->_library_owned = 1;
    return sendig_dataset_ref_element_local_var;
}

__attribute__((deprecated)) sendig_dataset_ref_element_t *sendig_dataset_ref_element_create(
    char *href,
    char *title,
    char *type
    ) {
    return sendig_dataset_ref_element_create_internal (
        href,
        title,
        type
        );
}

void sendig_dataset_ref_element_free(sendig_dataset_ref_element_t *sendig_dataset_ref_element) {
    if(NULL == sendig_dataset_ref_element){
        return ;
    }
    if(sendig_dataset_ref_element->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_dataset_ref_element_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_dataset_ref_element->href) {
        free(sendig_dataset_ref_element->href);
        sendig_dataset_ref_element->href = NULL;
    }
    if (sendig_dataset_ref_element->title) {
        free(sendig_dataset_ref_element->title);
        sendig_dataset_ref_element->title = NULL;
    }
    if (sendig_dataset_ref_element->type) {
        free(sendig_dataset_ref_element->type);
        sendig_dataset_ref_element->type = NULL;
    }
    free(sendig_dataset_ref_element);
}

cJSON *sendig_dataset_ref_element_convertToJSON(sendig_dataset_ref_element_t *sendig_dataset_ref_element) {
    cJSON *item = cJSON_CreateObject();

    // sendig_dataset_ref_element->href
    if(sendig_dataset_ref_element->href) {
    if(cJSON_AddStringToObject(item, "href", sendig_dataset_ref_element->href) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_ref_element->title
    if(sendig_dataset_ref_element->title) {
    if(cJSON_AddStringToObject(item, "title", sendig_dataset_ref_element->title) == NULL) {
    goto fail; //String
    }
    }


    // sendig_dataset_ref_element->type
    if(sendig_dataset_ref_element->type) {
    if(cJSON_AddStringToObject(item, "type", sendig_dataset_ref_element->type) == NULL) {
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

sendig_dataset_ref_element_t *sendig_dataset_ref_element_parseFromJSON(cJSON *sendig_dataset_ref_elementJSON){

    sendig_dataset_ref_element_t *sendig_dataset_ref_element_local_var = NULL;

    // sendig_dataset_ref_element->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(sendig_dataset_ref_elementJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // sendig_dataset_ref_element->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(sendig_dataset_ref_elementJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // sendig_dataset_ref_element->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(sendig_dataset_ref_elementJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    sendig_dataset_ref_element_local_var = sendig_dataset_ref_element_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return sendig_dataset_ref_element_local_var;
end:
    return NULL;

}
