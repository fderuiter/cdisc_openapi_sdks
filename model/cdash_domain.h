/*
 * cdash_domain.h
 *
 * 
 */

#ifndef _cdash_domain_H_
#define _cdash_domain_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_t cdash_domain_t;

#include "cdash_domain_field.h"
#include "cdash_domain_links.h"



typedef struct cdash_domain_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    struct cdash_domain_links_t *_links; //model
    list_t *fields; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_t;

__attribute__((deprecated)) cdash_domain_t *cdash_domain_create(
    char *ordinal,
    char *name,
    char *label,
    cdash_domain_links_t *_links,
    list_t *fields
);

void cdash_domain_free(cdash_domain_t *cdash_domain);

cdash_domain_t *cdash_domain_parseFromJSON(cJSON *cdash_domainJSON);

cJSON *cdash_domain_convertToJSON(cdash_domain_t *cdash_domain);

#endif /* _cdash_domain_H_ */

