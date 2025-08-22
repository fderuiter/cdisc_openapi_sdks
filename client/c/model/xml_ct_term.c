#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_ct_term.h"



static xml_ct_term_t *xml_ct_term_create_internal(
    ct_term_t *self
    ) {
    xml_ct_term_t *xml_ct_term_local_var = malloc(sizeof(xml_ct_term_t));
    if (!xml_ct_term_local_var) {
        return NULL;
    }
    xml_ct_term_local_var->self = self;

    xml_ct_term_local_var->_library_owned = 1;
    return xml_ct_term_local_var;
}

__attribute__((deprecated)) xml_ct_term_t *xml_ct_term_create(
    ct_term_t *self
    ) {
    return xml_ct_term_create_internal (
        self
        );
}

void xml_ct_term_free(xml_ct_term_t *xml_ct_term) {
    if(NULL == xml_ct_term){
        return ;
    }
    if(xml_ct_term->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_ct_term_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_ct_term->self) {
        ct_term_free(xml_ct_term->self);
        xml_ct_term->self = NULL;
    }
    free(xml_ct_term);
}

cJSON *xml_ct_term_convertToJSON(xml_ct_term_t *xml_ct_term) {
    cJSON *item = cJSON_CreateObject();

    // xml_ct_term->self
    if(xml_ct_term->self) {
    cJSON *self_local_JSON = ct_term_convertToJSON(xml_ct_term->self);
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

xml_ct_term_t *xml_ct_term_parseFromJSON(cJSON *xml_ct_termJSON){

    xml_ct_term_t *xml_ct_term_local_var = NULL;

    // define the local variable for xml_ct_term->self
    ct_term_t *self_local_nonprim = NULL;

    // xml_ct_term->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_ct_termJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = ct_term_parseFromJSON(self); //nonprimitive
    }


    xml_ct_term_local_var = xml_ct_term_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_ct_term_local_var;
end:
    if (self_local_nonprim) {
        ct_term_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
