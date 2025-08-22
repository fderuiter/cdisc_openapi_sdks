#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "xml_cdash_domain.h"



static xml_cdash_domain_t *xml_cdash_domain_create_internal(
    cdash_domain_t *self
    ) {
    xml_cdash_domain_t *xml_cdash_domain_local_var = malloc(sizeof(xml_cdash_domain_t));
    if (!xml_cdash_domain_local_var) {
        return NULL;
    }
    xml_cdash_domain_local_var->self = self;

    xml_cdash_domain_local_var->_library_owned = 1;
    return xml_cdash_domain_local_var;
}

__attribute__((deprecated)) xml_cdash_domain_t *xml_cdash_domain_create(
    cdash_domain_t *self
    ) {
    return xml_cdash_domain_create_internal (
        self
        );
}

void xml_cdash_domain_free(xml_cdash_domain_t *xml_cdash_domain) {
    if(NULL == xml_cdash_domain){
        return ;
    }
    if(xml_cdash_domain->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "xml_cdash_domain_free");
        return ;
    }
    listEntry_t *listEntry;
    if (xml_cdash_domain->self) {
        cdash_domain_free(xml_cdash_domain->self);
        xml_cdash_domain->self = NULL;
    }
    free(xml_cdash_domain);
}

cJSON *xml_cdash_domain_convertToJSON(xml_cdash_domain_t *xml_cdash_domain) {
    cJSON *item = cJSON_CreateObject();

    // xml_cdash_domain->self
    if(xml_cdash_domain->self) {
    cJSON *self_local_JSON = cdash_domain_convertToJSON(xml_cdash_domain->self);
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

xml_cdash_domain_t *xml_cdash_domain_parseFromJSON(cJSON *xml_cdash_domainJSON){

    xml_cdash_domain_t *xml_cdash_domain_local_var = NULL;

    // define the local variable for xml_cdash_domain->self
    cdash_domain_t *self_local_nonprim = NULL;

    // xml_cdash_domain->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(xml_cdash_domainJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_domain_parseFromJSON(self); //nonprimitive
    }


    xml_cdash_domain_local_var = xml_cdash_domain_create_internal (
        self ? self_local_nonprim : NULL
        );

    return xml_cdash_domain_local_var;
end:
    if (self_local_nonprim) {
        cdash_domain_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
