#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtm_dataset.h"



static xml_sdtm_dataset_t *xml_sdtm_dataset_create_internal(
    sdtm_dataset_t *self
    ) {
    xml_sdtm_dataset_t *xml_sdtm_dataset_local_var = malloc(sizeof(xml_sdtm_dataset_t));
    if (!xml_sdtm_dataset_local_var) {
        return NULL;
    }
    xml_sdtm_dataset_local_var->self = self;

    xml_sdtm_dataset_local_var->_library_owned = 1;
    return xml_sdtm_dataset_local_var;
}

__attribute__((deprecated)) xml_sdtm_dataset_t *xml_sdtm_dataset_create(
    sdtm_dataset_t *self
    ) {
    return xml_sdtm_dataset_create_internal (
        self
        );
}

void xml_sdtm_dataset_free(xml_sdtm_dataset_t *xml_sdtm_dataset) {
    if(NULL == xml_sdtm_dataset){
        return ;
    }
    if(xml_sdtm_dataset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtm_dataset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtm_dataset->self) {
        sdtm_dataset_free(xml_sdtm_dataset->self);
        xml_sdtm_dataset->self = NULL;
    }
    free(xml_sdtm_dataset);
}

cJSON *xml_sdtm_dataset_convertToJSON(xml_sdtm_dataset_t *xml_sdtm_dataset) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtm_dataset->self
    if(xml_sdtm_dataset->self) {
    cJSON *self_local_JSON = sdtm_dataset_convertToJSON(xml_sdtm_dataset->self);
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

xml_sdtm_dataset_t *xml_sdtm_dataset_parseFromJSON(cJSON *xml_sdtm_datasetJSON){

    xml_sdtm_dataset_t *xml_sdtm_dataset_local_var = NULL;

    // define the local variable for xml_sdtm_dataset->self
    sdtm_dataset_t *self_local_nonprim = NULL;

    // xml_sdtm_dataset->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtm_datasetJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_dataset_parseFromJSON(self); //nonprimitive
    }


    xml_sdtm_dataset_local_var = xml_sdtm_dataset_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtm_dataset_local_var;
end:
    if (self_local_nonprim) {
        sdtm_dataset_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
