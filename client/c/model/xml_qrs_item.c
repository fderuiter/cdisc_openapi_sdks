#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_qrs_item.h"



static xml_qrs_item_t *xml_qrs_item_create_internal(
    qrs_item_t *self
    ) {
    xml_qrs_item_t *xml_qrs_item_local_var = malloc(sizeof(xml_qrs_item_t));
    if (!xml_qrs_item_local_var) {
        return NULL;
    }
    xml_qrs_item_local_var->self = self;

    xml_qrs_item_local_var->_library_owned = 1;
    return xml_qrs_item_local_var;
}

__attribute__((deprecated)) xml_qrs_item_t *xml_qrs_item_create(
    qrs_item_t *self
    ) {
    return xml_qrs_item_create_internal (
        self
        );
}

void xml_qrs_item_free(xml_qrs_item_t *xml_qrs_item) {
    if(NULL == xml_qrs_item){
        return ;
    }
    if(xml_qrs_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_qrs_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_qrs_item->self) {
        qrs_item_free(xml_qrs_item->self);
        xml_qrs_item->self = NULL;
    }
    free(xml_qrs_item);
}

cJSON *xml_qrs_item_convertToJSON(xml_qrs_item_t *xml_qrs_item) {
    cJSON *item = cJSON_CreateObject();

    // xml_qrs_item->self
    if(xml_qrs_item->self) {
    cJSON *self_local_JSON = qrs_item_convertToJSON(xml_qrs_item->self);
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

xml_qrs_item_t *xml_qrs_item_parseFromJSON(cJSON *xml_qrs_itemJSON){

    xml_qrs_item_t *xml_qrs_item_local_var = NULL;

    // define the local variable for xml_qrs_item->self
    qrs_item_t *self_local_nonprim = NULL;

    // xml_qrs_item->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_qrs_itemJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_item_parseFromJSON(self); //nonprimitive
    }


    xml_qrs_item_local_var = xml_qrs_item_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_qrs_item_local_var;
end:
    if (self_local_nonprim) {
        qrs_item_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
