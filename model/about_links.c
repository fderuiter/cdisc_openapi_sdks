#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "about_links.h"



static about_links_t *about_links_create_internal(
    about_ref_t *self,
    lastupdated_ref_t *lastupdated
    ) {
    about_links_t *about_links_local_var = malloc(sizeof(about_links_t));
    if (!about_links_local_var) {
        return NULL;
    }
    about_links_local_var->self = self;
    about_links_local_var->lastupdated = lastupdated;

    about_links_local_var->_library_owned = 1;
    return about_links_local_var;
}

__attribute__((deprecated)) about_links_t *about_links_create(
    about_ref_t *self,
    lastupdated_ref_t *lastupdated
    ) {
    return about_links_create_internal (
        self,
        lastupdated
        );
}

void about_links_free(about_links_t *about_links) {
    if(NULL == about_links){
        return ;
    }
    if(about_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "about_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (about_links->self) {
        about_ref_free(about_links->self);
        about_links->self = NULL;
    }
    if (about_links->lastupdated) {
        lastupdated_ref_free(about_links->lastupdated);
        about_links->lastupdated = NULL;
    }
    free(about_links);
}

cJSON *about_links_convertToJSON(about_links_t *about_links) {
    cJSON *item = cJSON_CreateObject();

    // about_links->self
    if(about_links->self) {
    cJSON *self_local_JSON = about_ref_convertToJSON(about_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // about_links->lastupdated
    if(about_links->lastupdated) {
    cJSON *lastupdated_local_JSON = lastupdated_ref_convertToJSON(about_links->lastupdated);
    if(lastupdated_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastupdated", lastupdated_local_JSON);
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

about_links_t *about_links_parseFromJSON(cJSON *about_linksJSON){

    about_links_t *about_links_local_var = NULL;

    // define the local variable for about_links->self
    about_ref_t *self_local_nonprim = NULL;

    // define the local variable for about_links->lastupdated
    lastupdated_ref_t *lastupdated_local_nonprim = NULL;

    // about_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(about_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = about_ref_parseFromJSON(self); //nonprimitive
    }

    // about_links->lastupdated
    cJSON *lastupdated = cJSON_GetObjectItemCaseSensitive(about_linksJSON, "lastupdated");
    if (cJSON_IsNull(lastupdated)) {
        lastupdated = NULL;
    }
    if (lastupdated) { 
    lastupdated_local_nonprim = lastupdated_ref_parseFromJSON(lastupdated); //nonprimitive
    }


    about_links_local_var = about_links_create_internal (
        self ? self_local_nonprim : NULL,
        lastupdated ? lastupdated_local_nonprim : NULL
        );

    return about_links_local_var;
end:
    if (self_local_nonprim) {
        about_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (lastupdated_local_nonprim) {
        lastupdated_ref_free(lastupdated_local_nonprim);
        lastupdated_local_nonprim = NULL;
    }
    return NULL;

}
