/*
 * cdashig_domain_links.h
 *
 * 
 */

#ifndef _cdashig_domain_links_H_
#define _cdashig_domain_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_links_t cdashig_domain_links_t;

#include "cdashig_class_ref.h"
#include "cdashig_domain_ref.h"
#include "cdashig_product_ref.h"
#include "cdashig_scenario_ref_element.h"



typedef struct cdashig_domain_links_t {
    struct cdashig_domain_ref_t *self; //model
    struct cdashig_product_ref_t *parent_product; //model
    struct cdashig_class_ref_t *parent_class; //model
    struct cdashig_domain_ref_t *prior_version; //model
    list_t *scenarios; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_links_t;

__attribute__((deprecated)) cdashig_domain_links_t *cdashig_domain_links_create(
    cdashig_domain_ref_t *self,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    cdashig_domain_ref_t *prior_version,
    list_t *scenarios
);

void cdashig_domain_links_free(cdashig_domain_links_t *cdashig_domain_links);

cdashig_domain_links_t *cdashig_domain_links_parseFromJSON(cJSON *cdashig_domain_linksJSON);

cJSON *cdashig_domain_links_convertToJSON(cdashig_domain_links_t *cdashig_domain_links);

#endif /* _cdashig_domain_links_H_ */

