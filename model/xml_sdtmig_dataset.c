#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_sdtmig_dataset.h"



static xml_sdtmig_dataset_t *xml_sdtmig_dataset_create_internal(
    sdtmig_dataset_t *self
    ) {
    xml_sdtmig_dataset_t *xml_sdtmig_dataset_local_var = malloc(sizeof(xml_sdtmig_dataset_t));
    if (!xml_sdtmig_dataset_local_var) {
        return NULL;
    }
    xml_sdtmig_dataset_local_var->self = self;

    xml_sdtmig_dataset_local_var->_library_owned = 1;
    return xml_sdtmig_dataset_local_var;
}

__attribute__((deprecated)) xml_sdtmig_dataset_t *xml_sdtmig_dataset_create(
    sdtmig_dataset_t *self
    ) {
    return xml_sdtmig_dataset_create_internal (
        self
        );
}

void xml_sdtmig_dataset_free(xml_sdtmig_dataset_t *xml_sdtmig_dataset) {
    if(NULL == xml_sdtmig_dataset){
        return ;
    }
    if(xml_sdtmig_dataset->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_sdtmig_dataset_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_sdtmig_dataset->self) {
        sdtmig_dataset_free(xml_sdtmig_dataset->self);
        xml_sdtmig_dataset->self = NULL;
    }
    free(xml_sdtmig_dataset);
}

cJSON *xml_sdtmig_dataset_convertToJSON(xml_sdtmig_dataset_t *xml_sdtmig_dataset) {
    cJSON *item = cJSON_CreateObject();

    // xml_sdtmig_dataset->self
    if(xml_sdtmig_dataset->self) {
    cJSON *self_local_JSON = sdtmig_dataset_convertToJSON(xml_sdtmig_dataset->self);
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

xml_sdtmig_dataset_t *xml_sdtmig_dataset_parseFromJSON(cJSON *xml_sdtmig_datasetJSON){

    xml_sdtmig_dataset_t *xml_sdtmig_dataset_local_var = NULL;

    // define the local variable for xml_sdtmig_dataset->self
    sdtmig_dataset_t *self_local_nonprim = NULL;

    // xml_sdtmig_dataset->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_sdtmig_datasetJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_dataset_parseFromJSON(self); //nonprimitive
    }


    xml_sdtmig_dataset_local_var = xml_sdtmig_dataset_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_sdtmig_dataset_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_dataset_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
