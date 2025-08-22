#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_class_domains_links.h"



static cdash_class_domains_links_t *cdash_class_domains_links_create_internal(
    cdash_class_domains_ref_t *self,
    list_t *domains
    ) {
    cdash_class_domains_links_t *cdash_class_domains_links_local_var = malloc(sizeof(cdash_class_domains_links_t));
    if (!cdash_class_domains_links_local_var) {
        return NULL;
    }
    cdash_class_domains_links_local_var->self = self;
    cdash_class_domains_links_local_var->domains = domains;

    cdash_class_domains_links_local_var->_library_owned = 1;
    return cdash_class_domains_links_local_var;
}

__attribute__((deprecated)) cdash_class_domains_links_t *cdash_class_domains_links_create(
    cdash_class_domains_ref_t *self,
    list_t *domains
    ) {
    return cdash_class_domains_links_create_internal (
        self,
        domains
        );
}

void cdash_class_domains_links_free(cdash_class_domains_links_t *cdash_class_domains_links) {
    if(NULL == cdash_class_domains_links){
        return ;
    }
    if(cdash_class_domains_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_class_domains_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_class_domains_links->self) {
        cdash_class_domains_ref_free(cdash_class_domains_links->self);
        cdash_class_domains_links->self = NULL;
    }
    if (cdash_class_domains_links->domains) {
        list_ForEach(listEntry, cdash_class_domains_links->domains) {
            cdash_domain_ref_element_free(listEntry->data);
        }
        list_freeList(cdash_class_domains_links->domains);
        cdash_class_domains_links->domains = NULL;
    }
    free(cdash_class_domains_links);
}

cJSON *cdash_class_domains_links_convertToJSON(cdash_class_domains_links_t *cdash_class_domains_links) {
    cJSON *item = cJSON_CreateObject();

    // cdash_class_domains_links->self
    if(cdash_class_domains_links->self) {
    cJSON *self_local_JSON = cdash_class_domains_ref_convertToJSON(cdash_class_domains_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_class_domains_links->domains
    if(cdash_class_domains_links->domains) {
    cJSON *domains = cJSON_AddArrayToObject(item, "domains");
    if(domains == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *domainsListEntry;
    if (cdash_class_domains_links->domains) {
    list_ForEach(domainsListEntry, cdash_class_domains_links->domains) {
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

cdash_class_domains_links_t *cdash_class_domains_links_parseFromJSON(cJSON *cdash_class_domains_linksJSON){

    cdash_class_domains_links_t *cdash_class_domains_links_local_var = NULL;

    // define the local variable for cdash_class_domains_links->self
    cdash_class_domains_ref_t *self_local_nonprim = NULL;

    // define the local list for cdash_class_domains_links->domains
    list_t *domainsList = NULL;

    // cdash_class_domains_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(cdash_class_domains_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = cdash_class_domains_ref_parseFromJSON(self); //nonprimitive
    }

    // cdash_class_domains_links->domains
    cJSON *domains = cJSON_GetObjectItemCaseSensitive(cdash_class_domains_linksJSON, "domains");
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


    cdash_class_domains_links_local_var = cdash_class_domains_links_create_internal (
        self ? self_local_nonprim : NULL,
        domains ? domainsList : NULL
        );

    return cdash_class_domains_links_local_var;
end:
    if (self_local_nonprim) {
        cdash_class_domains_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
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
