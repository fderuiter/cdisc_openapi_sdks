#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_item.h"



static qrs_item_t *qrs_item_create_internal(
    char *ordinal,
    char *label,
    char *question_text,
    qrs_item_links_t *_links
    ) {
    qrs_item_t *qrs_item_local_var = malloc(sizeof(qrs_item_t));
    if (!qrs_item_local_var) {
        return NULL;
    }
    qrs_item_local_var->ordinal = ordinal;
    qrs_item_local_var->label = label;
    qrs_item_local_var->question_text = question_text;
    qrs_item_local_var->_links = _links;

    qrs_item_local_var->_library_owned = 1;
    return qrs_item_local_var;
}

__attribute__((deprecated)) qrs_item_t *qrs_item_create(
    char *ordinal,
    char *label,
    char *question_text,
    qrs_item_links_t *_links
    ) {
    return qrs_item_create_internal (
        ordinal,
        label,
        question_text,
        _links
        );
}

void qrs_item_free(qrs_item_t *qrs_item) {
    if(NULL == qrs_item){
        return ;
    }
    if(qrs_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_item->ordinal) {
        free(qrs_item->ordinal);
        qrs_item->ordinal = NULL;
    }
    if (qrs_item->label) {
        free(qrs_item->label);
        qrs_item->label = NULL;
    }
    if (qrs_item->question_text) {
        free(qrs_item->question_text);
        qrs_item->question_text = NULL;
    }
    if (qrs_item->_links) {
        qrs_item_links_free(qrs_item->_links);
        qrs_item->_links = NULL;
    }
    free(qrs_item);
}

cJSON *qrs_item_convertToJSON(qrs_item_t *qrs_item) {
    cJSON *item = cJSON_CreateObject();

    // qrs_item->ordinal
    if(qrs_item->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", qrs_item->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // qrs_item->label
    if(qrs_item->label) {
    if(cJSON_AddStringToObject(item, "label", qrs_item->label) == NULL) {
    goto fail; //String
    }
    }


    // qrs_item->question_text
    if(qrs_item->question_text) {
    if(cJSON_AddStringToObject(item, "questionText", qrs_item->question_text) == NULL) {
    goto fail; //String
    }
    }


    // qrs_item->_links
    if(qrs_item->_links) {
    cJSON *_links_local_JSON = qrs_item_links_convertToJSON(qrs_item->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

qrs_item_t *qrs_item_parseFromJSON(cJSON *qrs_itemJSON){

    qrs_item_t *qrs_item_local_var = NULL;

    // define the local variable for qrs_item->_links
    qrs_item_links_t *_links_local_nonprim = NULL;

    // qrs_item->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(qrs_itemJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // qrs_item->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(qrs_itemJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // qrs_item->question_text
    cJSON *question_text = cJSON_GetObjectItemCaseSensitive(qrs_itemJSON, "questionText");
    if (cJSON_IsNull(question_text)) {
        question_text = NULL;
    }
    if (question_text) { 
    if(!cJSON_IsString(question_text) && !cJSON_IsNull(question_text))
    {
    goto end; //String
    }
    }

    // qrs_item->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(qrs_itemJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = qrs_item_links_parseFromJSON(_links); //nonprimitive
    }


    qrs_item_local_var = qrs_item_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        question_text && !cJSON_IsNull(question_text) ? strdup(question_text->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return qrs_item_local_var;
end:
    if (_links_local_nonprim) {
        qrs_item_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
