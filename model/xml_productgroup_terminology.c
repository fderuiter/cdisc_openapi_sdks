#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_productgroup_terminology.h"



static xml_productgroup_terminology_t *xml_productgroup_terminology_create_internal(
    productgroup_terminology_t *self
    ) {
    xml_productgroup_terminology_t *xml_productgroup_terminology_local_var = malloc(sizeof(xml_productgroup_terminology_t));
    if (!xml_productgroup_terminology_local_var) {
        return NULL;
    }
    xml_productgroup_terminology_local_var->self = self;

    xml_productgroup_terminology_local_var->_library_owned = 1;
    return xml_productgroup_terminology_local_var;
}

__attribute__((deprecated)) xml_productgroup_terminology_t *xml_productgroup_terminology_create(
    productgroup_terminology_t *self
    ) {
    return xml_productgroup_terminology_create_internal (
        self
        );
}

void xml_productgroup_terminology_free(xml_productgroup_terminology_t *xml_productgroup_terminology) {
    if(NULL == xml_productgroup_terminology){
        return ;
    }
    if(xml_productgroup_terminology->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_productgroup_terminology_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_productgroup_terminology->self) {
        productgroup_terminology_free(xml_productgroup_terminology->self);
        xml_productgroup_terminology->self = NULL;
    }
    free(xml_productgroup_terminology);
}

cJSON *xml_productgroup_terminology_convertToJSON(xml_productgroup_terminology_t *xml_productgroup_terminology) {
    cJSON *item = cJSON_CreateObject();

    // xml_productgroup_terminology->self
    if(xml_productgroup_terminology->self) {
    cJSON *self_local_JSON = productgroup_terminology_convertToJSON(xml_productgroup_terminology->self);
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

xml_productgroup_terminology_t *xml_productgroup_terminology_parseFromJSON(cJSON *xml_productgroup_terminologyJSON){

    xml_productgroup_terminology_t *xml_productgroup_terminology_local_var = NULL;

    // define the local variable for xml_productgroup_terminology->self
    productgroup_terminology_t *self_local_nonprim = NULL;

    // xml_productgroup_terminology->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_productgroup_terminologyJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_terminology_parseFromJSON(self); //nonprimitive
    }


    xml_productgroup_terminology_local_var = xml_productgroup_terminology_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_productgroup_terminology_local_var;
end:
    if (self_local_nonprim) {
        productgroup_terminology_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
