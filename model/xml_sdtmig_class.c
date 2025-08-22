#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtmig_class.h"



static xml_sdtmig_class_t *xml_sdtmig_class_create_internal(
    sdtmig_class_t *self
    ) {
    xml_sdtmig_class_t *xml_sdtmig_class_local_var = malloc(sizeof(xml_sdtmig_class_t));
    if (!xml_sdtmig_class_local_var) {
        return NULL;
    }
    xml_sdtmig_class_local_var->self = self;

    xml_sdtmig_class_local_var->_library_owned = 1;
    return xml_sdtmig_class_local_var;
}

__attribute__((deprecated)) xml_sdtmig_class_t *xml_sdtmig_class_create(
    sdtmig_class_t *self
    ) {
    return xml_sdtmig_class_create_internal (
        self
        );
}

void xml_sdtmig_class_free(xml_sdtmig_class_t *xml_sdtmig_class) {
    if(NULL == xml_sdtmig_class){
        return ;
    }
    if(xml_sdtmig_class->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtmig_class_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtmig_class->self) {
        sdtmig_class_free(xml_sdtmig_class->self);
        xml_sdtmig_class->self = NULL;
    }
    free(xml_sdtmig_class);
}

cJSON *xml_sdtmig_class_convertToJSON(xml_sdtmig_class_t *xml_sdtmig_class) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtmig_class->self
    if(xml_sdtmig_class->self) {
    cJSON *self_local_JSON = sdtmig_class_convertToJSON(xml_sdtmig_class->self);
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

xml_sdtmig_class_t *xml_sdtmig_class_parseFromJSON(cJSON *xml_sdtmig_classJSON){

    xml_sdtmig_class_t *xml_sdtmig_class_local_var = NULL;

    // define the local variable for xml_sdtmig_class->self
    sdtmig_class_t *self_local_nonprim = NULL;

    // xml_sdtmig_class->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtmig_classJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_class_parseFromJSON(self); //nonprimitive
    }


    xml_sdtmig_class_local_var = xml_sdtmig_class_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtmig_class_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_class_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
