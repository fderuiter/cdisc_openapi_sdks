#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "root_ct_term.h"



static root_ct_term_t *root_ct_term_create_internal(
    root_ct_term_links_t *_links
    ) {
    root_ct_term_t *root_ct_term_local_var = malloc(sizeof(root_ct_term_t));
    if (!root_ct_term_local_var) {
        return NULL;
    }
    root_ct_term_local_var->_links = _links;

    root_ct_term_local_var->_library_owned = 1;
    return root_ct_term_local_var;
}

__attribute__((deprecated)) root_ct_term_t *root_ct_term_create(
    root_ct_term_links_t *_links
    ) {
    return root_ct_term_create_internal (
        _links
        );
}

void root_ct_term_free(root_ct_term_t *root_ct_term) {
    if(NULL == root_ct_term){
        return ;
    }
    if(root_ct_term->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "root_ct_term_free");
        return ;
    }
    listEntry_t *listEntry;
    if (root_ct_term->_links) {
        root_ct_term_links_free(root_ct_term->_links);
        root_ct_term->_links = NULL;
    }
    free(root_ct_term);
}

cJSON *root_ct_term_convertToJSON(root_ct_term_t *root_ct_term) {
    cJSON *item = cJSON_CreateObject();

    // root_ct_term->_links
    if(root_ct_term->_links) {
    cJSON *_links_local_JSON = root_ct_term_links_convertToJSON(root_ct_term->_links);
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

root_ct_term_t *root_ct_term_parseFromJSON(cJSON *root_ct_termJSON){

    root_ct_term_t *root_ct_term_local_var = NULL;

    // define the local variable for root_ct_term->_links
    root_ct_term_links_t *_links_local_nonprim = NULL;

    // root_ct_term->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(root_ct_termJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = root_ct_term_links_parseFromJSON(_links); //nonprimitive
    }


    root_ct_term_local_var = root_ct_term_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return root_ct_term_local_var;
end:
    if (_links_local_nonprim) {
        root_ct_term_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
