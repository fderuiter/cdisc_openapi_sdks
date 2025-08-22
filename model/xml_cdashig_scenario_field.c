#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_cdashig_scenario_field.h"



static xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_create_internal(
    cdashig_scenario_field_t *self
    ) {
    xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_local_var = malloc(sizeof(xml_cdashig_scenario_field_t));
    if (!xml_cdashig_scenario_field_local_var) {
        return NULL;
    }
    xml_cdashig_scenario_field_local_var->self = self;

    xml_cdashig_scenario_field_local_var->_library_owned = 1;
    return xml_cdashig_scenario_field_local_var;
}

__attribute__((deprecated)) xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_create(
    cdashig_scenario_field_t *self
    ) {
    return xml_cdashig_scenario_field_create_internal (
        self
        );
}

void xml_cdashig_scenario_field_free(xml_cdashig_scenario_field_t *xml_cdashig_scenario_field) {
    if(NULL == xml_cdashig_scenario_field){
        return ;
    }
    if(xml_cdashig_scenario_field->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_cdashig_scenario_field_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_cdashig_scenario_field->self) {
        cdashig_scenario_field_free(xml_cdashig_scenario_field->self);
        xml_cdashig_scenario_field->self = NULL;
    }
    free(xml_cdashig_scenario_field);
}

cJSON *xml_cdashig_scenario_field_convertToJSON(xml_cdashig_scenario_field_t *xml_cdashig_scenario_field) {
    cJSON *item = cJSON_CreateObject();

    // xml_cdashig_scenario_field->self
    if(xml_cdashig_scenario_field->self) {
    cJSON *self_local_JSON = cdashig_scenario_field_convertToJSON(xml_cdashig_scenario_field->self);
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

xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_parseFromJSON(cJSON *xml_cdashig_scenario_fieldJSON){

    xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_local_var = NULL;

    // define the local variable for xml_cdashig_scenario_field->self
    cdashig_scenario_field_t *self_local_nonprim = NULL;

    // xml_cdashig_scenario_field->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_cdashig_scenario_fieldJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_scenario_field_parseFromJSON(self); //nonprimitive
    }


    xml_cdashig_scenario_field_local_var = xml_cdashig_scenario_field_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_cdashig_scenario_field_local_var;
end:
    if (self_local_nonprim) {
        cdashig_scenario_field_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
