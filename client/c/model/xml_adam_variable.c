#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_adam_variable.h"



static xml_adam_variable_t *xml_adam_variable_create_internal(
    adam_variable_t *self
    ) {
    xml_adam_variable_t *xml_adam_variable_local_var = malloc(sizeof(xml_adam_variable_t));
    if (!xml_adam_variable_local_var) {
        return NULL;
    }
    xml_adam_variable_local_var->self = self;

    xml_adam_variable_local_var->_library_owned = 1;
    return xml_adam_variable_local_var;
}

__attribute__((deprecated)) xml_adam_variable_t *xml_adam_variable_create(
    adam_variable_t *self
    ) {
    return xml_adam_variable_create_internal (
        self
        );
}

void xml_adam_variable_free(xml_adam_variable_t *xml_adam_variable) {
    if(NULL == xml_adam_variable){
        return ;
    }
    if(xml_adam_variable->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_adam_variable_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_adam_variable->self) {
        adam_variable_free(xml_adam_variable->self);
        xml_adam_variable->self = NULL;
    }
    free(xml_adam_variable);
}

cJSON *xml_adam_variable_convertToJSON(xml_adam_variable_t *xml_adam_variable) {
    cJSON *item = cJSON_CreateObject();

    // xml_adam_variable->self
    if(xml_adam_variable->self) {
    cJSON *self_local_JSON = adam_variable_convertToJSON(xml_adam_variable->self);
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

xml_adam_variable_t *xml_adam_variable_parseFromJSON(cJSON *xml_adam_variableJSON){

    xml_adam_variable_t *xml_adam_variable_local_var = NULL;

    // define the local variable for xml_adam_variable->self
    adam_variable_t *self_local_nonprim = NULL;

    // xml_adam_variable->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_adam_variableJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_variable_parseFromJSON(self); //nonprimitive
    }


    xml_adam_variable_local_var = xml_adam_variable_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_adam_variable_local_var;
end:
    if (self_local_nonprim) {
        adam_variable_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
