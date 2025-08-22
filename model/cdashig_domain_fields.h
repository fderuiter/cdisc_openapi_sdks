/*
 * cdashig_domain_fields.h
 *
 * 
 */

#ifndef _cdashig_domain_fields_H_
#define _cdashig_domain_fields_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_fields_t cdashig_domain_fields_t;

#include "cdashig_domain_fields_links.h"



typedef struct cdashig_domain_fields_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    struct cdashig_domain_fields_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_fields_t;

__attribute__((deprecated)) cdashig_domain_fields_t *cdashig_domain_fields_create(
    char *ordinal,
    char *name,
    char *label,
    cdashig_domain_fields_links_t *_links
);

void cdashig_domain_fields_free(cdashig_domain_fields_t *cdashig_domain_fields);

cdashig_domain_fields_t *cdashig_domain_fields_parseFromJSON(cJSON *cdashig_domain_fieldsJSON);

cJSON *cdashig_domain_fields_convertToJSON(cdashig_domain_fields_t *cdashig_domain_fields);

#endif /* _cdashig_domain_fields_H_ */

