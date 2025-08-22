#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sendig_class.h"



static xml_sendig_class_t *xml_sendig_class_create_internal(
    sendig_class_t *self
    ) {
    xml_sendig_class_t *xml_sendig_class_local_var = malloc(sizeof(xml_sendig_class_t));
    if (!xml_sendig_class_local_var) {
        return NULL;
    }
    xml_sendig_class_local_var->self = self;

    xml_sendig_class_local_var->_library_owned = 1;
    return xml_sendig_class_local_var;
}

__attribute__((deprecated)) xml_sendig_class_t *xml_sendig_class_create(
    sendig_class_t *self
    ) {
    return xml_sendig_class_create_internal (
        self
        );
}

void xml_sendig_class_free(xml_sendig_class_t *xml_sendig_class) {
    if(NULL == xml_sendig_class){
        return ;
    }
    if(xml_sendig_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sendig_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sendig_class->self) {
        sendig_class_free(xml_sendig_class->self);
        xml_sendig_class->self = NULL;
    }
    free(xml_sendig_class);
}

cJSON *xml_sendig_class_convertToJSON(xml_sendig_class_t *xml_sendig_class) {
    cJSON *item = cJSON_CreateObject();

    // xml_sendig_class->self
    if(xml_sendig_class->self) {
    cJSON *self_local_JSON = sendig_class_convertToJSON(xml_sendig_class->self);
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

xml_sendig_class_t *xml_sendig_class_parseFromJSON(cJSON *xml_sendig_classJSON){

    xml_sendig_class_t *xml_sendig_class_local_var = NULL;

    // define the local variable for xml_sendig_class->self
    sendig_class_t *self_local_nonprim = NULL;

    // xml_sendig_class->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sendig_classJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_class_parseFromJSON(self); //nonprimitive
    }


    xml_sendig_class_local_var = xml_sendig_class_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sendig_class_local_var;
end:
    if (self_local_nonprim) {
        sendig_class_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
