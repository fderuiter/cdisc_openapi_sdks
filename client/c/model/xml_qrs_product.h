/*
 * xml_qrs_product.h
 *
 * 
 */

#ifndef _xml_qrs_product_H_
#define _xml_qrs_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_qrs_product_t xml_qrs_product_t;

#include "qrs_product.h"



typedef struct xml_qrs_product_t {
    struct qrs_product_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_qrs_product_t;

__attribute__((deprecated)) xml_qrs_product_t *xml_qrs_product_create(
    qrs_product_t *self
);

void xml_qrs_product_free(xml_qrs_product_t *xml_qrs_product);

xml_qrs_product_t *xml_qrs_product_parseFromJSON(cJSON *xml_qrs_productJSON);

cJSON *xml_qrs_product_convertToJSON(xml_qrs_product_t *xml_qrs_product);

#endif /* _xml_qrs_product_H_ */

