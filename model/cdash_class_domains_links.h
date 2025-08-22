/*
 * cdash_class_domains_links.h
 *
 * 
 */

#ifndef _cdash_class_domains_links_H_
#define _cdash_class_domains_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_domains_links_t cdash_class_domains_links_t;

#include "cdash_class_domains_ref.h"
#include "cdash_domain_ref_element.h"



typedef struct cdash_class_domains_links_t {
    struct cdash_class_domains_ref_t *self; //model
    list_t *domains; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_domains_links_t;

__attribute__((deprecated)) cdash_class_domains_links_t *cdash_class_domains_links_create(
    cdash_class_domains_ref_t *self,
    list_t *domains
);

void cdash_class_domains_links_free(cdash_class_domains_links_t *cdash_class_domains_links);

cdash_class_domains_links_t *cdash_class_domains_links_parseFromJSON(cJSON *cdash_class_domains_linksJSON);

cJSON *cdash_class_domains_links_convertToJSON(cdash_class_domains_links_t *cdash_class_domains_links);

#endif /* _cdash_class_domains_links_H_ */

