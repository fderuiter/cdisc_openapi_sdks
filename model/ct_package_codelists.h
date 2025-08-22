/*
 * ct_package_codelists.h
 *
 * 
 */

#ifndef _ct_package_codelists_H_
#define _ct_package_codelists_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_package_codelists_t ct_package_codelists_t;

#include "ct_package_codelists_links.h"



typedef struct ct_package_codelists_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct ct_package_codelists_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_package_codelists_t;

__attribute__((deprecated)) ct_package_codelists_t *ct_package_codelists_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    ct_package_codelists_links_t *_links
);

void ct_package_codelists_free(ct_package_codelists_t *ct_package_codelists);

ct_package_codelists_t *ct_package_codelists_parseFromJSON(cJSON *ct_package_codelistsJSON);

cJSON *ct_package_codelists_convertToJSON(ct_package_codelists_t *ct_package_codelists);

#endif /* _ct_package_codelists_H_ */

