#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_cdashig_scenario.h"



static xml_cdashig_scenario_t *xml_cdashig_scenario_create_internal(
    cdashig_scenario_t *self
    ) {
    xml_cdashig_scenario_t *xml_cdashig_scenario_local_var = malloc(sizeof(xml_cdashig_scenario_t));
    if (!xml_cdashig_scenario_local_var) {
        return NULL;
    }
    xml_cdashig_scenario_local_var->self = self;

    xml_cdashig_scenario_local_var->_library_owned = 1;
    return xml_cdashig_scenario_local_var;
}

__attribute__((deprecated)) xml_cdashig_scenario_t *xml_cdashig_scenario_create(
    cdashig_scenario_t *self
    ) {
    return xml_cdashig_scenario_create_internal (
        self
        );
}

void xml_cdashig_scenario_free(xml_cdashig_scenario_t *xml_cdashig_scenario) {
    if(NULL == xml_cdashig_scenario){
        return ;
    }
    if(xml_cdashig_scenario->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_cdashig_scenario_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_cdashig_scenario->self) {
        cdashig_scenario_free(xml_cdashig_scenario->self);
        xml_cdashig_scenario->self = NULL;
    }
    free(xml_cdashig_scenario);
}

cJSON *xml_cdashig_scenario_convertToJSON(xml_cdashig_scenario_t *xml_cdashig_scenario) {
    cJSON *item = cJSON_CreateObject();

    // xml_cdashig_scenario->self
    if(xml_cdashig_scenario->self) {
    cJSON *self_local_JSON = cdashig_scenario_convertToJSON(xml_cdashig_scenario->self);
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

xml_cdashig_scenario_t *xml_cdashig_scenario_parseFromJSON(cJSON *xml_cdashig_scenarioJSON){

    xml_cdashig_scenario_t *xml_cdashig_scenario_local_var = NULL;

    // define the local variable for xml_cdashig_scenario->self
    cdashig_scenario_t *self_local_nonprim = NULL;

    // xml_cdashig_scenario->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_cdashig_scenarioJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_scenario_parseFromJSON(self); //nonprimitive
    }


    xml_cdashig_scenario_local_var = xml_cdashig_scenario_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_cdashig_scenario_local_var;
end:
    if (self_local_nonprim) {
        cdashig_scenario_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
