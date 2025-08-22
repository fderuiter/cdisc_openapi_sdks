#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sendig_classes_links.h"



static sendig_classes_links_t *sendig_classes_links_create_internal(
    sendig_classes_ref_t *self,
    sendig_classes_ref_t *prior_version,
    list_t *classes
    ) {
    sendig_classes_links_t *sendig_classes_links_local_var = malloc(sizeof(sendig_classes_links_t));
    if (!sendig_classes_links_local_var) {
        return NULL;
    }
    sendig_classes_links_local_var->self = self;
    sendig_classes_links_local_var->prior_version = prior_version;
    sendig_classes_links_local_var->classes = classes;

    sendig_classes_links_local_var->_library_owned = 1;
    return sendig_classes_links_local_var;
}

__attribute__((deprecated)) sendig_classes_links_t *sendig_classes_links_create(
    sendig_classes_ref_t *self,
    sendig_classes_ref_t *prior_version,
    list_t *classes
    ) {
    return sendig_classes_links_create_internal (
        self,
        prior_version,
        classes
        );
}

void sendig_classes_links_free(sendig_classes_links_t *sendig_classes_links) {
    if(NULL == sendig_classes_links){
        return ;
    }
    if(sendig_classes_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "sendig_classes_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (sendig_classes_links->self) {
        sendig_classes_ref_free(sendig_classes_links->self);
        sendig_classes_links->self = NULL;
    }
    if (sendig_classes_links->prior_version) {
        sendig_classes_ref_free(sendig_classes_links->prior_version);
        sendig_classes_links->prior_version = NULL;
    }
    if (sendig_classes_links->classes) {
        list_ForEach(listEntry, sendig_classes_links->classes) {
            sendig_class_ref_element_free(listEntry->data);
        }
        list_freeList(sendig_classes_links->classes);
        sendig_classes_links->classes = NULL;
    }
    free(sendig_classes_links);
}

cJSON *sendig_classes_links_convertToJSON(sendig_classes_links_t *sendig_classes_links) {
    cJSON *item = cJSON_CreateObject();

    // sendig_classes_links->self
    if(sendig_classes_links->self) {
    cJSON *self_local_JSON = sendig_classes_ref_convertToJSON(sendig_classes_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_classes_links->prior_version
    if(sendig_classes_links->prior_version) {
    cJSON *prior_version_local_JSON = sendig_classes_ref_convertToJSON(sendig_classes_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // sendig_classes_links->classes
    if(sendig_classes_links->classes) {
    cJSON *classes = cJSON_AddArrayToObject(item, "classes");
    if(classes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *classesListEntry;
    if (sendig_classes_links->classes) {
    list_ForEach(classesListEntry, sendig_classes_links->classes) {
    cJSON *itemLocal = sendig_class_ref_element_convertToJSON(classesListEntry->data);
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

sendig_classes_links_t *sendig_classes_links_parseFromJSON(cJSON *sendig_classes_linksJSON){

    sendig_classes_links_t *sendig_classes_links_local_var = NULL;

    // define the local variable for sendig_classes_links->self
    sendig_classes_ref_t *self_local_nonprim = NULL;

    // define the local variable for sendig_classes_links->prior_version
    sendig_classes_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for sendig_classes_links->classes
    list_t *classesList = NULL;

    // sendig_classes_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(sendig_classes_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = sendig_classes_ref_parseFromJSON(self); //nonprimitive
    }

    // sendig_classes_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(sendig_classes_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = sendig_classes_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // sendig_classes_links->classes
    cJSON *classes = cJSON_GetObjectItemCaseSensitive(sendig_classes_linksJSON, "classes");
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
        sendig_class_ref_element_t *classesItem = sendig_class_ref_element_parseFromJSON(classes_local_nonprimitive);

        list_addElement(classesList, classesItem);
    }
    }


    sendig_classes_links_local_var = sendig_classes_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        classes ? classesList : NULL
        );

    return sendig_classes_links_local_var;
end:
    if (self_local_nonprim) {
        sendig_classes_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        sendig_classes_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (classesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, classesList) {
            sendig_class_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(classesList);
        classesList = NULL;
    }
    return NULL;

}
