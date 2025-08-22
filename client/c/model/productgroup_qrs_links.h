/*
 * productgroup_qrs_links.h
 *
 * 
 */

#ifndef _productgroup_qrs_links_H_
#define _productgroup_qrs_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_qrs_links_t productgroup_qrs_links_t;

#include "productgroup_ref.h"
#include "qrs_ref_element.h"



typedef struct productgroup_qrs_links_t {
    struct productgroup_ref_t *self; //model
    list_t *qrs; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_qrs_links_t;

__attribute__((deprecated)) productgroup_qrs_links_t *productgroup_qrs_links_create(
    productgroup_ref_t *self,
    list_t *qrs
);

void productgroup_qrs_links_free(productgroup_qrs_links_t *productgroup_qrs_links);

productgroup_qrs_links_t *productgroup_qrs_links_parseFromJSON(cJSON *productgroup_qrs_linksJSON);

cJSON *productgroup_qrs_links_convertToJSON(productgroup_qrs_links_t *productgroup_qrs_links);

#endif /* _productgroup_qrs_links_H_ */

