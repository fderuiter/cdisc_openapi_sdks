/*
 * ct_packages.h
 *
 * 
 */

#ifndef _ct_packages_H_
#define _ct_packages_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_packages_t ct_packages_t;

#include "ct_packages_links.h"



typedef struct ct_packages_t {
    struct ct_packages_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_packages_t;

__attribute__((deprecated)) ct_packages_t *ct_packages_create(
    ct_packages_links_t *_links
);

void ct_packages_free(ct_packages_t *ct_packages);

ct_packages_t *ct_packages_parseFromJSON(cJSON *ct_packagesJSON);

cJSON *ct_packages_convertToJSON(ct_packages_t *ct_packages);

#endif /* _ct_packages_H_ */

