#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_responsegroup_ref.h"



static qrs_responsegroup_ref_t *qrs_responsegroup_ref_create_internal(
    char *href,
    char *title,
    char *type
    ) {
    qrs_responsegroup_ref_t *qrs_responsegroup_ref_local_var = malloc(sizeof(qrs_responsegroup_ref_t));
    if (!qrs_responsegroup_ref_local_var) {
        return NULL;
    }
    qrs_responsegroup_ref_local_var->href = href;
    qrs_responsegroup_ref_local_var->title = title;
    qrs_responsegroup_ref_local_var->type = type;

    qrs_responsegroup_ref_local_var->_library_owned = 1;
    return qrs_responsegroup_ref_local_var;
}

__attribute__((deprecated)) qrs_responsegroup_ref_t *qrs_responsegroup_ref_create(
    char *href,
    char *title,
    char *type
    ) {
    return qrs_responsegroup_ref_create_internal (
        href,
        title,
        type
        );
}

void qrs_responsegroup_ref_free(qrs_responsegroup_ref_t *qrs_responsegroup_ref) {
    if(NULL == qrs_responsegroup_ref){
        return ;
    }
    if(qrs_responsegroup_ref->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_responsegroup_ref_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_responsegroup_ref->href) {
        free(qrs_responsegroup_ref->href);
        qrs_responsegroup_ref->href = NULL;
    }
    if (qrs_responsegroup_ref->title) {
        free(qrs_responsegroup_ref->title);
        qrs_responsegroup_ref->title = NULL;
    }
    if (qrs_responsegroup_ref->type) {
        free(qrs_responsegroup_ref->type);
        qrs_responsegroup_ref->type = NULL;
    }
    free(qrs_responsegroup_ref);
}

cJSON *qrs_responsegroup_ref_convertToJSON(qrs_responsegroup_ref_t *qrs_responsegroup_ref) {
    cJSON *item = cJSON_CreateObject();

    // qrs_responsegroup_ref->href
    if(qrs_responsegroup_ref->href) {
    if(cJSON_AddStringToObject(item, "href", qrs_responsegroup_ref->href) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroup_ref->title
    if(qrs_responsegroup_ref->title) {
    if(cJSON_AddStringToObject(item, "title", qrs_responsegroup_ref->title) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroup_ref->type
    if(qrs_responsegroup_ref->type) {
    if(cJSON_AddStringToObject(item, "type", qrs_responsegroup_ref->type) == NULL) {
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

qrs_responsegroup_ref_t *qrs_responsegroup_ref_parseFromJSON(cJSON *qrs_responsegroup_refJSON){

    qrs_responsegroup_ref_t *qrs_responsegroup_ref_local_var = NULL;

    // qrs_responsegroup_ref->href
    cJSON *href = cJSON_GetObjectItemCaseSensitive(qrs_responsegroup_refJSON, "href");
    if (cJSON_IsNull(href)) {
        href = NULL;
    }
    if (href) { 
    if(!cJSON_IsString(href) && !cJSON_IsNull(href))
    {
    goto end; //String
    }
    }

    // qrs_responsegroup_ref->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(qrs_responsegroup_refJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // qrs_responsegroup_ref->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(qrs_responsegroup_refJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    qrs_responsegroup_ref_local_var = qrs_responsegroup_ref_create_internal (
        href && !cJSON_IsNull(href) ? strdup(href->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return qrs_responsegroup_ref_local_var;
end:
    return NULL;

}
