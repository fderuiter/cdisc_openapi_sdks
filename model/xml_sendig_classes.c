#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sendig_classes.h"



static xml_sendig_classes_t *xml_sendig_classes_create_internal(
    sendig_classes_t *self
    ) {
    xml_sendig_classes_t *xml_sendig_classes_local_var = malloc(sizeof(xml_sendig_classes_t));
    if (!xml_sendig_classes_local_var) {
        return NULL;
    }
    xml_sendig_classes_local_var->self = self;

    xml_sendig_classes_local_var->_library_owned = 1;
    return xml_sendig_classes_local_var;
}

__attribute__((deprecated)) xml_sendig_classes_t *xml_sendig_classes_create(
    sendig_classes_t *self
    ) {
    return xml_sendig_classes_create_internal (
        self
        );
}

void xml_sendig_classes_free(xml_sendig_classes_t *xml_sendig_classes) {
    if(NULL == xml_sendig_classes){
        return ;
    }
    if(xml_sendig_classes->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sendig_classes_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sendig_classes->self) {
        sendig_classes_free(xml_sendig_classes->self);
        xml_sendig_classes->self = NULL;
    }
    free(xml_sendig_classes);
}

cJSON *xml_sendig_classes_convertToJSON(xml_sendig_classes_t *xml_sendig_classes) {
    cJSON *item = cJSON_CreateObject();

    // xml_sendig_classes->self
    if(xml_sendig_classes->self) {
    cJSON *self_local_JSON = sendig_classes_convertToJSON(xml_sendig_classes->self);
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

xml_sendig_classes_t *xml_sendig_classes_parseFromJSON(cJSON *xml_sendig_classesJSON){

    xml_sendig_classes_t *xml_sendig_classes_local_var = NULL;

    // define the local variable for xml_sendig_classes->self
    sendig_classes_t *self_local_nonprim = NULL;

    // xml_sendig_classes->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sendig_classesJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_classes_parseFromJSON(self); //nonprimitive
    }


    xml_sendig_classes_local_var = xml_sendig_classes_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sendig_classes_local_var;
end:
    if (self_local_nonprim) {
        sendig_classes_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
