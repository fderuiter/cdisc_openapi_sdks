#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_product_classes_links.h"



static cdash_product_classes_links_t *cdash_product_classes_links_create_internal(
    cdash_product_classes_ref_t *self,
    cdash_product_ref_t *parent_product,
    list_t *classes
    ) {
    cdash_product_classes_links_t *cdash_product_classes_links_local_var = malloc(sizeof(cdash_product_classes_links_t));
    if (!cdash_product_classes_links_local_var) {
        return NULL;
    }
    cdash_product_classes_links_local_var->self = self;
    cdash_product_classes_links_local_var->parent_product = parent_product;
    cdash_product_classes_links_local_var->classes = classes;

    cdash_product_classes_links_local_var->_library_owned = 1;
    return cdash_product_classes_links_local_var;
}

__attribute__((deprecated)) cdash_product_classes_links_t *cdash_product_classes_links_create(
    cdash_product_classes_ref_t *self,
    cdash_product_ref_t *parent_product,
    list_t *classes
    ) {
    return cdash_product_classes_links_create_internal (
        self,
        parent_product,
        classes
        );
}

void cdash_product_classes_links_free(cdash_product_classes_links_t *cdash_product_classes_links) {
    if(NULL == cdash_product_classes_links){
        return ;
    }
    if(cdash_product_classes_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_product_classes_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_product_classes_links->self) {
        cdash_product_classes_ref_free(cdash_product_classes_links->self);
        cdash_product_classes_links->self = NULL;
    }
    if (cdash_product_classes_links->parent_product) {
        cdash_product_ref_free(cdash_product_classes_links->parent_product);
        cdash_product_classes_links->parent_product = NULL;
    }
    if (cdash_product_classes_links->classes) {
        list_ForEach(listEntry, cdash_product_classes_links->classes) {
            cdash_class_ref_element_free(listEntry->data);
        }
        list_freeList(cdash_product_classes_links->classes);
        cdash_product_classes_links->classes = NULL;
    }
    free(cdash_product_classes_links);
}

cJSON *cdash_product_classes_links_convertToJSON(cdash_product_classes_links_t *cdash_product_classes_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_product_classes_links->self
    if(cdash_product_classes_links->self) {
    cJSON *self_local_JSON = cdash_product_classes_ref_convertToJSON(cdash_product_classes_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_product_classes_links->parent_product
    if(cdash_product_classes_links->parent_product) {
    cJSON *parent_product_local_JSON = cdash_product_ref_convertToJSON(cdash_product_classes_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_product_classes_links->classes
    if(cdash_product_classes_links->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (cdash_product_classes_links->classes) {
    list_ForEach(classesListEntry, cdash_product_classes_links->classes) {
    cJSON *itemLocal = cdash_class_ref_element_convertToJSON(classesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(classes, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cdash_product_classes_links_t *cdash_product_classes_links_parseFromJSON(cJSON *cdash_product_classes_linksJSON){

    cdash_product_classes_links_t *cdash_product_classes_links_local_var = NULL;

    // define the local variable for cdash_product_classes_links->self
    cdash_product_classes_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdash_product_classes_links->parent_product
    cdash_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local list for cdash_product_classes_links->classes
    list_t *classesList = NULL;

    // cdash_product_classes_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_product_classes_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_product_classes_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_product_classes_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdash_product_classes_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdash_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdash_product_classes_links->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(cdash_product_classes_linksJSON, "classes");
    if (cJSON_IsNull(classes)) {
        classes = NULL;
    }
    if (classes) { 
    cJSON *classes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(classes)){
        goto end; //nonprimitive container
    }

    classesList = list_createList();

    cJSON_ArrayForEach(classes_local_nonprimitive,classes )
    {
        if(!cJSON_IsObject(classes_local_nonprimitive)){
            goto end;
        }
        cdash_class_ref_element_t *classesItem = cdash_class_ref_element_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    cdash_product_classes_links_local_var = cdash_product_classes_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        classes ? classesList : NULL
        );

    return cdash_product_classes_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_product_classes_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdash_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            cdash_class_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
