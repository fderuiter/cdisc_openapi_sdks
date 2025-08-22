#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtm_classes.h"



static xml_sdtm_classes_t *xml_sdtm_classes_create_internal(
    sdtm_classes_t *self
    ) {
    xml_sdtm_classes_t *xml_sdtm_classes_local_var = malloc(sizeof(xml_sdtm_classes_t));
    if (!xml_sdtm_classes_local_var) {
        return NULL;
    }
    xml_sdtm_classes_local_var->self = self;

    xml_sdtm_classes_local_var->_library_owned = 1;
    return xml_sdtm_classes_local_var;
}

__attribute__((deprecated)) xml_sdtm_classes_t *xml_sdtm_classes_create(
    sdtm_classes_t *self
    ) {
    return xml_sdtm_classes_create_internal (
        self
        );
}

void xml_sdtm_classes_free(xml_sdtm_classes_t *xml_sdtm_classes) {
    if(NULL == xml_sdtm_classes){
        return ;
    }
    if(xml_sdtm_classes->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtm_classes_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtm_classes->self) {
        sdtm_classes_free(xml_sdtm_classes->self);
        xml_sdtm_classes->self = NULL;
    }
    free(xml_sdtm_classes);
}

cJSON *xml_sdtm_classes_convertToJSON(xml_sdtm_classes_t *xml_sdtm_classes) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtm_classes->self
    if(xml_sdtm_classes->self) {
    cJSON *self_local_JSON = sdtm_classes_convertToJSON(xml_sdtm_classes->self);
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

xml_sdtm_classes_t *xml_sdtm_classes_parseFromJSON(cJSON *xml_sdtm_classesJSON){

    xml_sdtm_classes_t *xml_sdtm_classes_local_var = NULL;

    // define the local variable for xml_sdtm_classes->self
    sdtm_classes_t *self_local_nonprim = NULL;

    // xml_sdtm_classes->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtm_classesJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_classes_parseFromJSON(self); //nonprimitive
    }


    xml_sdtm_classes_local_var = xml_sdtm_classes_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtm_classes_local_var;
end:
    if (self_local_nonprim) {
        sdtm_classes_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
