/*
 * productgroup_terminology_links.h
 *
 * 
 */

#ifndef _productgroup_terminology_links_H_
#define _productgroup_terminology_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_terminology_links_t productgroup_terminology_links_t;

#include "ct_package_ref_element.h"
#include "productgroup_ref.h"



typedef struct productgroup_terminology_links_t {
    struct productgroup_ref_t *self; //model
    list_t *packages; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_terminology_links_t;

__attribute__((deprecated)) productgroup_terminology_links_t *productgroup_terminology_links_create(
    productgroup_ref_t *self,
    list_t *packages
);

void productgroup_terminology_links_free(productgroup_terminology_links_t *productgroup_terminology_links);

productgroup_terminology_links_t *productgroup_terminology_links_parseFromJSON(cJSON *productgroup_terminology_linksJSON);

cJSON *productgroup_terminology_links_convertToJSON(productgroup_terminology_links_t *productgroup_terminology_links);

#endif /* _productgroup_terminology_links_H_ */

