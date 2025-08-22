/*
 * productgroup_qrs.h
 *
 * 
 */

#ifndef _productgroup_qrs_H_
#define _productgroup_qrs_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_qrs_t productgroup_qrs_t;

#include "productgroup_qrs_links.h"



typedef struct productgroup_qrs_t {
    struct productgroup_qrs_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_qrs_t;

__attribute__((deprecated)) productgroup_qrs_t *productgroup_qrs_create(
    productgroup_qrs_links_t *_links
);

void productgroup_qrs_free(productgroup_qrs_t *productgroup_qrs);

productgroup_qrs_t *productgroup_qrs_parseFromJSON(cJSON *productgroup_qrsJSON);

cJSON *productgroup_qrs_convertToJSON(productgroup_qrs_t *productgroup_qrs);

#endif /* _productgroup_qrs_H_ */

