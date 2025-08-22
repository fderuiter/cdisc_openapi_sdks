#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "products.h"



static products_t *products_create_internal(
    products_links_t *_links
    ) {
    products_t *products_local_var = malloc(sizeof(products_t));
    if (!products_local_var) {
        return NULL;
    }
    products_local_var->_links = _links;

    products_local_var->_library_owned = 1;
    return products_local_var;
}

__attribute__((deprecated)) products_t *products_create(
    products_links_t *_links
    ) {
    return products_create_internal (
        _links
        );
}

void products_free(products_t *products) {
    if(NULL == products){
        return ;
    }
    if(products->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "products_free");
        return ;
    }
    listEntry_t *listEntry;
    if (products->_links) {
        products_links_free(products->_links);
        products->_links = NULL;
    }
    free(products);
}

cJSON *products_convertToJSON(products_t *products) {
    cJSON *item = cJSON_CreateObject();

    // products->_links
    if(products->_links) {
    cJSON *_links_local_JSON = products_links_convertToJSON(products->_links);
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

products_t *products_parseFromJSON(cJSON *productsJSON){

    products_t *products_local_var = NULL;

    // define the local variable for products->_links
    products_links_t *_links_local_nonprim = NULL;

    // products->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(productsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = products_links_parseFromJSON(_links); //nonprimitive
    }


    products_local_var = products_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return products_local_var;
end:
    if (_links_local_nonprim) {
        products_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
