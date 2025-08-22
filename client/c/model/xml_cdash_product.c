#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_cdash_product.h"



static xml_cdash_product_t *xml_cdash_product_create_internal(
    cdash_product_t *self
    ) {
    xml_cdash_product_t *xml_cdash_product_local_var = malloc(sizeof(xml_cdash_product_t));
    if (!xml_cdash_product_local_var) {
        return NULL;
    }
    xml_cdash_product_local_var->self = self;

    xml_cdash_product_local_var->_library_owned = 1;
    return xml_cdash_product_local_var;
}

__attribute__((deprecated)) xml_cdash_product_t *xml_cdash_product_create(
    cdash_product_t *self
    ) {
    return xml_cdash_product_create_internal (
        self
        );
}

void xml_cdash_product_free(xml_cdash_product_t *xml_cdash_product) {
    if(NULL == xml_cdash_product){
        return ;
    }
    if(xml_cdash_product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_cdash_product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_cdash_product->self) {
        cdash_product_free(xml_cdash_product->self);
        xml_cdash_product->self = NULL;
    }
    free(xml_cdash_product);
}

cJSON *xml_cdash_product_convertToJSON(xml_cdash_product_t *xml_cdash_product) {
    cJSON *item = cJSON_CreateObject();

    // xml_cdash_product->self
    if(xml_cdash_product->self) {
    cJSON *self_local_JSON = cdash_product_convertToJSON(xml_cdash_product->self);
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

xml_cdash_product_t *xml_cdash_product_parseFromJSON(cJSON *xml_cdash_productJSON){

    xml_cdash_product_t *xml_cdash_product_local_var = NULL;

    // define the local variable for xml_cdash_product->self
    cdash_product_t *self_local_nonprim = NULL;

    // xml_cdash_product->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_cdash_productJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_product_parseFromJSON(self); //nonprimitive
    }


    xml_cdash_product_local_var = xml_cdash_product_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_cdash_product_local_var;
end:
    if (self_local_nonprim) {
        cdash_product_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
