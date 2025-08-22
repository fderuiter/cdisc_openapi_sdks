#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_root_sdtm_dataset_variable.h"



static xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable_create_internal(
    root_sdtm_dataset_variable_t *self
    ) {
    xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable_local_var = malloc(sizeof(xml_root_sdtm_dataset_variable_t));
    if (!xml_root_sdtm_dataset_variable_local_var) {
        return NULL;
    }
    xml_root_sdtm_dataset_variable_local_var->self = self;

    xml_root_sdtm_dataset_variable_local_var->_library_owned = 1;
    return xml_root_sdtm_dataset_variable_local_var;
}

__attribute__((deprecated)) xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable_create(
    root_sdtm_dataset_variable_t *self
    ) {
    return xml_root_sdtm_dataset_variable_create_internal (
        self
        );
}

void xml_root_sdtm_dataset_variable_free(xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable) {
    if(NULL == xml_root_sdtm_dataset_variable){
        return ;
    }
    if(xml_root_sdtm_dataset_variable->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_root_sdtm_dataset_variable_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_root_sdtm_dataset_variable->self) {
        root_sdtm_dataset_variable_free(xml_root_sdtm_dataset_variable->self);
        xml_root_sdtm_dataset_variable->self = NULL;
    }
    free(xml_root_sdtm_dataset_variable);
}

cJSON *xml_root_sdtm_dataset_variable_convertToJSON(xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable) {
    cJSON *item = cJSON_CreateObject();

    // xml_root_sdtm_dataset_variable->self
    if(xml_root_sdtm_dataset_variable->self) {
    cJSON *self_local_JSON = root_sdtm_dataset_variable_convertToJSON(xml_root_sdtm_dataset_variable->self);
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

xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable_parseFromJSON(cJSON *xml_root_sdtm_dataset_variableJSON){

    xml_root_sdtm_dataset_variable_t *xml_root_sdtm_dataset_variable_local_var = NULL;

    // define the local variable for xml_root_sdtm_dataset_variable->self
    root_sdtm_dataset_variable_t *self_local_nonprim = NULL;

    // xml_root_sdtm_dataset_variable->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_root_sdtm_dataset_variableJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = root_sdtm_dataset_variable_parseFromJSON(self); //nonprimitive
    }


    xml_root_sdtm_dataset_variable_local_var = xml_root_sdtm_dataset_variable_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_root_sdtm_dataset_variable_local_var;
end:
    if (self_local_nonprim) {
        root_sdtm_dataset_variable_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
