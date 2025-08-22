#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain_fields_links.h"



static cdashig_domain_fields_links_t *cdashig_domain_fields_links_create_internal(
    cdashig_domain_fields_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    list_t *fields
    ) {
    cdashig_domain_fields_links_t *cdashig_domain_fields_links_local_var = malloc(sizeof(cdashig_domain_fields_links_t));
    if (!cdashig_domain_fields_links_local_var) {
        return NULL;
    }
    cdashig_domain_fields_links_local_var->self = self;
    cdashig_domain_fields_links_local_var->parent_product = parent_product;
    cdashig_domain_fields_links_local_var->parent_class = parent_class;
    cdashig_domain_fields_links_local_var->fields = fields;

    cdashig_domain_fields_links_local_var->_library_owned = 1;
    return cdashig_domain_fields_links_local_var;
}

__attribute__((deprecated)) cdashig_domain_fields_links_t *cdashig_domain_fields_links_create(
    cdashig_domain_fields_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    list_t *fields
    ) {
    return cdashig_domain_fields_links_create_internal (
        self,
        parent_product,
        parent_class,
        fields
        );
}

void cdashig_domain_fields_links_free(cdashig_domain_fields_links_t *cdashig_domain_fields_links) {
    if(NULL == cdashig_domain_fields_links){
        return ;
    }
    if(cdashig_domain_fields_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_fields_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain_fields_links->self) {
        cdashig_domain_fields_ref_free(cdashig_domain_fields_links->self);
        cdashig_domain_fields_links->self = NULL;
    }
    if (cdashig_domain_fields_links->parent_product) {
        cdashig_product_ref_free(cdashig_domain_fields_links->parent_product);
        cdashig_domain_fields_links->parent_product = NULL;
    }
    if (cdashig_domain_fields_links->parent_class) {
        cdashig_class_ref_free(cdashig_domain_fields_links->parent_class);
        cdashig_domain_fields_links->parent_class = NULL;
    }
    if (cdashig_domain_fields_links->fields) {
        list_ForEach(listEntry, cdashig_domain_fields_links->fields) {
            cdashig_domain_field_ref_element_free(listEntry->data);
        }
        list_freeList(cdashig_domain_fields_links->fields);
        cdashig_domain_fields_links->fields = NULL;
    }
    free(cdashig_domain_fields_links);
}

cJSON *cdashig_domain_fields_links_convertToJSON(cdashig_domain_fields_links_t *cdashig_domain_fields_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain_fields_links->self
    if(cdashig_domain_fields_links->self) {
    cJSON *self_local_JSON = cdashig_domain_fields_ref_convertToJSON(cdashig_domain_fields_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_fields_links->parent_product
    if(cdashig_domain_fields_links->parent_product) {
    cJSON *parent_product_local_JSON = cdashig_product_ref_convertToJSON(cdashig_domain_fields_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_fields_links->parent_class
    if(cdashig_domain_fields_links->parent_class) {
    cJSON *parent_class_local_JSON = cdashig_class_ref_convertToJSON(cdashig_domain_fields_links->parent_class);
    if(parent_class_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentClass", parent_class_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain_fields_links->fields
    if(cdashig_domain_fields_links->fields) {
    cJSON *fields = cJSON_AddArrayToObject(item, "fields");
    if(fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fieldsListEntry;
    if (cdashig_domain_fields_links->fields) {
    list_ForEach(fieldsListEntry, cdashig_domain_fields_links->fields) {
    cJSON *itemLocal = cdashig_domain_field_ref_element_convertToJSON(fieldsListEntry->data);
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

cdashig_domain_fields_links_t *cdashig_domain_fields_links_parseFromJSON(cJSON *cdashig_domain_fields_linksJSON){

    cdashig_domain_fields_links_t *cdashig_domain_fields_links_local_var = NULL;

    // define the local variable for cdashig_domain_fields_links->self
    cdashig_domain_fields_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdashig_domain_fields_links->parent_product
    cdashig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local variable for cdashig_domain_fields_links->parent_class
    cdashig_class_ref_t *parent_class_local_nonprim = NULL;

    // define the local list for cdashig_domain_fields_links->fields
    list_t *fieldsList = NULL;

    // cdashig_domain_fields_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fields_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_domain_fields_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_domain_fields_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fields_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdashig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdashig_domain_fields_links->parent_class
    cJSON *parent_class = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fields_linksJSON, "parentClass");
    if (cJSON_IsNull(parent_class)) {
        parent_class = NULL;
    }
    if (parent_class) { 
    parent_class_local_nonprim = cdashig_class_ref_parseFromJSON(parent_class); //nonprimitive
    }

    // cdashig_domain_fields_links->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fields_linksJSON, "fields");
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
        cdashig_domain_field_ref_element_t *fieldsItem = cdashig_domain_field_ref_element_parseFromJSON(fields_local_nonprimitive);

        list_addElement(fieldsList, fieldsItem);
    }
    }


    cdashig_domain_fields_links_local_var = cdashig_domain_fields_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        parent_class ? parent_class_local_nonprim : NULL,
        fields ? fieldsList : NULL
        );

    return cdashig_domain_fields_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_domain_fields_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdashig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (parent_class_local_nonprim) {
        cdashig_class_ref_free(parent_class_local_nonprim);
        parent_class_local_nonprim = NULL;
    }
    if (fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fieldsList) {
            cdashig_domain_field_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fieldsList);
        fieldsList = NULL;
    }
    return NULL;

}
