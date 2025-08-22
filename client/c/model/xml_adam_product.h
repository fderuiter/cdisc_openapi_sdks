/*
 * xml_adam_product.h
 *
 * 
 */

#ifndef _xml_adam_product_H_
#define _xml_adam_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_product_t xml_adam_product_t;

#include "adam_product.h"



typedef struct xml_adam_product_t {
    struct adam_product_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_product_t;

__attribute__((deprecated)) xml_adam_product_t *xml_adam_product_create(
    adam_product_t *self
);

void xml_adam_product_free(xml_adam_product_t *xml_adam_product);

xml_adam_product_t *xml_adam_product_parseFromJSON(cJSON *xml_adam_productJSON);

cJSON *xml_adam_product_convertToJSON(xml_adam_product_t *xml_adam_product);

#endif /* _xml_adam_product_H_ */

