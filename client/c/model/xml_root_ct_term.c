#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_root_ct_term.h"



static xml_root_ct_term_t *xml_root_ct_term_create_internal(
    root_ct_term_t *self
    ) {
    xml_root_ct_term_t *xml_root_ct_term_local_var = malloc(sizeof(xml_root_ct_term_t));
    if (!xml_root_ct_term_local_var) {
        return NULL;
    }
    xml_root_ct_term_local_var->self = self;

    xml_root_ct_term_local_var->_library_owned = 1;
    return xml_root_ct_term_local_var;
}

__attribute__((deprecated)) xml_root_ct_term_t *xml_root_ct_term_create(
    root_ct_term_t *self
    ) {
    return xml_root_ct_term_create_internal (
        self
        );
}

void xml_root_ct_term_free(xml_root_ct_term_t *xml_root_ct_term) {
    if(NULL == xml_root_ct_term){
        return ;
    }
    if(xml_root_ct_term->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_root_ct_term_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_root_ct_term->self) {
        root_ct_term_free(xml_root_ct_term->self);
        xml_root_ct_term->self = NULL;
    }
    free(xml_root_ct_term);
}

cJSON *xml_root_ct_term_convertToJSON(xml_root_ct_term_t *xml_root_ct_term) {
    cJSON *item = cJSON_CreateObject();

    // xml_root_ct_term->self
    if(xml_root_ct_term->self) {
    cJSON *self_local_JSON = root_ct_term_convertToJSON(xml_root_ct_term->self);
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

xml_root_ct_term_t *xml_root_ct_term_parseFromJSON(cJSON *xml_root_ct_termJSON){

    xml_root_ct_term_t *xml_root_ct_term_local_var = NULL;

    // define the local variable for xml_root_ct_term->self
    root_ct_term_t *self_local_nonprim = NULL;

    // xml_root_ct_term->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_root_ct_termJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = root_ct_term_parseFromJSON(self); //nonprimitive
    }


    xml_root_ct_term_local_var = xml_root_ct_term_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_root_ct_term_local_var;
end:
    if (self_local_nonprim) {
        root_ct_term_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
