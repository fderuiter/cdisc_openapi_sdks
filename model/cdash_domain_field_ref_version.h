/*
 * cdash_domain_field_ref_version.h
 *
 * 
 */

#ifndef _cdash_domain_field_ref_version_H_
#define _cdash_domain_field_ref_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_field_ref_version_t cdash_domain_field_ref_version_t;




typedef struct cdash_domain_field_ref_version_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_field_ref_version_t;

__attribute__((deprecated)) cdash_domain_field_ref_version_t *cdash_domain_field_ref_version_create(
    char *href,
    char *title,
    char *type
);

void cdash_domain_field_ref_version_free(cdash_domain_field_ref_version_t *cdash_domain_field_ref_version);

cdash_domain_field_ref_version_t *cdash_domain_field_ref_version_parseFromJSON(cJSON *cdash_domain_field_ref_versionJSON);

cJSON *cdash_domain_field_ref_version_convertToJSON(cdash_domain_field_ref_version_t *cdash_domain_field_ref_version);

#endif /* _cdash_domain_field_ref_version_H_ */

