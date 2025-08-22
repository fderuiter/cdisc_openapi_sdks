#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_about.h"



static xml_about_t *xml_about_create_internal(
    about_t *self
    ) {
    xml_about_t *xml_about_local_var = malloc(sizeof(xml_about_t));
    if (!xml_about_local_var) {
        return NULL;
    }
    xml_about_local_var->self = self;

    xml_about_local_var->_library_owned = 1;
    return xml_about_local_var;
}

__attribute__((deprecated)) xml_about_t *xml_about_create(
    about_t *self
    ) {
    return xml_about_create_internal (
        self
        );
}

void xml_about_free(xml_about_t *xml_about) {
    if(NULL == xml_about){
        return ;
    }
    if(xml_about->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_about_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_about->self) {
        about_free(xml_about->self);
        xml_about->self = NULL;
    }
    free(xml_about);
}

cJSON *xml_about_convertToJSON(xml_about_t *xml_about) {
    cJSON *item = cJSON_CreateObject();

    // xml_about->self
    if(xml_about->self) {
    cJSON *self_local_JSON = about_convertToJSON(xml_about->self);
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

xml_about_t *xml_about_parseFromJSON(cJSON *xml_aboutJSON){

    xml_about_t *xml_about_local_var = NULL;

    // define the local variable for xml_about->self
    about_t *self_local_nonprim = NULL;

    // xml_about->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_aboutJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = about_parseFromJSON(self); //nonprimitive
    }


    xml_about_local_var = xml_about_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_about_local_var;
end:
    if (self_local_nonprim) {
        about_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
