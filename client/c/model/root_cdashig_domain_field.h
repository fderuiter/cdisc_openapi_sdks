/*
 * root_cdashig_domain_field.h
 *
 * 
 */

#ifndef _root_cdashig_domain_field_H_
#define _root_cdashig_domain_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_cdashig_domain_field_t root_cdashig_domain_field_t;

#include "root_cdashig_domain_field_links.h"



typedef struct root_cdashig_domain_field_t {
    struct root_cdashig_domain_field_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} root_cdashig_domain_field_t;

__attribute__((deprecated)) root_cdashig_domain_field_t *root_cdashig_domain_field_create(
    root_cdashig_domain_field_links_t *_links
);

void root_cdashig_domain_field_free(root_cdashig_domain_field_t *root_cdashig_domain_field);

root_cdashig_domain_field_t *root_cdashig_domain_field_parseFromJSON(cJSON *root_cdashig_domain_fieldJSON);

cJSON *root_cdashig_domain_field_convertToJSON(root_cdashig_domain_field_t *root_cdashig_domain_field);

#endif /* _root_cdashig_domain_field_H_ */

