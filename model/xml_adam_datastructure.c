#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_adam_datastructure.h"



static xml_adam_datastructure_t *xml_adam_datastructure_create_internal(
    adam_datastructure_t *self
    ) {
    xml_adam_datastructure_t *xml_adam_datastructure_local_var = malloc(sizeof(xml_adam_datastructure_t));
    if (!xml_adam_datastructure_local_var) {
        return NULL;
    }
    xml_adam_datastructure_local_var->self = self;

    xml_adam_datastructure_local_var->_library_owned = 1;
    return xml_adam_datastructure_local_var;
}

__attribute__((deprecated)) xml_adam_datastructure_t *xml_adam_datastructure_create(
    adam_datastructure_t *self
    ) {
    return xml_adam_datastructure_create_internal (
        self
        );
}

void xml_adam_datastructure_free(xml_adam_datastructure_t *xml_adam_datastructure) {
    if(NULL == xml_adam_datastructure){
        return ;
    }
    if(xml_adam_datastructure->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_adam_datastructure_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_adam_datastructure->self) {
        adam_datastructure_free(xml_adam_datastructure->self);
        xml_adam_datastructure->self = NULL;
    }
    free(xml_adam_datastructure);
}

cJSON *xml_adam_datastructure_convertToJSON(xml_adam_datastructure_t *xml_adam_datastructure) {
    cJSON *item = cJSON_CreateObject();

    // xml_adam_datastructure->self
    if(xml_adam_datastructure->self) {
    cJSON *self_local_JSON = adam_datastructure_convertToJSON(xml_adam_datastructure->self);
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

xml_adam_datastructure_t *xml_adam_datastructure_parseFromJSON(cJSON *xml_adam_datastructureJSON){

    xml_adam_datastructure_t *xml_adam_datastructure_local_var = NULL;

    // define the local variable for xml_adam_datastructure->self
    adam_datastructure_t *self_local_nonprim = NULL;

    // xml_adam_datastructure->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_adam_datastructureJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_datastructure_parseFromJSON(self); //nonprimitive
    }


    xml_adam_datastructure_local_var = xml_adam_datastructure_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_adam_datastructure_local_var;
end:
    if (self_local_nonprim) {
        adam_datastructure_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
