/*
 * xml_sdtmig_product.h
 *
 * 
 */

#ifndef _xml_sdtmig_product_H_
#define _xml_sdtmig_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtmig_product_t xml_sdtmig_product_t;

#include "sdtmig_product.h"



typedef struct xml_sdtmig_product_t {
    struct sdtmig_product_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtmig_product_t;

__attribute__((deprecated)) xml_sdtmig_product_t *xml_sdtmig_product_create(
    sdtmig_product_t *self
);

void xml_sdtmig_product_free(xml_sdtmig_product_t *xml_sdtmig_product);

xml_sdtmig_product_t *xml_sdtmig_product_parseFromJSON(cJSON *xml_sdtmig_productJSON);

cJSON *xml_sdtmig_product_convertToJSON(xml_sdtmig_product_t *xml_sdtmig_product);

#endif /* _xml_sdtmig_product_H_ */

