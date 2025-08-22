#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtmig_classes_links.h"



static sdtmig_classes_links_t *sdtmig_classes_links_create_internal(
    sdtmig_classes_ref_t *self,
    sdtmig_classes_ref_t *prior_version,
    list_t *classes
    ) {
    sdtmig_classes_links_t *sdtmig_classes_links_local_var = malloc(sizeof(sdtmig_classes_links_t));
    if (!sdtmig_classes_links_local_var) {
        return NULL;
    }
    sdtmig_classes_links_local_var->self = self;
    sdtmig_classes_links_local_var->prior_version = prior_version;
    sdtmig_classes_links_local_var->classes = classes;

    sdtmig_classes_links_local_var->_library_owned = 1;
    return sdtmig_classes_links_local_var;
}

__attribute__((deprecated)) sdtmig_classes_links_t *sdtmig_classes_links_create(
    sdtmig_classes_ref_t *self,
    sdtmig_classes_ref_t *prior_version,
    list_t *classes
    ) {
    return sdtmig_classes_links_create_internal (
        self,
        prior_version,
        classes
        );
}

void sdtmig_classes_links_free(sdtmig_classes_links_t *sdtmig_classes_links) {
    if(NULL == sdtmig_classes_links){
        return ;
    }
    if(sdtmig_classes_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtmig_classes_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtmig_classes_links->self) {
        sdtmig_classes_ref_free(sdtmig_classes_links->self);
        sdtmig_classes_links->self = NULL;
    }
    if (sdtmig_classes_links->prior_version) {
        sdtmig_classes_ref_free(sdtmig_classes_links->prior_version);
        sdtmig_classes_links->prior_version = NULL;
    }
    if (sdtmig_classes_links->classes) {
        list_ForEach(listEntry, sdtmig_classes_links->classes) {
            sdtmig_class_ref_element_free(listEntry->data);
        }
        list_freeList(sdtmig_classes_links->classes);
        sdtmig_classes_links->classes = NULL;
    }
    free(sdtmig_classes_links);
}

cJSON *sdtmig_classes_links_convertToJSON(sdtmig_classes_links_t *sdtmig_classes_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtmig_classes_links->self
    if(sdtmig_classes_links->self) {
    cJSON *self_local_JSON = sdtmig_classes_ref_convertToJSON(sdtmig_classes_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_classes_links->prior_version
    if(sdtmig_classes_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtmig_classes_ref_convertToJSON(sdtmig_classes_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtmig_classes_links->classes
    if(sdtmig_classes_links->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (sdtmig_classes_links->classes) {
    list_ForEach(classesListEntry, sdtmig_classes_links->classes) {
    cJSON *itemLocal = sdtmig_class_ref_element_convertToJSON(classesListEntry->data);
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

sdtmig_classes_links_t *sdtmig_classes_links_parseFromJSON(cJSON *sdtmig_classes_linksJSON){

    sdtmig_classes_links_t *sdtmig_classes_links_local_var = NULL;

    // define the local variable for sdtmig_classes_links->self
    sdtmig_classes_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtmig_classes_links->prior_version
    sdtmig_classes_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sdtmig_classes_links->classes
    list_t *classesList = NULL;

    // sdtmig_classes_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtmig_classes_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtmig_classes_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtmig_classes_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtmig_classes_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtmig_classes_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sdtmig_classes_links->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(sdtmig_classes_linksJSON, "classes");
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
        sdtmig_class_ref_element_t *classesItem = sdtmig_class_ref_element_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    sdtmig_classes_links_local_var = sdtmig_classes_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        classes ? classesList : NULL
        );

    return sdtmig_classes_links_local_var;
end:
    if (self_local_nonprim) {
        sdtmig_classes_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtmig_classes_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            sdtmig_class_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
