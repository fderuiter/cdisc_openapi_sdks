#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_class_links.h"



static sdtm_class_links_t *sdtm_class_links_create_internal(
    sdtm_class_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    list_t *subclasses,
    sdtm_class_ref_t *prior_version
    ) {
    sdtm_class_links_t *sdtm_class_links_local_var = malloc(sizeof(sdtm_class_links_t));
    if (!sdtm_class_links_local_var) {
        return NULL;
    }
    sdtm_class_links_local_var->self = self;
    sdtm_class_links_local_var->parent_product = parent_product;
    sdtm_class_links_local_var->parent_class = parent_class;
    sdtm_class_links_local_var->subclasses = subclasses;
    sdtm_class_links_local_var->prior_version = prior_version;

    sdtm_class_links_local_var->_library_owned = 1;
    return sdtm_class_links_local_var;
}

__attribute__((deprecated)) sdtm_class_links_t *sdtm_class_links_create(
    sdtm_class_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    list_t *subclasses,
    sdtm_class_ref_t *prior_version
    ) {
    return sdtm_class_links_create_internal (
        self,
        parent_product,
        parent_class,
        subclasses,
        prior_version
        );
}

void sdtm_class_links_free(sdtm_class_links_t *sdtm_class_links) {
    if(NULL == sdtm_class_links){
        return ;
    }
    if(sdtm_class_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_class_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_class_links->self) {
        sdtm_class_ref_free(sdtm_class_links->self);
        sdtm_class_links->self = NULL;
    }
    if (sdtm_class_links->parent_product) {
        sdtm_product_ref_free(sdtm_class_links->parent_product);
        sdtm_class_links->parent_product = NULL;
    }
    if (sdtm_class_links->parent_class) {
        sdtm_class_ref_free(sdtm_class_links->parent_class);
        sdtm_class_links->parent_class = NULL;
    }
    if (sdtm_class_links->subclasses) {
        list_ForEach(listEntry, sdtm_class_links->subclasses) {
            sdtm_class_ref_subclass_free(listEntry->data);
        }
        list_freeList(sdtm_class_links->subclasses);
        sdtm_class_links->subclasses = NULL;
    }
    if (sdtm_class_links->prior_version) {
        sdtm_class_ref_free(sdtm_class_links->prior_version);
        sdtm_class_links->prior_version = NULL;
    }
    free(sdtm_class_links);
}

cJSON *sdtm_class_links_convertToJSON(sdtm_class_links_t *sdtm_class_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_class_links->self
    if(sdtm_class_links->self) {
    cJSON *self_local_JSON = sdtm_class_ref_convertToJSON(sdtm_class_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_links->parent_product
    if(sdtm_class_links->parent_product) {
    cJSON *parent_product_local_JSON = sdtm_product_ref_convertToJSON(sdtm_class_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_links->parent_class
    if(sdtm_class_links->parent_class) {
    cJSON *parent_class_local_JSON = sdtm_class_ref_convertToJSON(sdtm_class_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_class_links->subclasses
    if(sdtm_class_links->subclasses) {
    cJSON *subclasses = cJSON_AddArrayToObject(item, "subclasses");
    if(subclasses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *subclassesListEntry;
    if (sdtm_class_links->subclasses) {
    list_ForEach(subclassesListEntry, sdtm_class_links->subclasses) {
    cJSON *itemLocal = sdtm_class_ref_subclass_convertToJSON(subclassesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(subclasses, itemLocal);
    }
    }
    }


    // sdtm_class_links->prior_version
    if(sdtm_class_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_class_ref_convertToJSON(sdtm_class_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
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

sdtm_class_links_t *sdtm_class_links_parseFromJSON(cJSON *sdtm_class_linksJSON){

    sdtm_class_links_t *sdtm_class_links_local_var = NULL;

    // define the local variable for sdtm_class_links->self
    sdtm_class_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_class_links->parent_product
    sdtm_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for sdtm_class_links->parent_class
    sdtm_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local list for sdtm_class_links->subclasses
    list_t *subclassesList = NULL;

    // define the local variable for sdtm_class_links->prior_version
    sdtm_class_ref_t *prior_version_local_nonprim = NULL;

    // sdtm_class_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_class_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_class_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_class_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(sdtm_class_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = sdtm_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // sdtm_class_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(sdtm_class_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = sdtm_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // sdtm_class_links->subclasses
    cJSON *subclasses = cJSON_GetObjectItemCaseSensitive(sdtm_class_linksJSON, "subclasses");
    if (cJSON_IsNull(subclasses)) {
        subclasses = NULL;
    }
    if (subclasses) { 
    cJSON *subclasses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(subclasses)){
        goto end; //nonprimitive container
    }

    subclassesList = list_createList();

    cJSON_ArrayForEach(subclasses_local_nonprimitive,subclasses )
    {
        if(!cJSON_IsObject(subclasses_local_nonprimitive)){
            goto end;
        }
        sdtm_class_ref_subclass_t *subclassesItem = sdtm_class_ref_subclass_parseFromJSON(subclasses_local_nonprimitive);

        list_addElement(subclassesList, subclassesItem);
    }
    }

    // sdtm_class_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_class_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_class_ref_parseFromJSON(prior_version); //nonprimitive
    }


    sdtm_class_links_local_var = sdtm_class_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        subclasses ? subclassesList : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return sdtm_class_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_class_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        sdtm_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        sdtm_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (subclassesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, subclassesList) {
            sdtm_class_ref_subclass_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(subclassesList);
        subclassesList = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_class_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
