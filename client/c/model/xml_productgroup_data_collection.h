/*
 * xml_productgroup_data_collection.h
 *
 * 
 */

#ifndef _xml_productgroup_data_collection_H_
#define _xml_productgroup_data_collection_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_productgroup_data_collection_t xml_productgroup_data_collection_t;

#include "productgroup_data_collection.h"



typedef struct xml_productgroup_data_collection_t {
    struct productgroup_data_collection_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_productgroup_data_collection_t;

__attribute__((deprecated)) xml_productgroup_data_collection_t *xml_productgroup_data_collection_create(
    productgroup_data_collection_t *self
);

void xml_productgroup_data_collection_free(xml_productgroup_data_collection_t *xml_productgroup_data_collection);

xml_productgroup_data_collection_t *xml_productgroup_data_collection_parseFromJSON(cJSON *xml_productgroup_data_collectionJSON);

cJSON *xml_productgroup_data_collection_convertToJSON(xml_productgroup_data_collection_t *xml_productgroup_data_collection);

#endif /* _xml_productgroup_data_collection_H_ */

