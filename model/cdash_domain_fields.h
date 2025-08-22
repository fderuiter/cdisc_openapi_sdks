/*
 * cdash_domain_fields.h
 *
 * 
 */

#ifndef _cdash_domain_fields_H_
#define _cdash_domain_fields_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_fields_t cdash_domain_fields_t;

#include "cdash_domain_fields_links.h"



typedef struct cdash_domain_fields_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    struct cdash_domain_fields_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_fields_t;

__attribute__((deprecated)) cdash_domain_fields_t *cdash_domain_fields_create(
    char *ordinal,
    char *name,
    char *label,
    cdash_domain_fields_links_t *_links
);

void cdash_domain_fields_free(cdash_domain_fields_t *cdash_domain_fields);

cdash_domain_fields_t *cdash_domain_fields_parseFromJSON(cJSON *cdash_domain_fieldsJSON);

cJSON *cdash_domain_fields_convertToJSON(cdash_domain_fields_t *cdash_domain_fields);

#endif /* _cdash_domain_fields_H_ */

