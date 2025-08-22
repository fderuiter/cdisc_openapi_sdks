#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_product_domains_links.h"



static cdash_product_domains_links_t *cdash_product_domains_links_create_internal(
    cdash_product_domains_ref_t *self,
    cdash_product_ref_t *parent_product,
    list_t *domains
    ) {
    cdash_product_domains_links_t *cdash_product_domains_links_local_var = malloc(sizeof(cdash_product_domains_links_t));
    if (!cdash_product_domains_links_local_var) {
        return NULL;
    }
    cdash_product_domains_links_local_var->self = self;
    cdash_product_domains_links_local_var->parent_product = parent_product;
    cdash_product_domains_links_local_var->domains = domains;

    cdash_product_domains_links_local_var->_library_owned = 1;
    return cdash_product_domains_links_local_var;
}

__attribute__((deprecated)) cdash_product_domains_links_t *cdash_product_domains_links_create(
    cdash_product_domains_ref_t *self,
    cdash_product_ref_t *parent_product,
    list_t *domains
    ) {
    return cdash_product_domains_links_create_internal (
        self,
        parent_product,
        domains
        );
}

void cdash_product_domains_links_free(cdash_product_domains_links_t *cdash_product_domains_links) {
    if(NULL == cdash_product_domains_links){
        return ;
    }
    if(cdash_product_domains_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_product_domains_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_product_domains_links->self) {
        cdash_product_domains_ref_free(cdash_product_domains_links->self);
        cdash_product_domains_links->self = NULL;
    }
    if (cdash_product_domains_links->parent_product) {
        cdash_product_ref_free(cdash_product_domains_links->parent_product);
        cdash_product_domains_links->parent_product = NULL;
    }
    if (cdash_product_domains_links->domains) {
        list_ForEach(listEntry, cdash_product_domains_links->domains) {
            cdash_domain_ref_element_free(listEntry->data);
        }
        list_freeList(cdash_product_domains_links->domains);
        cdash_product_domains_links->domains = NULL;
    }
    free(cdash_product_domains_links);
}

cJSON *cdash_product_domains_links_convertToJSON(cdash_product_domains_links_t *cdash_product_domains_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_product_domains_links->self
    if(cdash_product_domains_links->self) {
    cJSON *self_local_JSON = cdash_product_domains_ref_convertToJSON(cdash_product_domains_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_product_domains_links->parent_product
    if(cdash_product_domains_links->parent_product) {
    cJSON *parent_product_local_JSON = cdash_product_ref_convertToJSON(cdash_product_domains_links->parent_product);
    if(parent_product_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parentProduct", parent_product_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_product_domains_links->domains
    if(cdash_product_domains_links->domains) {
    cJSON *domains = cJSON_AddArrayToObject(item, "domains");
    if(domains == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domainsListEntry;
    if (cdash_product_domains_links->domains) {
    list_ForEach(domainsListEntry, cdash_product_domains_links->domains) {
    cJSON *itemLocal = cdash_domain_ref_element_convertToJSON(domainsListEntry->data);
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

cdash_product_domains_links_t *cdash_product_domains_links_parseFromJSON(cJSON *cdash_product_domains_linksJSON){

    cdash_product_domains_links_t *cdash_product_domains_links_local_var = NULL;

    // define the local variable for cdash_product_domains_links->self
    cdash_product_domains_ref_t *self_local_nonprim = NULL;

    // define the local variable for cdash_product_domains_links->parent_product
    cdash_product_ref_t *parent_product_local_nonprim = NULL;

    // define the local list for cdash_product_domains_links->domains
    list_t *domainsList = NULL;

    // cdash_product_domains_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_product_domains_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_product_domains_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_product_domains_links->parent_product
    cJSON *parent_product = cJSON_GetObjectItemCaseSensitive(cdash_product_domains_linksJSON, "parentProduct");
    if (cJSON_IsNull(parent_product)) {
        parent_product = NULL;
    }
    if (parent_product) { 
    parent_product_local_nonprim = cdash_product_ref_parseFromJSON(parent_product); //nonprimitive
    }

    // cdash_product_domains_links->domains
    cJSON *domains = cJSON_GetObjectItemCaseSensitive(cdash_product_domains_linksJSON, "domains");
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
        cdash_domain_ref_element_t *domainsItem = cdash_domain_ref_element_parseFromJSON(domains_local_nonprimitive);

        list_addElement(domainsList, domainsItem);
    }
    }


    cdash_product_domains_links_local_var = cdash_product_domains_links_create_internal (
        self ? self_local_nonprim : NULL,
        parent_product ? parent_product_local_nonprim : NULL,
        domains ? domainsList : NULL
        );

    return cdash_product_domains_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_product_domains_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (parent_product_local_nonprim) {
        cdash_product_ref_free(parent_product_local_nonprim);
        parent_product_local_nonprim = NULL;
    }
    if (domainsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, domainsList) {
            cdash_domain_ref_element_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(domainsList);
        domainsList = NULL;
    }
    return NULL;

}
