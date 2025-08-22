/*
 * ct_packages_links.h
 *
 * 
 */

#ifndef _ct_packages_links_H_
#define _ct_packages_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_packages_links_t ct_packages_links_t;

#include "ct_package_ref_element.h"
#include "ct_packages_ref.h"



typedef struct ct_packages_links_t {
    struct ct_packages_ref_t *self; //model
    list_t *packages; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} ct_packages_links_t;

__attribute__((deprecated)) ct_packages_links_t *ct_packages_links_create(
    ct_packages_ref_t *self,
    list_t *packages
);

void ct_packages_links_free(ct_packages_links_t *ct_packages_links);

ct_packages_links_t *ct_packages_links_parseFromJSON(cJSON *ct_packages_linksJSON);

cJSON *ct_packages_links_convertToJSON(ct_packages_links_t *ct_packages_links);

#endif /* _ct_packages_links_H_ */

