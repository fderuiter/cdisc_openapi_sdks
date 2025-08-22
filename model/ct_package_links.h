/*
 * ct_package_links.h
 *
 * 
 */

#ifndef _ct_package_links_H_
#define _ct_package_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_package_links_t ct_package_links_t;

#include "ct_package_ref.h"



typedef struct ct_package_links_t {
    struct ct_package_ref_t *self; //model
    struct ct_package_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_package_links_t;

__attribute__((deprecated)) ct_package_links_t *ct_package_links_create(
    ct_package_ref_t *self,
    ct_package_ref_t *prior_version
);

void ct_package_links_free(ct_package_links_t *ct_package_links);

ct_package_links_t *ct_package_links_parseFromJSON(cJSON *ct_package_linksJSON);

cJSON *ct_package_links_convertToJSON(ct_package_links_t *ct_package_links);

#endif /* _ct_package_links_H_ */

