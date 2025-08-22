#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_responsegroup.h"



static qrs_responsegroup_t *qrs_responsegroup_create_internal(
    char *label,
    qrs_responsegroup_links_t *_links
    ) {
    qrs_responsegroup_t *qrs_responsegroup_local_var = malloc(sizeof(qrs_responsegroup_t));
    if (!qrs_responsegroup_local_var) {
        return NULL;
    }
    qrs_responsegroup_local_var->label = label;
    qrs_responsegroup_local_var->_links = _links;

    qrs_responsegroup_local_var->_library_owned = 1;
    return qrs_responsegroup_local_var;
}

__attribute__((deprecated)) qrs_responsegroup_t *qrs_responsegroup_create(
    char *label,
    qrs_responsegroup_links_t *_links
    ) {
    return qrs_responsegroup_create_internal (
        label,
        _links
        );
}

void qrs_responsegroup_free(qrs_responsegroup_t *qrs_responsegroup) {
    if(NULL == qrs_responsegroup){
        return ;
    }
    if(qrs_responsegroup->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_responsegroup_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_responsegroup->label) {
        free(qrs_responsegroup->label);
        qrs_responsegroup->label = NULL;
    }
    if (qrs_responsegroup->_links) {
        qrs_responsegroup_links_free(qrs_responsegroup->_links);
        qrs_responsegroup->_links = NULL;
    }
    free(qrs_responsegroup);
}

cJSON *qrs_responsegroup_convertToJSON(qrs_responsegroup_t *qrs_responsegroup) {
    cJSON *item = cJSON_CreateObject();

    // qrs_responsegroup->label
    if(qrs_responsegroup->label) {
    if(cJSON_AddStringToObject(item, "label", qrs_responsegroup->label) == NULL) {
    goto fail; //String
    }
    }


    // qrs_responsegroup->_links
    if(qrs_responsegroup->_links) {
    cJSON *_links_local_JSON = qrs_responsegroup_links_convertToJSON(qrs_responsegroup->_links);
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

qrs_responsegroup_t *qrs_responsegroup_parseFromJSON(cJSON *qrs_responsegroupJSON){

    qrs_responsegroup_t *qrs_responsegroup_local_var = NULL;

    // define the local variable for qrs_responsegroup->_links
    qrs_responsegroup_links_t *_links_local_nonprim = NULL;

    // qrs_responsegroup->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // qrs_responsegroup->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(qrs_responsegroupJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = qrs_responsegroup_links_parseFromJSON(_links); //nonprimitive
    }


    qrs_responsegroup_local_var = qrs_responsegroup_create_internal (
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return qrs_responsegroup_local_var;
end:
    if (_links_local_nonprim) {
        qrs_responsegroup_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
