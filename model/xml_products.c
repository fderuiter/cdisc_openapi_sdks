#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_products.h"



static xml_products_t *xml_products_create_internal(
    products_t *self
    ) {
    xml_products_t *xml_products_local_var = malloc(sizeof(xml_products_t));
    if (!xml_products_local_var) {
        return NULL;
    }
    xml_products_local_var->self = self;

    xml_products_local_var->_library_owned = 1;
    return xml_products_local_var;
}

__attribute__((deprecated)) xml_products_t *xml_products_create(
    products_t *self
    ) {
    return xml_products_create_internal (
        self
        );
}

void xml_products_free(xml_products_t *xml_products) {
    if(NULL == xml_products){
        return ;
    }
    if(xml_products->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_products_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_products->self) {
        products_free(xml_products->self);
        xml_products->self = NULL;
    }
    free(xml_products);
}

cJSON *xml_products_convertToJSON(xml_products_t *xml_products) {
    cJSON *item = cJSON_CreateObject();

    // xml_products->self
    if(xml_products->self) {
    cJSON *self_local_JSON = products_convertToJSON(xml_products->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
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

xml_products_t *xml_products_parseFromJSON(cJSON *xml_productsJSON){

    xml_products_t *xml_products_local_var = NULL;

    // define the local variable for xml_products->self
    products_t *self_local_nonprim = NULL;

    // xml_products->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_productsJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = products_parseFromJSON(self); //nonprimitive
    }


    xml_products_local_var = xml_products_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_products_local_var;
end:
    if (self_local_nonprim) {
        products_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
