#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_cdash_domain_field.h"



static root_cdash_domain_field_t *root_cdash_domain_field_create_internal(
    root_cdash_domain_field_links_t *_links
    ) {
    root_cdash_domain_field_t *root_cdash_domain_field_local_var = malloc(sizeof(root_cdash_domain_field_t));
    if (!root_cdash_domain_field_local_var) {
        return NULL;
    }
    root_cdash_domain_field_local_var->_links = _links;

    root_cdash_domain_field_local_var->_library_owned = 1;
    return root_cdash_domain_field_local_var;
}

__attribute__((deprecated)) root_cdash_domain_field_t *root_cdash_domain_field_create(
    root_cdash_domain_field_links_t *_links
    ) {
    return root_cdash_domain_field_create_internal (
        _links
        );
}

void root_cdash_domain_field_free(root_cdash_domain_field_t *root_cdash_domain_field) {
    if(NULL == root_cdash_domain_field){
        return ;
    }
    if(root_cdash_domain_field->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_cdash_domain_field_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_cdash_domain_field->_links) {
        root_cdash_domain_field_links_free(root_cdash_domain_field->_links);
        root_cdash_domain_field->_links = NULL;
    }
    free(root_cdash_domain_field);
}

cJSON *root_cdash_domain_field_convertToJSON(root_cdash_domain_field_t *root_cdash_domain_field) {
    cJSON *item = cJSON_CreateObject();

    // root_cdash_domain_field->_links
    if(root_cdash_domain_field->_links) {
    cJSON *_links_local_JSON = root_cdash_domain_field_links_convertToJSON(root_cdash_domain_field->_links);
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

root_cdash_domain_field_t *root_cdash_domain_field_parseFromJSON(cJSON *root_cdash_domain_fieldJSON){

    root_cdash_domain_field_t *root_cdash_domain_field_local_var = NULL;

    // define the local variable for root_cdash_domain_field->_links
    root_cdash_domain_field_links_t *_links_local_nonprim = NULL;

    // root_cdash_domain_field->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(root_cdash_domain_fieldJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = root_cdash_domain_field_links_parseFromJSON(_links); //nonprimitive
    }


    root_cdash_domain_field_local_var = root_cdash_domain_field_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return root_cdash_domain_field_local_var;
end:
    if (_links_local_nonprim) {
        root_cdash_domain_field_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
