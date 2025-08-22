/*
 * xml_sendig_product.h
 *
 * 
 */

#ifndef _xml_sendig_product_H_
#define _xml_sendig_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sendig_product_t xml_sendig_product_t;

#include "sendig_product.h"



typedef struct xml_sendig_product_t {
    struct sendig_product_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sendig_product_t;

__attribute__((deprecated)) xml_sendig_product_t *xml_sendig_product_create(
    sendig_product_t *self
);

void xml_sendig_product_free(xml_sendig_product_t *xml_sendig_product);

xml_sendig_product_t *xml_sendig_product_parseFromJSON(cJSON *xml_sendig_productJSON);

cJSON *xml_sendig_product_convertToJSON(xml_sendig_product_t *xml_sendig_product);

#endif /* _xml_sendig_product_H_ */

