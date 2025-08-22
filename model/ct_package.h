/*
 * ct_package.h
 *
 * 
 */

#ifndef _ct_package_H_
#define _ct_package_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_package_t ct_package_t;

#include "ct_package_codelists.h"
#include "ct_package_links.h"



typedef struct ct_package_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct ct_package_links_t *_links; //model
    list_t *codelists; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} ct_package_t;

__attribute__((deprecated)) ct_package_t *ct_package_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    ct_package_links_t *_links,
    list_t *codelists
);

void ct_package_free(ct_package_t *ct_package);

ct_package_t *ct_package_parseFromJSON(cJSON *ct_packageJSON);

cJSON *ct_package_convertToJSON(ct_package_t *ct_package);

#endif /* _ct_package_H_ */

