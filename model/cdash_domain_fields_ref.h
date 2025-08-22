/*
 * cdash_domain_fields_ref.h
 *
 * 
 */

#ifndef _cdash_domain_fields_ref_H_
#define _cdash_domain_fields_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_fields_ref_t cdash_domain_fields_ref_t;




typedef struct cdash_domain_fields_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_fields_ref_t;

__attribute__((deprecated)) cdash_domain_fields_ref_t *cdash_domain_fields_ref_create(
    char *href,
    char *title,
    char *type
);

void cdash_domain_fields_ref_free(cdash_domain_fields_ref_t *cdash_domain_fields_ref);

cdash_domain_fields_ref_t *cdash_domain_fields_ref_parseFromJSON(cJSON *cdash_domain_fields_refJSON);

cJSON *cdash_domain_fields_ref_convertToJSON(cdash_domain_fields_ref_t *cdash_domain_fields_ref);

#endif /* _cdash_domain_fields_ref_H_ */

