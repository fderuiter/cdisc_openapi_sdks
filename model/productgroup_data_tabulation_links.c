#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "productgroup_data_tabulation_links.h"



static productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_create_internal(
    productgroup_ref_t *self,
    list_t *sdtm,
    list_t *sdtmig,
    list_t *sendig
    ) {
    productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_local_var = malloc(sizeof(productgroup_data_tabulation_links_t));
    if (!productgroup_data_tabulation_links_local_var) {
        return NULL;
    }
    productgroup_data_tabulation_links_local_var->self = self;
    productgroup_data_tabulation_links_local_var->sdtm = sdtm;
    productgroup_data_tabulation_links_local_var->sdtmig = sdtmig;
    productgroup_data_tabulation_links_local_var->sendig = sendig;

    productgroup_data_tabulation_links_local_var->_library_owned = 1;
    return productgroup_data_tabulation_links_local_var;
}

__attribute__((deprecated)) productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_create(
    productgroup_ref_t *self,
    list_t *sdtm,
    list_t *sdtmig,
    list_t *sendig
    ) {
    return productgroup_data_tabulation_links_create_internal (
        self,
        sdtm,
        sdtmig,
        sendig
        );
}

void productgroup_data_tabulation_links_free(productgroup_data_tabulation_links_t *productgroup_data_tabulation_links) {
    if(NULL == productgroup_data_tabulation_links){
        return ;
    }
    if(productgroup_data_tabulation_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "productgroup_data_tabulation_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (productgroup_data_tabulation_links->self) {
        productgroup_ref_free(productgroup_data_tabulation_links->self);
        productgroup_data_tabulation_links->self = NULL;
    }
    if (productgroup_data_tabulation_links->sdtm) {
        list_ForEach(listEntry, productgroup_data_tabulation_links->sdtm) {
            sdtm_product_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_data_tabulation_links->sdtm);
        productgroup_data_tabulation_links->sdtm = NULL;
    }
    if (productgroup_data_tabulation_links->sdtmig) {
        list_ForEach(listEntry, productgroup_data_tabulation_links->sdtmig) {
            sdtmig_product_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_data_tabulation_links->sdtmig);
        productgroup_data_tabulation_links->sdtmig = NULL;
    }
    if (productgroup_data_tabulation_links->sendig) {
        list_ForEach(listEntry, productgroup_data_tabulation_links->sendig) {
            sendig_product_ref_element_free(listEntry->data);
        }
        list_freeList(productgroup_data_tabulation_links->sendig);
        productgroup_data_tabulation_links->sendig = NULL;
    }
    free(productgroup_data_tabulation_links);
}

cJSON *productgroup_data_tabulation_links_convertToJSON(productgroup_data_tabulation_links_t *productgroup_data_tabulation_links) {
    cJSON *item = cJSON_CreateObject();

    // productgroup_data_tabulation_links->self
    if(productgroup_data_tabulation_links->self) {
    cJSON *self_local_JSON = productgroup_ref_convertToJSON(productgroup_data_tabulation_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // productgroup_data_tabulation_links->sdtm
    if(productgroup_data_tabulation_links->sdtm) {
    cJSON *sdtm = cJSON_AddArrayToObject(item, "sdtm");
    if(sdtm == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sdtmListEntry;
    if (productgroup_data_tabulation_links->sdtm) {
    list_ForEach(sdtmListEntry, productgroup_data_tabulation_links->sdtm) {
    cJSON *itemLocal = sdtm_product_ref_element_convertToJSON(sdtmListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sdtm, itemLocal);
    }
    }
    }


    // productgroup_data_tabulation_links->sdtmig
    if(productgroup_data_tabulation_links->sdtmig) {
    cJSON *sdtmig = cJSON_AddArrayToObject(item, "sdtmig");
    if(sdtmig == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sdtmigListEntry;
    if (productgroup_data_tabulation_links->sdtmig) {
    list_ForEach(sdtmigListEntry, productgroup_data_tabulation_links->sdtmig) {
    cJSON *itemLocal = sdtmig_product_ref_element_convertToJSON(sdtmigListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sdtmig, itemLocal);
    }
    }
    }


    // productgroup_data_tabulation_links->sendig
    if(productgroup_data_tabulation_links->sendig) {
    cJSON *sendig = cJSON_AddArrayToObject(item, "sendig");
    if(sendig == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sendigListEntry;
    if (productgroup_data_tabulation_links->sendig) {
    list_ForEach(sendigListEntry, productgroup_data_tabulation_links->sendig) {
    cJSON *itemLocal = sendig_product_ref_element_convertToJSON(sendigListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sendig, itemLocal);
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

productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_parseFromJSON(cJSON *productgroup_data_tabulation_linksJSON){

    productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_local_var = NULL;

    // define the local variable for productgroup_data_tabulation_links->self
    productgroup_ref_t *self_local_nonprim = NULL;

    // define the local list for productgroup_data_tabulation_links->sdtm
    list_t *sdtmList = NULL;

    // define the local list for productgroup_data_tabulation_links->sdtmig
    list_t *sdtmigList = NULL;

    // define the local list for productgroup_data_tabulation_links->sendig
    list_t *sendigList = NULL;

    // productgroup_data_tabulation_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(productgroup_data_tabulation_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = productgroup_ref_parseFromJSON(self); //nonprimitive
    }

    // productgroup_data_tabulation_links->sdtm
    cJSON *sdtm = cJSON_GetObjectItemCaseSensitive(productgroup_data_tabulation_linksJSON, "sdtm");
    if (cJSON_IsNull(sdtm)) {
        sdtm = NULL;
    }
    if (sdtm) { 
    cJSON *sdtm_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sdtm)){
        goto end; //nonprimitive container
    }

    sdtmList = list_createList();

    cJSON_ArrayForEach(sdtm_local_nonprimitive,sdtm )
    {
        if(!cJSON_IsObject(sdtm_local_nonprimitive)){
            goto end;
        }
        sdtm_product_ref_element_t *sdtmItem = sdtm_product_ref_element_parseFromJSON(sdtm_local_nonprimitive);

        list_addElement(sdtmList, sdtmItem);
    }
    }

    // productgroup_data_tabulation_links->sdtmig
    cJSON *sdtmig = cJSON_GetObjectItemCaseSensitive(productgroup_data_tabulation_linksJSON, "sdtmig");
    if (cJSON_IsNull(sdtmig)) {
        sdtmig = NULL;
    }
    if (sdtmig) { 
    cJSON *sdtmig_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sdtmig)){
        goto end; //nonprimitive container
    }

    sdtmigList = list_createList();

    cJSON_ArrayForEach(sdtmig_local_nonprimitive,sdtmig )
    {
        if(!cJSON_IsObject(sdtmig_local_nonprimitive)){
            goto end;
        }
        sdtmig_product_ref_element_t *sdtmigItem = sdtmig_product_ref_element_parseFromJSON(sdtmig_local_nonprimitive);

        list_addElement(sdtmigList, sdtmigItem);
    }
    }

    // productgroup_data_tabulation_links->sendig
    cJSON *sendig = cJSON_GetObjectItemCaseSensitive(productgroup_data_tabulation_linksJSON, "sendig");
    if (cJSON_IsNull(sendig)) {
        sendig = NULL;
    }
    if (sendig) { 
    cJSON *sendig_local_nonprimitive = NULL;
    if(!cJSON_IsArray(sendig)){
        goto end; //nonprimitive container
    }

    sendigList = list_createList();

    cJSON_ArrayForEach(sendig_local_nonprimitive,sendig )
    {
        if(!cJSON_IsObject(sendig_local_nonprimitive)){
            goto end;
        }
        sendig_product_ref_element_t *sendigItem = sendig_product_ref_element_parseFromJSON(sendig_local_nonprimitive);

        list_addElement(sendigList, sendigItem);
    }
    }


    productgroup_data_tabulation_links_local_var = productgroup_data_tabulation_links_create_internal (
        self ? self_local_nonprim : NULL,
        sdtm ? sdtmList : NULL,
        sdtmig ? sdtmigList : NULL,
        sendig ? sendigList : NULL
        );

    return productgroup_data_tabulation_links_local_var;
end:
    if (self_local_nonprim) {
        productgroup_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (sdtmList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sdtmList) {
            sdtm_product_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sdtmList);
        sdtmList = NULL;
    }
    if (sdtmigList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sdtmigList) {
            sdtmig_product_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sdtmigList);
        sdtmigList = NULL;
    }
    if (sendigList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sendigList) {
            sendig_product_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sendigList);
        sendigList = NULL;
    }
    return NULL;

}
