/*
 * xml_adam_product_datastructures.h
 *
 * 
 */

#ifndef _xml_adam_product_datastructures_H_
#define _xml_adam_product_datastructures_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_product_datastructures_t xml_adam_product_datastructures_t;

#include "adam_product_datastructures.h"



typedef struct xml_adam_product_datastructures_t {
    struct adam_product_datastructures_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_product_datastructures_t;

__attribute__((deprecated)) xml_adam_product_datastructures_t *xml_adam_product_datastructures_create(
    adam_product_datastructures_t *self
);

void xml_adam_product_datastructures_free(xml_adam_product_datastructures_t *xml_adam_product_datastructures);

xml_adam_product_datastructures_t *xml_adam_product_datastructures_parseFromJSON(cJSON *xml_adam_product_datastructuresJSON);

cJSON *xml_adam_product_datastructures_convertToJSON(xml_adam_product_datastructures_t *xml_adam_product_datastructures);

#endif /* _xml_adam_product_datastructures_H_ */

