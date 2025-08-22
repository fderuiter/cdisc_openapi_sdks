#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_cdashig_class.h"



static xml_cdashig_class_t *xml_cdashig_class_create_internal(
    cdashig_class_t *self
    ) {
    xml_cdashig_class_t *xml_cdashig_class_local_var = malloc(sizeof(xml_cdashig_class_t));
    if (!xml_cdashig_class_local_var) {
        return NULL;
    }
    xml_cdashig_class_local_var->self = self;

    xml_cdashig_class_local_var->_library_owned = 1;
    return xml_cdashig_class_local_var;
}

__attribute__((deprecated)) xml_cdashig_class_t *xml_cdashig_class_create(
    cdashig_class_t *self
    ) {
    return xml_cdashig_class_create_internal (
        self
        );
}

void xml_cdashig_class_free(xml_cdashig_class_t *xml_cdashig_class) {
    if(NULL == xml_cdashig_class){
        return ;
    }
    if(xml_cdashig_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_cdashig_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_cdashig_class->self) {
        cdashig_class_free(xml_cdashig_class->self);
        xml_cdashig_class->self = NULL;
    }
    free(xml_cdashig_class);
}

cJSON *xml_cdashig_class_convertToJSON(xml_cdashig_class_t *xml_cdashig_class) {
    cJSON *item = cJSON_CreateObject();

    // xml_cdashig_class->self
    if(xml_cdashig_class->self) {
    cJSON *self_local_JSON = cdashig_class_convertToJSON(xml_cdashig_class->self);
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

xml_cdashig_class_t *xml_cdashig_class_parseFromJSON(cJSON *xml_cdashig_classJSON){

    xml_cdashig_class_t *xml_cdashig_class_local_var = NULL;

    // define the local variable for xml_cdashig_class->self
    cdashig_class_t *self_local_nonprim = NULL;

    // xml_cdashig_class->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_cdashig_classJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_class_parseFromJSON(self); //nonprimitive
    }


    xml_cdashig_class_local_var = xml_cdashig_class_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_cdashig_class_local_var;
end:
    if (self_local_nonprim) {
        cdashig_class_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
