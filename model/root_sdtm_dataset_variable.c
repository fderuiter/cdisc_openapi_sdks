#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_sdtm_dataset_variable.h"



static root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_create_internal(
    root_sdtm_dataset_variable_links_t *_links
    ) {
    root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_local_var = malloc(sizeof(root_sdtm_dataset_variable_t));
    if (!root_sdtm_dataset_variable_local_var) {
        return NULL;
    }
    root_sdtm_dataset_variable_local_var->_links = _links;

    root_sdtm_dataset_variable_local_var->_library_owned = 1;
    return root_sdtm_dataset_variable_local_var;
}

__attribute__((deprecated)) root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_create(
    root_sdtm_dataset_variable_links_t *_links
    ) {
    return root_sdtm_dataset_variable_create_internal (
        _links
        );
}

void root_sdtm_dataset_variable_free(root_sdtm_dataset_variable_t *root_sdtm_dataset_variable) {
    if(NULL == root_sdtm_dataset_variable){
        return ;
    }
    if(root_sdtm_dataset_variable->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_sdtm_dataset_variable_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_sdtm_dataset_variable->_links) {
        root_sdtm_dataset_variable_links_free(root_sdtm_dataset_variable->_links);
        root_sdtm_dataset_variable->_links = NULL;
    }
    free(root_sdtm_dataset_variable);
}

cJSON *root_sdtm_dataset_variable_convertToJSON(root_sdtm_dataset_variable_t *root_sdtm_dataset_variable) {
    cJSON *item = cJSON_CreateObject();

    // root_sdtm_dataset_variable->_links
    if(root_sdtm_dataset_variable->_links) {
    cJSON *_links_local_JSON = root_sdtm_dataset_variable_links_convertToJSON(root_sdtm_dataset_variable->_links);
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

root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_parseFromJSON(cJSON *root_sdtm_dataset_variableJSON){

    root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_local_var = NULL;

    // define the local variable for root_sdtm_dataset_variable->_links
    root_sdtm_dataset_variable_links_t *_links_local_nonprim = NULL;

    // root_sdtm_dataset_variable->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(root_sdtm_dataset_variableJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = root_sdtm_dataset_variable_links_parseFromJSON(_links); //nonprimitive
    }


    root_sdtm_dataset_variable_local_var = root_sdtm_dataset_variable_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return root_sdtm_dataset_variable_local_var;
end:
    if (_links_local_nonprim) {
        root_sdtm_dataset_variable_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
