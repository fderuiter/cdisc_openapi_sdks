#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_packages.h"



static ct_packages_t *ct_packages_create_internal(
    ct_packages_links_t *_links
    ) {
    ct_packages_t *ct_packages_local_var = malloc(sizeof(ct_packages_t));
    if (!ct_packages_local_var) {
        return NULL;
    }
    ct_packages_local_var->_links = _links;

    ct_packages_local_var->_library_owned = 1;
    return ct_packages_local_var;
}

__attribute__((deprecated)) ct_packages_t *ct_packages_create(
    ct_packages_links_t *_links
    ) {
    return ct_packages_create_internal (
        _links
        );
}

void ct_packages_free(ct_packages_t *ct_packages) {
    if(NULL == ct_packages){
        return ;
    }
    if(ct_packages->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_packages_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_packages->_links) {
        ct_packages_links_free(ct_packages->_links);
        ct_packages->_links = NULL;
    }
    free(ct_packages);
}

cJSON *ct_packages_convertToJSON(ct_packages_t *ct_packages) {
    cJSON *item = cJSON_CreateObject();

    // ct_packages->_links
    if(ct_packages->_links) {
    cJSON *_links_local_JSON = ct_packages_links_convertToJSON(ct_packages->_links);
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

ct_packages_t *ct_packages_parseFromJSON(cJSON *ct_packagesJSON){

    ct_packages_t *ct_packages_local_var = NULL;

    // define the local variable for ct_packages->_links
    ct_packages_links_t *_links_local_nonprim = NULL;

    // ct_packages->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(ct_packagesJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = ct_packages_links_parseFromJSON(_links); //nonprimitive
    }


    ct_packages_local_var = ct_packages_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return ct_packages_local_var;
end:
    if (_links_local_nonprim) {
        ct_packages_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
