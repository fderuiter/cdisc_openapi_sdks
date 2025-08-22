/*
 * cdashig_domain_field_ref_version.h
 *
 * 
 */

#ifndef _cdashig_domain_field_ref_version_H_
#define _cdashig_domain_field_ref_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_field_ref_version_t cdashig_domain_field_ref_version_t;




typedef struct cdashig_domain_field_ref_version_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_field_ref_version_t;

__attribute__((deprecated)) cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_create(
    char *href,
    char *title,
    char *type
);

void cdashig_domain_field_ref_version_free(cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version);

cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version_parseFromJSON(cJSON *cdashig_domain_field_ref_versionJSON);

cJSON *cdashig_domain_field_ref_version_convertToJSON(cdashig_domain_field_ref_version_t *cdashig_domain_field_ref_version);

#endif /* _cdashig_domain_field_ref_version_H_ */

