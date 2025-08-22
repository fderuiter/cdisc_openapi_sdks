#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_terminology.h"



static productgroup_terminology_t *productgroup_terminology_create_internal(
    productgroup_terminology_links_t *_links
    ) {
    productgroup_terminology_t *productgroup_terminology_local_var = malloc(sizeof(productgroup_terminology_t));
    if (!productgroup_terminology_local_var) {
        return NULL;
    }
    productgroup_terminology_local_var->_links = _links;

    productgroup_terminology_local_var->_library_owned = 1;
    return productgroup_terminology_local_var;
}

__attribute__((deprecated)) productgroup_terminology_t *productgroup_terminology_create(
    productgroup_terminology_links_t *_links
    ) {
    return productgroup_terminology_create_internal (
        _links
        );
}

void productgroup_terminology_free(productgroup_terminology_t *productgroup_terminology) {
    if(NULL == productgroup_terminology){
        return ;
    }
    if(productgroup_terminology->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_terminology_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_terminology->_links) {
        productgroup_terminology_links_free(productgroup_terminology->_links);
        productgroup_terminology->_links = NULL;
    }
    free(productgroup_terminology);
}

cJSON *productgroup_terminology_convertToJSON(productgroup_terminology_t *productgroup_terminology) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_terminology->_links
    if(productgroup_terminology->_links) {
    cJSON *_links_local_JSON = productgroup_terminology_links_convertToJSON(productgroup_terminology->_links);
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

productgroup_terminology_t *productgroup_terminology_parseFromJSON(cJSON *productgroup_terminologyJSON){

    productgroup_terminology_t *productgroup_terminology_local_var = NULL;

    // define the local variable for productgroup_terminology->_links
    productgroup_terminology_links_t *_links_local_nonprim = NULL;

    // productgroup_terminology->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(productgroup_terminologyJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = productgroup_terminology_links_parseFromJSON(_links); //nonprimitive
    }


    productgroup_terminology_local_var = productgroup_terminology_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return productgroup_terminology_local_var;
end:
    if (_links_local_nonprim) {
        productgroup_terminology_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
