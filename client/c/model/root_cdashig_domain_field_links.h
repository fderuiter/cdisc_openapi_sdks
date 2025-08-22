/*
 * root_cdashig_domain_field_links.h
 *
 * 
 */

#ifndef _root_cdashig_domain_field_links_H_
#define _root_cdashig_domain_field_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_cdashig_domain_field_links_t root_cdashig_domain_field_links_t;

#include "cdashig_domain_field_ref_version.h"
#include "root_cdashig_domain_field_ref.h"



typedef struct root_cdashig_domain_field_links_t {
    struct root_cdashig_domain_field_ref_t *self; //model
    list_t *versions; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} root_cdashig_domain_field_links_t;

__attribute__((deprecated)) root_cdashig_domain_field_links_t *root_cdashig_domain_field_links_create(
    root_cdashig_domain_field_ref_t *self,
    list_t *versions
);

void root_cdashig_domain_field_links_free(root_cdashig_domain_field_links_t *root_cdashig_domain_field_links);

root_cdashig_domain_field_links_t *root_cdashig_domain_field_links_parseFromJSON(cJSON *root_cdashig_domain_field_linksJSON);

cJSON *root_cdashig_domain_field_links_convertToJSON(root_cdashig_domain_field_links_t *root_cdashig_domain_field_links);

#endif /* _root_cdashig_domain_field_links_H_ */

