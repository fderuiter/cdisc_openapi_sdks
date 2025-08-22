#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "adam_product_datastructures_links.h"



static adam_product_datastructures_links_t *adam_product_datastructures_links_create_internal(
    adam_product_datastructures_ref_t *self,
    adam_product_datastructures_ref_t *prior_version,
    list_t *data_structures
    ) {
    adam_product_datastructures_links_t *adam_product_datastructures_links_local_var = malloc(sizeof(adam_product_datastructures_links_t));
    if (!adam_product_datastructures_links_local_var) {
        return NULL;
    }
    adam_product_datastructures_links_local_var->self = self;
    adam_product_datastructures_links_local_var->prior_version = prior_version;
    adam_product_datastructures_links_local_var->data_structures = data_structures;

    adam_product_datastructures_links_local_var->_library_owned = 1;
    return adam_product_datastructures_links_local_var;
}

__attribute__((deprecated)) adam_product_datastructures_links_t *adam_product_datastructures_links_create(
    adam_product_datastructures_ref_t *self,
    adam_product_datastructures_ref_t *prior_version,
    list_t *data_structures
    ) {
    return adam_product_datastructures_links_create_internal (
        self,
        prior_version,
        data_structures
        );
}

void adam_product_datastructures_links_free(adam_product_datastructures_links_t *adam_product_datastructures_links) {
    if(NULL == adam_product_datastructures_links){
        return ;
    }
    if(adam_product_datastructures_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "adam_product_datastructures_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (adam_product_datastructures_links->self) {
        adam_product_datastructures_ref_free(adam_product_datastructures_links->self);
        adam_product_datastructures_links->self = NULL;
    }
    if (adam_product_datastructures_links->prior_version) {
        adam_product_datastructures_ref_free(adam_product_datastructures_links->prior_version);
        adam_product_datastructures_links->prior_version = NULL;
    }
    if (adam_product_datastructures_links->data_structures) {
        list_ForEach(listEntry, adam_product_datastructures_links->data_structures) {
            adam_datastructure_ref_element_free(listEntry->data);
        }
        list_freeList(adam_product_datastructures_links->data_structures);
        adam_product_datastructures_links->data_structures = NULL;
    }
    free(adam_product_datastructures_links);
}

cJSON *adam_product_datastructures_links_convertToJSON(adam_product_datastructures_links_t *adam_product_datastructures_links) {
    cJSON *item = cJSON_CreateObject();

    // adam_product_datastructures_links->self
    if(adam_product_datastructures_links->self) {
    cJSON *self_local_JSON = adam_product_datastructures_ref_convertToJSON(adam_product_datastructures_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_product_datastructures_links->prior_version
    if(adam_product_datastructures_links->prior_version) {
    cJSON *prior_version_local_JSON = adam_product_datastructures_ref_convertToJSON(adam_product_datastructures_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // adam_product_datastructures_links->data_structures
    if(adam_product_datastructures_links->data_structures) {
    cJSON *data_structures = cJSON_AddArrayToObject(item, "dataStructures");
    if(data_structures == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *data_structuresListEntry;
    if (adam_product_datastructures_links->data_structures) {
    list_ForEach(data_structuresListEntry, adam_product_datastructures_links->data_structures) {
    cJSON *itemLocal = adam_datastructure_ref_element_convertToJSON(data_structuresListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data_structures, itemLocal);
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

adam_product_datastructures_links_t *adam_product_datastructures_links_parseFromJSON(cJSON *adam_product_datastructures_linksJSON){

    adam_product_datastructures_links_t *adam_product_datastructures_links_local_var = NULL;

    // define the local variable for adam_product_datastructures_links->self
    adam_product_datastructures_ref_t *self_local_nonprim = NULL;

    // define the local variable for adam_product_datastructures_links->prior_version
    adam_product_datastructures_ref_t *prior_version_local_nonprim = NULL;

    // define the local list for adam_product_datastructures_links->data_structures
    list_t *data_structuresList = NULL;

    // adam_product_datastructures_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(adam_product_datastructures_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = adam_product_datastructures_ref_parseFromJSON(self); //nonprimitive
    }

    // adam_product_datastructures_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(adam_product_datastructures_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = adam_product_datastructures_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // adam_product_datastructures_links->data_structures
    cJSON *data_structures = cJSON_GetObjectItemCaseSensitive(adam_product_datastructures_linksJSON, "dataStructures");
    if (cJSON_IsNull(data_structures)) {
        data_structures = NULL;
    }
    if (data_structures) { 
    cJSON *data_structures_local_nonprimitive = NULL;
    if(!cJSON_IsArray(data_structures)){
        goto end; //nonprimitive container
    }

    data_structuresList = list_createList();

    cJSON_ArrayForEach(data_structures_local_nonprimitive,data_structures )
    {
        if(!cJSON_IsObject(data_structures_local_nonprimitive)){
            goto end;
        }
        adam_datastructure_ref_element_t *data_structuresItem = adam_datastructure_ref_element_parseFromJSON(data_structures_local_nonprimitive);

        list_addElement(data_structuresList, data_structuresItem);
    }
    }


    adam_product_datastructures_links_local_var = adam_product_datastructures_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        data_structures ? data_structuresList : NULL
        );

    return adam_product_datastructures_links_local_var;
end:
    if (self_local_nonprim) {
        adam_product_datastructures_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        adam_product_datastructures_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (data_structuresList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, data_structuresList) {
            adam_datastructure_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(data_structuresList);
        data_structuresList = NULL;
    }
    return NULL;

}
