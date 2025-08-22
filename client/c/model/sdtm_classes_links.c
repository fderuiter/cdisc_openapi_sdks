#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sdtm_classes_links.h"



static sdtm_classes_links_t *sdtm_classes_links_create_internal(
    sdtm_classes_ref_t *self,
    sdtm_classes_ref_t *prior_version,
    list_t *classes
    ) {
    sdtm_classes_links_t *sdtm_classes_links_local_var = malloc(sizeof(sdtm_classes_links_t));
    if (!sdtm_classes_links_local_var) {
        return NULL;
    }
    sdtm_classes_links_local_var->self = self;
    sdtm_classes_links_local_var->prior_version = prior_version;
    sdtm_classes_links_local_var->classes = classes;

    sdtm_classes_links_local_var->_library_owned = 1;
    return sdtm_classes_links_local_var;
}

__attribute__((deprecated)) sdtm_classes_links_t *sdtm_classes_links_create(
    sdtm_classes_ref_t *self,
    sdtm_classes_ref_t *prior_version,
    list_t *classes
    ) {
    return sdtm_classes_links_create_internal (
        self,
        prior_version,
        classes
        );
}

void sdtm_classes_links_free(sdtm_classes_links_t *sdtm_classes_links) {
    if(NULL == sdtm_classes_links){
        return ;
    }
    if(sdtm_classes_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sdtm_classes_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sdtm_classes_links->self) {
        sdtm_classes_ref_free(sdtm_classes_links->self);
        sdtm_classes_links->self = NULL;
    }
    if (sdtm_classes_links->prior_version) {
        sdtm_classes_ref_free(sdtm_classes_links->prior_version);
        sdtm_classes_links->prior_version = NULL;
    }
    if (sdtm_classes_links->classes) {
        list_ForEach(listEntry, sdtm_classes_links->classes) {
            sdtm_class_ref_element_free(listEntry->data);
        }
        list_freeList(sdtm_classes_links->classes);
        sdtm_classes_links->classes = NULL;
    }
    free(sdtm_classes_links);
}

cJSON *sdtm_classes_links_convertToJSON(sdtm_classes_links_t *sdtm_classes_links) {
    cJSON *item = cJSON_CreateObject();

    // sdtm_classes_links->self
    if(sdtm_classes_links->self) {
    cJSON *self_local_JSON = sdtm_classes_ref_convertToJSON(sdtm_classes_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_classes_links->prior_version
    if(sdtm_classes_links->prior_version) {
    cJSON *prior_version_local_JSON = sdtm_classes_ref_convertToJSON(sdtm_classes_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sdtm_classes_links->classes
    if(sdtm_classes_links->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (sdtm_classes_links->classes) {
    list_ForEach(classesListEntry, sdtm_classes_links->classes) {
    cJSON *itemLocal = sdtm_class_ref_element_convertToJSON(classesListEntry->data);
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

sdtm_classes_links_t *sdtm_classes_links_parseFromJSON(cJSON *sdtm_classes_linksJSON){

    sdtm_classes_links_t *sdtm_classes_links_local_var = NULL;

    // define the local variable for sdtm_classes_links->self
    sdtm_classes_ref_t *self_local_nonprim = NULL;

    // define the local variable for sdtm_classes_links->prior_version
    sdtm_classes_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sdtm_classes_links->classes
    list_t *classesList = NULL;

    // sdtm_classes_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sdtm_classes_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sdtm_classes_ref_parseFromJSON(self); //nonprimitive
    }

    // sdtm_classes_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sdtm_classes_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sdtm_classes_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sdtm_classes_links->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(sdtm_classes_linksJSON, "classes");
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
        sdtm_class_ref_element_t *classesItem = sdtm_class_ref_element_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    sdtm_classes_links_local_var = sdtm_classes_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        classes ? classesList : NULL
        );

    return sdtm_classes_links_local_var;
end:
    if (self_local_nonprim) {
        sdtm_classes_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sdtm_classes_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            sdtm_class_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
