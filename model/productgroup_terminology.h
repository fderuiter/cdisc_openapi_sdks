/*
 * productgroup_terminology.h
 *
 * 
 */

#ifndef _productgroup_terminology_H_
#define _productgroup_terminology_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_terminology_t productgroup_terminology_t;

#include "productgroup_terminology_links.h"



typedef struct productgroup_terminology_t {
    struct productgroup_terminology_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_terminology_t;

__attribute__((deprecated)) productgroup_terminology_t *productgroup_terminology_create(
    productgroup_terminology_links_t *_links
);

void productgroup_terminology_free(productgroup_terminology_t *productgroup_terminology);

productgroup_terminology_t *productgroup_terminology_parseFromJSON(cJSON *productgroup_terminologyJSON);

cJSON *productgroup_terminology_convertToJSON(productgroup_terminology_t *productgroup_terminology);

#endif /* _productgroup_terminology_H_ */

