/*
 * products.h
 *
 * 
 */

#ifndef _products_H_
#define _products_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct products_t products_t;

#include "products_links.h"



typedef struct products_t {
    struct products_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} products_t;

__attribute__((deprecated)) products_t *products_create(
    products_links_t *_links
);

void products_free(products_t *products);

products_t *products_parseFromJSON(cJSON *productsJSON);

cJSON *products_convertToJSON(products_t *products);

#endif /* _products_H_ */

