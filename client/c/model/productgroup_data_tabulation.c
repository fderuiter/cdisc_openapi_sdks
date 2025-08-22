#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_data_tabulation.h"



static productgroup_data_tabulation_t *productgroup_data_tabulation_create_internal(
    productgroup_data_tabulation_links_t *_links
    ) {
    productgroup_data_tabulation_t *productgroup_data_tabulation_local_var = malloc(sizeof(productgroup_data_tabulation_t));
    if (!productgroup_data_tabulation_local_var) {
        return NULL;
    }
    productgroup_data_tabulation_local_var->_links = _links;

    productgroup_data_tabulation_local_var->_library_owned = 1;
    return productgroup_data_tabulation_local_var;
}

__attribute__((deprecated)) productgroup_data_tabulation_t *productgroup_data_tabulation_create(
    productgroup_data_tabulation_links_t *_links
    ) {
    return productgroup_data_tabulation_create_internal (
        _links
        );
}

void productgroup_data_tabulation_free(productgroup_data_tabulation_t *productgroup_data_tabulation) {
    if(NULL == productgroup_data_tabulation){
        return ;
    }
    if(productgroup_data_tabulation->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_data_tabulation_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_data_tabulation->_links) {
        productgroup_data_tabulation_links_free(productgroup_data_tabulation->_links);
        productgroup_data_tabulation->_links = NULL;
    }
    free(productgroup_data_tabulation);
}

cJSON *productgroup_data_tabulation_convertToJSON(productgroup_data_tabulation_t *productgroup_data_tabulation) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_data_tabulation->_links
    if(productgroup_data_tabulation->_links) {
    cJSON *_links_local_JSON = productgroup_data_tabulation_links_convertToJSON(productgroup_data_tabulation->_links);
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

productgroup_data_tabulation_t *productgroup_data_tabulation_parseFromJSON(cJSON *productgroup_data_tabulationJSON){

    productgroup_data_tabulation_t *productgroup_data_tabulation_local_var = NULL;

    // define the local variable for productgroup_data_tabulation->_links
    productgroup_data_tabulation_links_t *_links_local_nonprim = NULL;

    // productgroup_data_tabulation->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(productgroup_data_tabulationJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = productgroup_data_tabulation_links_parseFromJSON(_links); //nonprimitive
    }


    productgroup_data_tabulation_local_var = productgroup_data_tabulation_create_internal (
        _links ? _links_local_nonprim : NULL
        );

    return productgroup_data_tabulation_local_var;
end:
    if (_links_local_nonprim) {
        productgroup_data_tabulation_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
