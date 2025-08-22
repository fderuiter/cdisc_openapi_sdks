#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtmig_dataset_variables.h"



static xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_create_internal(
    sdtmig_dataset_variables_t *self
    ) {
    xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_local_var = malloc(sizeof(xml_sdtmig_dataset_variables_t));
    if (!xml_sdtmig_dataset_variables_local_var) {
        return NULL;
    }
    xml_sdtmig_dataset_variables_local_var->self = self;

    xml_sdtmig_dataset_variables_local_var->_library_owned = 1;
    return xml_sdtmig_dataset_variables_local_var;
}

__attribute__((deprecated)) xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_create(
    sdtmig_dataset_variables_t *self
    ) {
    return xml_sdtmig_dataset_variables_create_internal (
        self
        );
}

void xml_sdtmig_dataset_variables_free(xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables) {
    if(NULL == xml_sdtmig_dataset_variables){
        return ;
    }
    if(xml_sdtmig_dataset_variables->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtmig_dataset_variables_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtmig_dataset_variables->self) {
        sdtmig_dataset_variables_free(xml_sdtmig_dataset_variables->self);
        xml_sdtmig_dataset_variables->self = NULL;
    }
    free(xml_sdtmig_dataset_variables);
}

cJSON *xml_sdtmig_dataset_variables_convertToJSON(xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtmig_dataset_variables->self
    if(xml_sdtmig_dataset_variables->self) {
    cJSON *self_local_JSON = sdtmig_dataset_variables_convertToJSON(xml_sdtmig_dataset_variables->self);
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

xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_parseFromJSON(cJSON *xml_sdtmig_dataset_variablesJSON){

    xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_local_var = NULL;

    // define the local variable for xml_sdtmig_dataset_variables->self
    sdtmig_dataset_variables_t *self_local_nonprim = NULL;

    // xml_sdtmig_dataset_variables->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtmig_dataset_variablesJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_dataset_variables_parseFromJSON(self); //nonprimitive
    }


    xml_sdtmig_dataset_variables_local_var = xml_sdtmig_dataset_variables_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtmig_dataset_variables_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_dataset_variables_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
