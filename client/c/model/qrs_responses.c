#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_responses.h"



static qrs_responses_t *qrs_responses_create_internal(
    char *ordinal,
    qrs_response_links_t *_links
    ) {
    qrs_responses_t *qrs_responses_local_var = malloc(sizeof(qrs_responses_t));
    if (!qrs_responses_local_var) {
        return NULL;
    }
    qrs_responses_local_var->ordinal = ordinal;
    qrs_responses_local_var->_links = _links;

    qrs_responses_local_var->_library_owned = 1;
    return qrs_responses_local_var;
}

__attribute__((deprecated)) qrs_responses_t *qrs_responses_create(
    char *ordinal,
    qrs_response_links_t *_links
    ) {
    return qrs_responses_create_internal (
        ordinal,
        _links
        );
}

void qrs_responses_free(qrs_responses_t *qrs_responses) {
    if(NULL == qrs_responses){
        return ;
    }
    if(qrs_responses->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_responses_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_responses->ordinal) {
        free(qrs_responses->ordinal);
        qrs_responses->ordinal = NULL;
    }
    if (qrs_responses->_links) {
        qrs_response_links_free(qrs_responses->_links);
        qrs_responses->_links = NULL;
    }
    free(qrs_responses);
}

cJSON *qrs_responses_convertToJSON(qrs_responses_t *qrs_responses) {
    cJSON *item = cJSON_CreateObject();

    // qrs_responses->ordinal
    if(qrs_responses->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", qrs_responses->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responses->_links
    if(qrs_responses->_links) {
    cJSON *_links_local_JSON = qrs_response_links_convertToJSON(qrs_responses->_links);
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

qrs_responses_t *qrs_responses_parseFromJSON(cJSON *qrs_responsesJSON){

    qrs_responses_t *qrs_responses_local_var = NULL;

    // define the local variable for qrs_responses->_links
    qrs_response_links_t *_links_local_nonprim = NULL;

    // qrs_responses->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(qrs_responsesJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // qrs_responses->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(qrs_responsesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = qrs_response_links_parseFromJSON(_links); //nonprimitive
    }


    qrs_responses_local_var = qrs_responses_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return qrs_responses_local_var;
end:
    if (_links_local_nonprim) {
        qrs_response_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
