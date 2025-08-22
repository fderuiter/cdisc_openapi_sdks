#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_product_domains_links.h"



static cdashig_product_domains_links_t *cdashig_product_domains_links_create_internal(
    cdashig_product_domains_ref_t *self,
    cdashig_product_ref_t *parent_product,
    list_t *domains
    ) {
    cdashig_product_domains_links_t *cdashig_product_domains_links_local_var = malloc(sizeof(cdashig_product_domains_links_t));
    if (!cdashig_product_domains_links_local_var) {
        return NULL;
    }
    cdashig_product_domains_links_local_var->self = self;
    cdashig_product_domains_links_local_var->parent_product = parent_product;
    cdashig_product_domains_links_local_var->domains = domains;

    cdashig_product_domains_links_local_var->_library_owned = 1;
    return cdashig_product_domains_links_local_var;
}

__attribute__((deprecated)) cdashig_product_domains_links_t *cdashig_product_domains_links_create(
    cdashig_product_domains_ref_t *self,
    cdashig_product_ref_t *parent_product,
    list_t *domains
    ) {
    return cdashig_product_domains_links_create_internal (
        self,
        parent_product,
        domains
        );
}

void cdashig_product_domains_links_free(cdashig_product_domains_links_t *cdashig_product_domains_links) {
    if(NULL == cdashig_product_domains_links){
        return ;
    }
    if(cdashig_product_domains_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_product_domains_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_product_domains_links->self) {
        cdashig_product_domains_ref_free(cdashig_product_domains_links->self);
        cdashig_product_domains_links->self = NULL;
    }
    if (cdashig_product_domains_links->parent_product) {
        cdashig_product_ref_free(cdashig_product_domains_links->parent_product);
        cdashig_product_domains_links->parent_product = NULL;
    }
    if (cdashig_product_domains_links->domains) {
        list_ForEach(listEntry, cdashig_product_domains_links->domains) {
            cdashig_domain_ref_element_free(listEntry->data);
        }
        list_freeList(cdashig_product_domains_links->domains);
        cdashig_product_domains_links->domains = NULL;
    }
    free(cdashig_product_domains_links);
}

cJSON *cdashig_product_domains_links_convertToJSON(cdashig_product_domains_links_t *cdashig_product_domains_links) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_product_domains_links->self
    if(cdashig_product_domains_links->self) {
    cJSON *self_local_JSON = cdashig_product_domains_ref_convertToJSON(cdashig_product_domains_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_product_domains_links->parent_product
    if(cdashig_product_domains_links->parent_product) {
    cJSON *parent_product_local_JSON = cdashig_product_ref_convertToJSON(cdashig_product_domains_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_product_domains_links->domains
    if(cdashig_product_domains_links->domains) {
    cJSON *domains = cJSON_AddArrayToObject(item, "domains");
    if(domains == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domainsListEntry;
    if (cdashig_product_domains_links->domains) {
    list_ForEach(domainsListEntry, cdashig_product_domains_links->domains) {
    cJSON *itemLocal = cdashig_domain_ref_element_convertToJSON(domainsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(domains, itemLocal);
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

cdashig_product_domains_links_t *cdashig_product_domains_links_parseFromJSON(cJSON *cdashig_product_domains_linksJSON){

    cdashig_product_domains_links_t *cdashig_product_domains_links_local_var = NULL;

    // define the local variable for cdashig_product_domains_links->self
    cdashig_product_domains_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdashig_product_domains_links->parent_product
    cdashig_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local list for cdashig_product_domains_links->domains
    list_t *domainsList = NULL;

    // cdashig_product_domains_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdashig_product_domains_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdashig_product_domains_ref_parseFromJSON(self); //nonprimitive
    }

    // cdashig_product_domains_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdashig_product_domains_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdashig_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdashig_product_domains_links->domains
    cJSON *domains = cJSON_GetObjectItemCaseSensitive(cdashig_product_domains_linksJSON, "domains");
    if (cJSON_IsNull(domains)) {
        domains = NULL;
    }
    if (domains) { 
    cJSON *domains_local_nonprimitive = NULL;
    if(!cJSON_IsArray(domains)){
        goto end; //nonprimitive container
    }

    domainsList = list_createList();

    cJSON_ArrayForEach(domains_local_nonprimitive,domains )
    {
        if(!cJSON_IsObject(domains_local_nonprimitive)){
            goto end;
        }
        cdashig_domain_ref_element_t *domainsItem = cdashig_domain_ref_element_parseFromJSON(domains_local_nonprimitive);

        list_addElement(domainsList, domainsItem);
    }
    }


    cdashig_product_domains_links_local_var = cdashig_product_domains_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        domains ? domainsList : NULL
        );

    return cdashig_product_domains_links_local_var;
end:
    if (self_local_nonprim) {
        cdashig_product_domains_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdashig_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (domainsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, domainsList) {
            cdashig_domain_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(domainsList);
        domainsList = NULL;
    }
    return NULL;

}
