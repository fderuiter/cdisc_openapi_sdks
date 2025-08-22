#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_productgroup_data_analysis.h"



static xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_create_internal(
    productgroup_data_analysis_t *self
    ) {
    xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_local_var = malloc(sizeof(xml_productgroup_data_analysis_t));
    if (!xml_productgroup_data_analysis_local_var) {
        return NULL;
    }
    xml_productgroup_data_analysis_local_var->self = self;

    xml_productgroup_data_analysis_local_var->_library_owned = 1;
    return xml_productgroup_data_analysis_local_var;
}

__attribute__((deprecated)) xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_create(
    productgroup_data_analysis_t *self
    ) {
    return xml_productgroup_data_analysis_create_internal (
        self
        );
}

void xml_productgroup_data_analysis_free(xml_productgroup_data_analysis_t *xml_productgroup_data_analysis) {
    if(NULL == xml_productgroup_data_analysis){
        return ;
    }
    if(xml_productgroup_data_analysis->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_productgroup_data_analysis_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_productgroup_data_analysis->self) {
        productgroup_data_analysis_free(xml_productgroup_data_analysis->self);
        xml_productgroup_data_analysis->self = NULL;
    }
    free(xml_productgroup_data_analysis);
}

cJSON *xml_productgroup_data_analysis_convertToJSON(xml_productgroup_data_analysis_t *xml_productgroup_data_analysis) {
    cJSON *item = cJSON_CreateObject();

    // xml_productgroup_data_analysis->self
    if(xml_productgroup_data_analysis->self) {
    cJSON *self_local_JSON = productgroup_data_analysis_convertToJSON(xml_productgroup_data_analysis->self);
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

xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_parseFromJSON(cJSON *xml_productgroup_data_analysisJSON){

    xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_local_var = NULL;

    // define the local variable for xml_productgroup_data_analysis->self
    productgroup_data_analysis_t *self_local_nonprim = NULL;

    // xml_productgroup_data_analysis->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_productgroup_data_analysisJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_data_analysis_parseFromJSON(self); //nonprimitive
    }


    xml_productgroup_data_analysis_local_var = xml_productgroup_data_analysis_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_productgroup_data_analysis_local_var;
end:
    if (self_local_nonprim) {
        productgroup_data_analysis_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
