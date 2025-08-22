#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_adam_datastructure_variables.h"



static xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_create_internal(
    adam_datastructure_variables_t *self
    ) {
    xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_local_var = malloc(sizeof(xml_adam_datastructure_variables_t));
    if (!xml_adam_datastructure_variables_local_var) {
        return NULL;
    }
    xml_adam_datastructure_variables_local_var->self = self;

    xml_adam_datastructure_variables_local_var->_library_owned = 1;
    return xml_adam_datastructure_variables_local_var;
}

__attribute__((deprecated)) xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_create(
    adam_datastructure_variables_t *self
    ) {
    return xml_adam_datastructure_variables_create_internal (
        self
        );
}

void xml_adam_datastructure_variables_free(xml_adam_datastructure_variables_t *xml_adam_datastructure_variables) {
    if(NULL == xml_adam_datastructure_variables){
        return ;
    }
    if(xml_adam_datastructure_variables->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_adam_datastructure_variables_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_adam_datastructure_variables->self) {
        adam_datastructure_variables_free(xml_adam_datastructure_variables->self);
        xml_adam_datastructure_variables->self = NULL;
    }
    free(xml_adam_datastructure_variables);
}

cJSON *xml_adam_datastructure_variables_convertToJSON(xml_adam_datastructure_variables_t *xml_adam_datastructure_variables) {
    cJSON *item = cJSON_CreateObject();

    // xml_adam_datastructure_variables->self
    if(xml_adam_datastructure_variables->self) {
    cJSON *self_local_JSON = adam_datastructure_variables_convertToJSON(xml_adam_datastructure_variables->self);
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

xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_parseFromJSON(cJSON *xml_adam_datastructure_variablesJSON){

    xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_local_var = NULL;

    // define the local variable for xml_adam_datastructure_variables->self
    adam_datastructure_variables_t *self_local_nonprim = NULL;

    // xml_adam_datastructure_variables->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_adam_datastructure_variablesJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_datastructure_variables_parseFromJSON(self); //nonprimitive
    }


    xml_adam_datastructure_variables_local_var = xml_adam_datastructure_variables_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_adam_datastructure_variables_local_var;
end:
    if (self_local_nonprim) {
        adam_datastructure_variables_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
