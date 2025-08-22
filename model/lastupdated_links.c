#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "lastupdated_links.h"



static lastupdated_links_t *lastupdated_links_create_internal(
    lastupdated_ref_t *self
    ) {
    lastupdated_links_t *lastupdated_links_local_var = malloc(sizeof(lastupdated_links_t));
    if (!lastupdated_links_local_var) {
        return NULL;
    }
    lastupdated_links_local_var->self = self;

    lastupdated_links_local_var->_library_owned = 1;
    return lastupdated_links_local_var;
}

__attribute__((deprecated)) lastupdated_links_t *lastupdated_links_create(
    lastupdated_ref_t *self
    ) {
    return lastupdated_links_create_internal (
        self
        );
}

void lastupdated_links_free(lastupdated_links_t *lastupdated_links) {
    if(NULL == lastupdated_links){
        return ;
    }
    if(lastupdated_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "lastupdated_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (lastupdated_links->self) {
        lastupdated_ref_free(lastupdated_links->self);
        lastupdated_links->self = NULL;
    }
    free(lastupdated_links);
}

cJSON *lastupdated_links_convertToJSON(lastupdated_links_t *lastupdated_links) {
    cJSON *item = cJSON_CreateObject();

    // lastupdated_links->self
    if(lastupdated_links->self) {
    cJSON *self_local_JSON = lastupdated_ref_convertToJSON(lastupdated_links->self);
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

lastupdated_links_t *lastupdated_links_parseFromJSON(cJSON *lastupdated_linksJSON){

    lastupdated_links_t *lastupdated_links_local_var = NULL;

    // define the local variable for lastupdated_links->self
    lastupdated_ref_t *self_local_nonprim = NULL;

    // lastupdated_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(lastupdated_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = lastupdated_ref_parseFromJSON(self); //nonprimitive
    }


    lastupdated_links_local_var = lastupdated_links_create_internal (
        self ? self_local_nonprim : NULL
        );

    return lastupdated_links_local_var;
end:
    if (self_local_nonprim) {
        lastupdated_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    return NULL;

}
