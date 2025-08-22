/*
 * cdash_domain_fields_links.h
 *
 * 
 */

#ifndef _cdash_domain_fields_links_H_
#define _cdash_domain_fields_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_fields_links_t cdash_domain_fields_links_t;

#include "cdash_class_ref.h"
#include "cdash_domain_field_ref_element.h"
#include "cdash_domain_fields_ref.h"
#include "cdash_product_ref.h"



typedef struct cdash_domain_fields_links_t {
    struct cdash_domain_fields_ref_t *self; //model
    struct cdash_product_ref_t *parent_product; //model
    struct cdash_class_ref_t *parent_class; //model
    list_t *fields; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_fields_links_t;

__attribute__((deprecated)) cdash_domain_fields_links_t *cdash_domain_fields_links_create(
    cdash_domain_fields_ref_t *self,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    list_t *fields
);

void cdash_domain_fields_links_free(cdash_domain_fields_links_t *cdash_domain_fields_links);

cdash_domain_fields_links_t *cdash_domain_fields_links_parseFromJSON(cJSON *cdash_domain_fields_linksJSON);

cJSON *cdash_domain_fields_links_convertToJSON(cdash_domain_fields_links_t *cdash_domain_fields_links);

#endif /* _cdash_domain_fields_links_H_ */

