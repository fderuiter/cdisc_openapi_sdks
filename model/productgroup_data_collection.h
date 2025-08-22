/*
 * productgroup_data_collection.h
 *
 * 
 */

#ifndef _productgroup_data_collection_H_
#define _productgroup_data_collection_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_data_collection_t productgroup_data_collection_t;

#include "productgroup_data_collection_links.h"



typedef struct productgroup_data_collection_t {
    struct productgroup_data_collection_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_data_collection_t;

__attribute__((deprecated)) productgroup_data_collection_t *productgroup_data_collection_create(
    productgroup_data_collection_links_t *_links
);

void productgroup_data_collection_free(productgroup_data_collection_t *productgroup_data_collection);

productgroup_data_collection_t *productgroup_data_collection_parseFromJSON(cJSON *productgroup_data_collectionJSON);

cJSON *productgroup_data_collection_convertToJSON(productgroup_data_collection_t *productgroup_data_collection);

#endif /* _productgroup_data_collection_H_ */

