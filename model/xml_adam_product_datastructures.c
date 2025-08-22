#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_adam_product_datastructures.h"



static xml_adam_product_datastructures_t *xml_adam_product_datastructures_create_internal(
    adam_product_datastructures_t *self
    ) {
    xml_adam_product_datastructures_t *xml_adam_product_datastructures_local_var = malloc(sizeof(xml_adam_product_datastructures_t));
    if (!xml_adam_product_datastructures_local_var) {
        return NULL;
    }
    xml_adam_product_datastructures_local_var->self = self;

    xml_adam_product_datastructures_local_var->_library_owned = 1;
    return xml_adam_product_datastructures_local_var;
}

__attribute__((deprecated)) xml_adam_product_datastructures_t *xml_adam_product_datastructures_create(
    adam_product_datastructures_t *self
    ) {
    return xml_adam_product_datastructures_create_internal (
        self
        );
}

void xml_adam_product_datastructures_free(xml_adam_product_datastructures_t *xml_adam_product_datastructures) {
    if(NULL == xml_adam_product_datastructures){
        return ;
    }
    if(xml_adam_product_datastructures->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_adam_product_datastructures_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_adam_product_datastructures->self) {
        adam_product_datastructures_free(xml_adam_product_datastructures->self);
        xml_adam_product_datastructures->self = NULL;
    }
    free(xml_adam_product_datastructures);
}

cJSON *xml_adam_product_datastructures_convertToJSON(xml_adam_product_datastructures_t *xml_adam_product_datastructures) {
    cJSON *item = cJSON_CreateObject();

    // xml_adam_product_datastructures->self
    if(xml_adam_product_datastructures->self) {
    cJSON *self_local_JSON = adam_product_datastructures_convertToJSON(xml_adam_product_datastructures->self);
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

xml_adam_product_datastructures_t *xml_adam_product_datastructures_parseFromJSON(cJSON *xml_adam_product_datastructuresJSON){

    xml_adam_product_datastructures_t *xml_adam_product_datastructures_local_var = NULL;

    // define the local variable for xml_adam_product_datastructures->self
    adam_product_datastructures_t *self_local_nonprim = NULL;

    // xml_adam_product_datastructures->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_adam_product_datastructuresJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_product_datastructures_parseFromJSON(self); //nonprimitive
    }


    xml_adam_product_datastructures_local_var = xml_adam_product_datastructures_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_adam_product_datastructures_local_var;
end:
    if (self_local_nonprim) {
        adam_product_datastructures_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
