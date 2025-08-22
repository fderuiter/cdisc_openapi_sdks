#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtm_class.h"



static xml_sdtm_class_t *xml_sdtm_class_create_internal(
    sdtm_class_t *self
    ) {
    xml_sdtm_class_t *xml_sdtm_class_local_var = malloc(sizeof(xml_sdtm_class_t));
    if (!xml_sdtm_class_local_var) {
        return NULL;
    }
    xml_sdtm_class_local_var->self = self;

    xml_sdtm_class_local_var->_library_owned = 1;
    return xml_sdtm_class_local_var;
}

__attribute__((deprecated)) xml_sdtm_class_t *xml_sdtm_class_create(
    sdtm_class_t *self
    ) {
    return xml_sdtm_class_create_internal (
        self
        );
}

void xml_sdtm_class_free(xml_sdtm_class_t *xml_sdtm_class) {
    if(NULL == xml_sdtm_class){
        return ;
    }
    if(xml_sdtm_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtm_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtm_class->self) {
        sdtm_class_free(xml_sdtm_class->self);
        xml_sdtm_class->self = NULL;
    }
    free(xml_sdtm_class);
}

cJSON *xml_sdtm_class_convertToJSON(xml_sdtm_class_t *xml_sdtm_class) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtm_class->self
    if(xml_sdtm_class->self) {
    cJSON *self_local_JSON = sdtm_class_convertToJSON(xml_sdtm_class->self);
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

xml_sdtm_class_t *xml_sdtm_class_parseFromJSON(cJSON *xml_sdtm_classJSON){

    xml_sdtm_class_t *xml_sdtm_class_local_var = NULL;

    // define the local variable for xml_sdtm_class->self
    sdtm_class_t *self_local_nonprim = NULL;

    // xml_sdtm_class->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtm_classJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_class_parseFromJSON(self); //nonprimitive
    }


    xml_sdtm_class_local_var = xml_sdtm_class_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtm_class_local_var;
end:
    if (self_local_nonprim) {
        sdtm_class_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
