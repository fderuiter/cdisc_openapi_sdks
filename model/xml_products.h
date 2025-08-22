/*
 * xml_products.h
 *
 * 
 */

#ifndef _xml_products_H_
#define _xml_products_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_products_t xml_products_t;

#include "products.h"



typedef struct xml_products_t {
    struct products_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_products_t;

__attribute__((deprecated)) xml_products_t *xml_products_create(
    products_t *self
);

void xml_products_free(xml_products_t *xml_products);

xml_products_t *xml_products_parseFromJSON(cJSON *xml_productsJSON);

cJSON *xml_products_convertToJSON(xml_products_t *xml_products);

#endif /* _xml_products_H_ */

