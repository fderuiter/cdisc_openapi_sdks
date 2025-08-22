#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_qrs.h"



static productgroup_qrs_t *productgroup_qrs_create_internal(
    productgroup_qrs_links_t *_links
    ) {
    productgroup_qrs_t *productgroup_qrs_local_var = malloc(sizeof(productgroup_qrs_t));
    if (!productgroup_qrs_local_var) {
        return NULL;
    }
    productgroup_qrs_local_var->_links = _links;

    productgroup_qrs_local_var->_library_owned = 1;
    return productgroup_qrs_local_var;
}

__attribute__((deprecated)) productgroup_qrs_t *productgroup_qrs_create(
    productgroup_qrs_links_t *_links
    ) {
    return productgroup_qrs_create_internal (
        _links
        );
}

void productgroup_qrs_free(productgroup_qrs_t *productgroup_qrs) {
    if(NULL == productgroup_qrs){
        return ;
    }
    if(productgroup_qrs->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_qrs_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_qrs->_links) {
        productgroup_qrs_links_free(productgroup_qrs->_links);
        productgroup_qrs->_links = NULL;
    }
    free(productgroup_qrs);
}

cJSON *productgroup_qrs_convertToJSON(productgroup_qrs_t *productgroup_qrs) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_qrs->_links
    if(productgroup_qrs->_links) {
    cJSON *_links_local_JSON = productgroup_qrs_links_convertToJSON(productgroup_qrs->_links);
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

productgroup_qrs_t *productgroup_qrs_parseFromJSON(cJSON *productgroup_qrsJSON){

    productgroup_qrs_t *productgroup_qrs_local_var = NULL;

    // define the local variable for productgroup_qrs->_links
    productgroup_qrs_links_t *_links_local_nonprim = NULL;

    // productgroup_qrs->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(productgroup_qrsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = productgroup_qrs_links_parseFromJSON(_links); //nonprimitive
    }


    productgroup_qrs_local_var = productgroup_qrs_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return productgroup_qrs_local_var;
end:
    if (_links_local_nonprim) {
        productgroup_qrs_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
