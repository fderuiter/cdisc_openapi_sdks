#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_qrs_responsegroups.h"



static xml_qrs_responsegroups_t *xml_qrs_responsegroups_create_internal(
    qrs_responsegroups_t *self
    ) {
    xml_qrs_responsegroups_t *xml_qrs_responsegroups_local_var = malloc(sizeof(xml_qrs_responsegroups_t));
    if (!xml_qrs_responsegroups_local_var) {
        return NULL;
    }
    xml_qrs_responsegroups_local_var->self = self;

    xml_qrs_responsegroups_local_var->_library_owned = 1;
    return xml_qrs_responsegroups_local_var;
}

__attribute__((deprecated)) xml_qrs_responsegroups_t *xml_qrs_responsegroups_create(
    qrs_responsegroups_t *self
    ) {
    return xml_qrs_responsegroups_create_internal (
        self
        );
}

void xml_qrs_responsegroups_free(xml_qrs_responsegroups_t *xml_qrs_responsegroups) {
    if(NULL == xml_qrs_responsegroups){
        return ;
    }
    if(xml_qrs_responsegroups->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_qrs_responsegroups_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_qrs_responsegroups->self) {
        qrs_responsegroups_free(xml_qrs_responsegroups->self);
        xml_qrs_responsegroups->self = NULL;
    }
    free(xml_qrs_responsegroups);
}

cJSON *xml_qrs_responsegroups_convertToJSON(xml_qrs_responsegroups_t *xml_qrs_responsegroups) {
    cJSON *item = cJSON_CreateObject();

    // xml_qrs_responsegroups->self
    if(xml_qrs_responsegroups->self) {
    cJSON *self_local_JSON = qrs_responsegroups_convertToJSON(xml_qrs_responsegroups->self);
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

xml_qrs_responsegroups_t *xml_qrs_responsegroups_parseFromJSON(cJSON *xml_qrs_responsegroupsJSON){

    xml_qrs_responsegroups_t *xml_qrs_responsegroups_local_var = NULL;

    // define the local variable for xml_qrs_responsegroups->self
    qrs_responsegroups_t *self_local_nonprim = NULL;

    // xml_qrs_responsegroups->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_qrs_responsegroupsJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_responsegroups_parseFromJSON(self); //nonprimitive
    }


    xml_qrs_responsegroups_local_var = xml_qrs_responsegroups_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_qrs_responsegroups_local_var;
end:
    if (self_local_nonprim) {
        qrs_responsegroups_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
