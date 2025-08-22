#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_class_links.h"



static cdashig_class_links_t *cdashig_class_links_create_internal(
    cdashig_class_ref_t *self,
    cdash_class_ref_t *model_class,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    list_t *subclasses,
    cdashig_class_ref_t *prior_version
    ) {
    cdashig_class_links_t *cdashig_class_links_local_var = malloc(sizeof(cdashig_class_links_t));
    if (!cdashig_class_links_local_var) {
        return NULL;
    }
    cdashig_class_links_local_var->self = self;
    cdashig_class_links_local_var->model_class = model_class;
    cdashig_class_links_local_var->parent_product = parent_product;
    cdashig_class_links_local_var->parent_class = parent_class;
    cdashig_class_links_local_var->subclasses = subclasses;
    cdashig_class_links_local_var->prior_version = prior_version;

    cdashig_class_links_local_var->_library_owned = 1;
    return cdashig_class_links_local_var;
}

__attribute__((deprecated)) cdashig_class_links_t *cdashig_class_links_create(
    cdashig_class_ref_t *self,
    cdash_class_ref_t *model_class,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    list_t *subclasses,
    cdashig_class_ref_t *prior_version
    ) {
    return cdashig_class_links_create_internal (
        self,
        model_class,
        parent_product,
        parent_class,
        subclasses,
        prior_version
        );
}

void cdashig_class_links_free(cdashig_class_links_t *cdashig_class_links) {
    if(NULL == cdashig_class_links){
        return ;
    }
    if(cdashig_class_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_class_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_class_links->self) {
        cdashig_class_ref_free(cdashig_class_links->self);
        cdashig_class_links->self = NULL;
    }
    if (cdashig_class_links->model_class) {
        cdash_class_ref_free(cdashig_class_links->model_class);
        cdashig_class_links->model_class = NULL;
    }
    if (cdashig_class_links->parent_product) {
        cdashig_product_ref_free(cdashig_class_links->parent_product);
        cdashig_class_links->parent_product = NULL;
    }
    if (cdashig_class_links->parent_class) {
        cdashig_class_ref_free(cdashig_class_links->parent_class);
        cdashig_class_links->parent_class = NULL;
    }
    if (cdashig_class_links->subclasses) {
        list_ForEach(listEntry, cdashig_class_links->subclasses) {
            cdashig_class_ref_subclass_free(listEntry->data);
        }
        list_freeList(cdashig_class_links->subclasses);
        cdashig_class_links->subclasses = NULL;
    }
    if (cdashig_class_links->prior_version) {
        cdashig_class_ref_free(cdashig_class_links->prior_version);
        cdashig_class_links->prior_version = NULL;
    }
    free(cdashig_class_links);
}

cJSON *cdashig_class_links_convertToJSON(cdashig_class_links_t *cdashig_class_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_class_links->self
    if(cdashig_class_links->self) {
    cJSON *self_local_JSON = cdashig_class_ref_convertToJSON(cdashig_class_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_class_links->model_class
    if(cdashig_class_links->model_class) {
    cJSON *model_class_local_JSON = cdash_class_ref_convertToJSON(cdashig_class_links->model_class);
    if(model_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "modelClass", model_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_class_links->parent_product
    if(cdashig_class_links->parent_product) {
    cJSON *parent_product_local_JSON = cdashig_product_ref_convertToJSON(cdashig_class_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_class_links->parent_class
    if(cdashig_class_links->parent_class) {
    cJSON *parent_class_local_JSON = cdashig_class_ref_convertToJSON(cdashig_class_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_class_links->subclasses
    if(cdashig_class_links->subclasses) {
    cJSON *subclasses = cJSON_AddArrayToObject(item, "subclasses");
    if(subclasses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *subclassesListEntry;
    if (cdashig_class_links->subclasses) {
    list_ForEach(subclassesListEntry, cdashig_class_links->subclasses) {
    cJSON *itemLocal = cdashig_class_ref_subclass_convertToJSON(subclassesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(subclasses, itemLocal);
    }
    }
    }


    // cdashig_class_links->prior_version
    if(cdashig_class_links->prior_version) {
    cJSON *prior_version_local_JSON = cdashig_class_ref_convertToJSON(cdashig_class_links->prior_version);
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

cdashig_class_links_t *cdashig_class_links_parseFromJSON(cJSON *cdashig_class_linksJSON){

    cdashig_class_links_t *cdashig_class_links_local_var = NULL;

    // define the local variable for cdashig_class_links->self
    cdashig_class_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdashig_class_links->model_class
    cdash_class_ref_t *model_class_local_nonprim = NULL;

    // define the local variable for cdashig_class_links->parent_product
    cdashig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdashig_class_links->parent_class
    cdashig_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local list for cdashig_class_links->subclasses
    list_t *subclassesList = NULL;

    // define the local variable for cdashig_class_links->prior_version
    cdashig_class_ref_t *prior_version_local_nonprim = NULL;

    // cdashig_class_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_class_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_class_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_class_links->model_class
    cJSON *model_class = cJSON_GetObjectItemCaseSensitive(cdashig_class_linksJSON, "modelClass");
    if (cJSON_IsNull(model_class)) {
        model_class = NULL;
    }
    if (model_class) { 
    model_class_local_nonprim = cdash_class_ref_parseFromJSON(model_class); //nonprimitive
    }

    // cdashig_class_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdashig_class_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdashig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdashig_class_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdashig_class_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdashig_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdashig_class_links->subclasses
    cJSON *subclasses = cJSON_GetObjectItemCaseSensitive(cdashig_class_linksJSON, "subclasses");
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
        cdashig_class_ref_subclass_t *subclassesItem = cdashig_class_ref_subclass_parseFromJSON(subclasses_local_nonprimitive);

        list_addElement(subclassesList, subclassesItem);
    }
    }

    // cdashig_class_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(cdashig_class_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = cdashig_class_ref_parseFromJSON(prior_version); //nonprimitive
    }


    cdashig_class_links_local_var = cdashig_class_links_create_internal (
        self ? self_local_nonprim : NULL,
        model_class ? model_class_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        subclasses ? subclassesList : NULL,
        prior_version ? prior_version_local_nonprim : NULL
        );

    return cdashig_class_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_class_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (model_class_local_nonprim) {
        cdash_class_ref_free(model_class_local_nonprim);
        model_class_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdashig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdashig_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (subclassesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, subclassesList) {
            cdashig_class_ref_subclass_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(subclassesList);
        subclassesList = NULL;
    }
    if (prior_version_local_nonprim) {
        cdashig_class_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    return NULL;

}
