#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_domain_fields_links.h"



static cdash_domain_fields_links_t *cdash_domain_fields_links_create_internal(
    cdash_domain_fields_ref_t *self,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    list_t *fields
    ) {
    cdash_domain_fields_links_t *cdash_domain_fields_links_local_var = malloc(sizeof(cdash_domain_fields_links_t));
    if (!cdash_domain_fields_links_local_var) {
        return NULL;
    }
    cdash_domain_fields_links_local_var->self = self;
    cdash_domain_fields_links_local_var->parent_product = parent_product;
    cdash_domain_fields_links_local_var->parent_class = parent_class;
    cdash_domain_fields_links_local_var->fields = fields;

    cdash_domain_fields_links_local_var->_library_owned = 1;
    return cdash_domain_fields_links_local_var;
}

__attribute__((deprecated)) cdash_domain_fields_links_t *cdash_domain_fields_links_create(
    cdash_domain_fields_ref_t *self,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    list_t *fields
    ) {
    return cdash_domain_fields_links_create_internal (
        self,
        parent_product,
        parent_class,
        fields
        );
}

void cdash_domain_fields_links_free(cdash_domain_fields_links_t *cdash_domain_fields_links) {
    if(NULL == cdash_domain_fields_links){
        return ;
    }
    if(cdash_domain_fields_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_domain_fields_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_domain_fields_links->self) {
        cdash_domain_fields_ref_free(cdash_domain_fields_links->self);
        cdash_domain_fields_links->self = NULL;
    }
    if (cdash_domain_fields_links->parent_product) {
        cdash_product_ref_free(cdash_domain_fields_links->parent_product);
        cdash_domain_fields_links->parent_product = NULL;
    }
    if (cdash_domain_fields_links->parent_class) {
        cdash_class_ref_free(cdash_domain_fields_links->parent_class);
        cdash_domain_fields_links->parent_class = NULL;
    }
    if (cdash_domain_fields_links->fields) {
        list_ForEach(listEntry, cdash_domain_fields_links->fields) {
            cdash_domain_field_ref_element_free(listEntry->data);
        }
        list_freeList(cdash_domain_fields_links->fields);
        cdash_domain_fields_links->fields = NULL;
    }
    free(cdash_domain_fields_links);
}

cJSON *cdash_domain_fields_links_convertToJSON(cdash_domain_fields_links_t *cdash_domain_fields_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_domain_fields_links->self
    if(cdash_domain_fields_links->self) {
    cJSON *self_local_JSON = cdash_domain_fields_ref_convertToJSON(cdash_domain_fields_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_fields_links->parent_product
    if(cdash_domain_fields_links->parent_product) {
    cJSON *parent_product_local_JSON = cdash_product_ref_convertToJSON(cdash_domain_fields_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_fields_links->parent_class
    if(cdash_domain_fields_links->parent_class) {
    cJSON *parent_class_local_JSON = cdash_class_ref_convertToJSON(cdash_domain_fields_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain_fields_links->fields
    if(cdash_domain_fields_links->fields) {
    cJSON *fields = cJSON_AddArrayToObject(item, "fields");
    if(fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fieldsListEntry;
    if (cdash_domain_fields_links->fields) {
    list_ForEach(fieldsListEntry, cdash_domain_fields_links->fields) {
    cJSON *itemLocal = cdash_domain_field_ref_element_convertToJSON(fieldsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(fields, itemLocal);
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

cdash_domain_fields_links_t *cdash_domain_fields_links_parseFromJSON(cJSON *cdash_domain_fields_linksJSON){

    cdash_domain_fields_links_t *cdash_domain_fields_links_local_var = NULL;

    // define the local variable for cdash_domain_fields_links->self
    cdash_domain_fields_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdash_domain_fields_links->parent_product
    cdash_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdash_domain_fields_links->parent_class
    cdash_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local list for cdash_domain_fields_links->fields
    list_t *fieldsList = NULL;

    // cdash_domain_fields_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_domain_fields_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_domain_fields_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_domain_fields_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdash_domain_fields_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdash_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdash_domain_fields_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdash_domain_fields_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdash_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdash_domain_fields_links->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(cdash_domain_fields_linksJSON, "fields");
    if (cJSON_IsNull(fields)) {
        fields = NULL;
    }
    if (fields) { 
    cJSON *fields_local_nonprimitive = NULL;
    if(!cJSON_IsArray(fields)){
        goto end; //nonprimitive container
    }

    fieldsList = list_createList();

    cJSON_ArrayForEach(fields_local_nonprimitive,fields )
    {
        if(!cJSON_IsObject(fields_local_nonprimitive)){
            goto end;
        }
        cdash_domain_field_ref_element_t *fieldsItem = cdash_domain_field_ref_element_parseFromJSON(fields_local_nonprimitive);

        list_addElement(fieldsList, fieldsItem);
    }
    }


    cdash_domain_fields_links_local_var = cdash_domain_fields_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        fields ? fieldsList : NULL
        );

    return cdash_domain_fields_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_domain_fields_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdash_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdash_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fieldsList) {
            cdash_domain_field_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fieldsList);
        fieldsList = NULL;
    }
    return NULL;

}
