/*
 * cdashig_class_domains_links.h
 *
 * 
 */

#ifndef _cdashig_class_domains_links_H_
#define _cdashig_class_domains_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_class_domains_links_t cdashig_class_domains_links_t;

#include "cdashig_class_domains_ref.h"
#include "cdashig_domain_ref_element.h"



typedef struct cdashig_class_domains_links_t {
    struct cdashig_class_domains_ref_t *self; //model
    list_t *domains; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_class_domains_links_t;

__attribute__((deprecated)) cdashig_class_domains_links_t *cdashig_class_domains_links_create(
    cdashig_class_domains_ref_t *self,
    list_t *domains
);

void cdashig_class_domains_links_free(cdashig_class_domains_links_t *cdashig_class_domains_links);

cdashig_class_domains_links_t *cdashig_class_domains_links_parseFromJSON(cJSON *cdashig_class_domains_linksJSON);

cJSON *cdashig_class_domains_links_convertToJSON(cdashig_class_domains_links_t *cdashig_class_domains_links);

#endif /* _cdashig_class_domains_links_H_ */

