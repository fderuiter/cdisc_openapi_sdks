/*
 * cdashig_domain.h
 *
 * 
 */

#ifndef _cdashig_domain_H_
#define _cdashig_domain_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_t cdashig_domain_t;

#include "cdashig_domain_field.h"
#include "cdashig_domain_links.h"



typedef struct cdashig_domain_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    struct cdashig_domain_links_t *_links; //model
    list_t *fields; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_t;

__attribute__((deprecated)) cdashig_domain_t *cdashig_domain_create(
    char *ordinal,
    char *name,
    char *label,
    cdashig_domain_links_t *_links,
    list_t *fields
);

void cdashig_domain_free(cdashig_domain_t *cdashig_domain);

cdashig_domain_t *cdashig_domain_parseFromJSON(cJSON *cdashig_domainJSON);

cJSON *cdashig_domain_convertToJSON(cdashig_domain_t *cdashig_domain);

#endif /* _cdashig_domain_H_ */

