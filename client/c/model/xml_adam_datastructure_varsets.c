#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_adam_datastructure_varsets.h"



static xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_create_internal(
    adam_datastructure_varsets_t *self
    ) {
    xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_local_var = malloc(sizeof(xml_adam_datastructure_varsets_t));
    if (!xml_adam_datastructure_varsets_local_var) {
        return NULL;
    }
    xml_adam_datastructure_varsets_local_var->self = self;

    xml_adam_datastructure_varsets_local_var->_library_owned = 1;
    return xml_adam_datastructure_varsets_local_var;
}

__attribute__((deprecated)) xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_create(
    adam_datastructure_varsets_t *self
    ) {
    return xml_adam_datastructure_varsets_create_internal (
        self
        );
}

void xml_adam_datastructure_varsets_free(xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets) {
    if(NULL == xml_adam_datastructure_varsets){
        return ;
    }
    if(xml_adam_datastructure_varsets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_adam_datastructure_varsets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_adam_datastructure_varsets->self) {
        adam_datastructure_varsets_free(xml_adam_datastructure_varsets->self);
        xml_adam_datastructure_varsets->self = NULL;
    }
    free(xml_adam_datastructure_varsets);
}

cJSON *xml_adam_datastructure_varsets_convertToJSON(xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets) {
    cJSON *item = cJSON_CreateObject();

    // xml_adam_datastructure_varsets->self
    if(xml_adam_datastructure_varsets->self) {
    cJSON *self_local_JSON = adam_datastructure_varsets_convertToJSON(xml_adam_datastructure_varsets->self);
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

xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_parseFromJSON(cJSON *xml_adam_datastructure_varsetsJSON){

    xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_local_var = NULL;

    // define the local variable for xml_adam_datastructure_varsets->self
    adam_datastructure_varsets_t *self_local_nonprim = NULL;

    // xml_adam_datastructure_varsets->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_adam_datastructure_varsetsJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_datastructure_varsets_parseFromJSON(self); //nonprimitive
    }


    xml_adam_datastructure_varsets_local_var = xml_adam_datastructure_varsets_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_adam_datastructure_varsets_local_var;
end:
    if (self_local_nonprim) {
        adam_datastructure_varsets_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
