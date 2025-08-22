#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtmig_class_datasets.h"



static xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets_create_internal(
    sdtmig_class_datasets_t *self
    ) {
    xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets_local_var = malloc(sizeof(xml_sdtmig_class_datasets_t));
    if (!xml_sdtmig_class_datasets_local_var) {
        return NULL;
    }
    xml_sdtmig_class_datasets_local_var->self = self;

    xml_sdtmig_class_datasets_local_var->_library_owned = 1;
    return xml_sdtmig_class_datasets_local_var;
}

__attribute__((deprecated)) xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets_create(
    sdtmig_class_datasets_t *self
    ) {
    return xml_sdtmig_class_datasets_create_internal (
        self
        );
}

void xml_sdtmig_class_datasets_free(xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets) {
    if(NULL == xml_sdtmig_class_datasets){
        return ;
    }
    if(xml_sdtmig_class_datasets->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtmig_class_datasets_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtmig_class_datasets->self) {
        sdtmig_class_datasets_free(xml_sdtmig_class_datasets->self);
        xml_sdtmig_class_datasets->self = NULL;
    }
    free(xml_sdtmig_class_datasets);
}

cJSON *xml_sdtmig_class_datasets_convertToJSON(xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtmig_class_datasets->self
    if(xml_sdtmig_class_datasets->self) {
    cJSON *self_local_JSON = sdtmig_class_datasets_convertToJSON(xml_sdtmig_class_datasets->self);
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

xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets_parseFromJSON(cJSON *xml_sdtmig_class_datasetsJSON){

    xml_sdtmig_class_datasets_t *xml_sdtmig_class_datasets_local_var = NULL;

    // define the local variable for xml_sdtmig_class_datasets->self
    sdtmig_class_datasets_t *self_local_nonprim = NULL;

    // xml_sdtmig_class_datasets->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtmig_class_datasetsJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_class_datasets_parseFromJSON(self); //nonprimitive
    }


    xml_sdtmig_class_datasets_local_var = xml_sdtmig_class_datasets_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtmig_class_datasets_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_class_datasets_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
