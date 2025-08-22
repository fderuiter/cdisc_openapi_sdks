/*
 * root_cdash_domain_field_ref.h
 *
 * 
 */

#ifndef _root_cdash_domain_field_ref_H_
#define _root_cdash_domain_field_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_cdash_domain_field_ref_t root_cdash_domain_field_ref_t;




typedef struct root_cdash_domain_field_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} root_cdash_domain_field_ref_t;

__attribute__((deprecated)) root_cdash_domain_field_ref_t *root_cdash_domain_field_ref_create(
    char *href,
    char *title,
    char *type
);

void root_cdash_domain_field_ref_free(root_cdash_domain_field_ref_t *root_cdash_domain_field_ref);

root_cdash_domain_field_ref_t *root_cdash_domain_field_ref_parseFromJSON(cJSON *root_cdash_domain_field_refJSON);

cJSON *root_cdash_domain_field_ref_convertToJSON(root_cdash_domain_field_ref_t *root_cdash_domain_field_ref);

#endif /* _root_cdash_domain_field_ref_H_ */

