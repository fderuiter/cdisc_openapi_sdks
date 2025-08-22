/*
 * xml_cdashig_product.h
 *
 * 
 */

#ifndef _xml_cdashig_product_H_
#define _xml_cdashig_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_product_t xml_cdashig_product_t;

#include "cdashig_product.h"



typedef struct xml_cdashig_product_t {
    struct cdashig_product_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_product_t;

__attribute__((deprecated)) xml_cdashig_product_t *xml_cdashig_product_create(
    cdashig_product_t *self
);

void xml_cdashig_product_free(xml_cdashig_product_t *xml_cdashig_product);

xml_cdashig_product_t *xml_cdashig_product_parseFromJSON(cJSON *xml_cdashig_productJSON);

cJSON *xml_cdashig_product_convertToJSON(xml_cdashig_product_t *xml_cdashig_product);

#endif /* _xml_cdashig_product_H_ */

