#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_qrs_items.h"



static xml_qrs_items_t *xml_qrs_items_create_internal(
    qrs_items_t *self
    ) {
    xml_qrs_items_t *xml_qrs_items_local_var = malloc(sizeof(xml_qrs_items_t));
    if (!xml_qrs_items_local_var) {
        return NULL;
    }
    xml_qrs_items_local_var->self = self;

    xml_qrs_items_local_var->_library_owned = 1;
    return xml_qrs_items_local_var;
}

__attribute__((deprecated)) xml_qrs_items_t *xml_qrs_items_create(
    qrs_items_t *self
    ) {
    return xml_qrs_items_create_internal (
        self
        );
}

void xml_qrs_items_free(xml_qrs_items_t *xml_qrs_items) {
    if(NULL == xml_qrs_items){
        return ;
    }
    if(xml_qrs_items->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_qrs_items_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_qrs_items->self) {
        qrs_items_free(xml_qrs_items->self);
        xml_qrs_items->self = NULL;
    }
    free(xml_qrs_items);
}

cJSON *xml_qrs_items_convertToJSON(xml_qrs_items_t *xml_qrs_items) {
    cJSON *item = cJSON_CreateObject();

    // xml_qrs_items->self
    if(xml_qrs_items->self) {
    cJSON *self_local_JSON = qrs_items_convertToJSON(xml_qrs_items->self);
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

xml_qrs_items_t *xml_qrs_items_parseFromJSON(cJSON *xml_qrs_itemsJSON){

    xml_qrs_items_t *xml_qrs_items_local_var = NULL;

    // define the local variable for xml_qrs_items->self
    qrs_items_t *self_local_nonprim = NULL;

    // xml_qrs_items->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_qrs_itemsJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_items_parseFromJSON(self); //nonprimitive
    }


    xml_qrs_items_local_var = xml_qrs_items_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_qrs_items_local_var;
end:
    if (self_local_nonprim) {
        qrs_items_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
