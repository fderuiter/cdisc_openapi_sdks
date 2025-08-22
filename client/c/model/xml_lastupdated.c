#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_lastupdated.h"



static xml_lastupdated_t *xml_lastupdated_create_internal(
    lastupdated_t *self
    ) {
    xml_lastupdated_t *xml_lastupdated_local_var = malloc(sizeof(xml_lastupdated_t));
    if (!xml_lastupdated_local_var) {
        return NULL;
    }
    xml_lastupdated_local_var->self = self;

    xml_lastupdated_local_var->_library_owned = 1;
    return xml_lastupdated_local_var;
}

__attribute__((deprecated)) xml_lastupdated_t *xml_lastupdated_create(
    lastupdated_t *self
    ) {
    return xml_lastupdated_create_internal (
        self
        );
}

void xml_lastupdated_free(xml_lastupdated_t *xml_lastupdated) {
    if(NULL == xml_lastupdated){
        return ;
    }
    if(xml_lastupdated->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_lastupdated_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_lastupdated->self) {
        lastupdated_free(xml_lastupdated->self);
        xml_lastupdated->self = NULL;
    }
    free(xml_lastupdated);
}

cJSON *xml_lastupdated_convertToJSON(xml_lastupdated_t *xml_lastupdated) {
    cJSON *item = cJSON_CreateObject();

    // xml_lastupdated->self
    if(xml_lastupdated->self) {
    cJSON *self_local_JSON = lastupdated_convertToJSON(xml_lastupdated->self);
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

xml_lastupdated_t *xml_lastupdated_parseFromJSON(cJSON *xml_lastupdatedJSON){

    xml_lastupdated_t *xml_lastupdated_local_var = NULL;

    // define the local variable for xml_lastupdated->self
    lastupdated_t *self_local_nonprim = NULL;

    // xml_lastupdated->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_lastupdatedJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = lastupdated_parseFromJSON(self); //nonprimitive
    }


    xml_lastupdated_local_var = xml_lastupdated_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_lastupdated_local_var;
end:
    if (self_local_nonprim) {
        lastupdated_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
