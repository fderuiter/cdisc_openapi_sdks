/*
 * xml_sdtm_product.h
 *
 * 
 */

#ifndef _xml_sdtm_product_H_
#define _xml_sdtm_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_product_t xml_sdtm_product_t;

#include "sdtm_product.h"



typedef struct xml_sdtm_product_t {
    struct sdtm_product_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_product_t;

__attribute__((deprecated)) xml_sdtm_product_t *xml_sdtm_product_create(
    sdtm_product_t *self
);

void xml_sdtm_product_free(xml_sdtm_product_t *xml_sdtm_product);

xml_sdtm_product_t *xml_sdtm_product_parseFromJSON(cJSON *xml_sdtm_productJSON);

cJSON *xml_sdtm_product_convertToJSON(xml_sdtm_product_t *xml_sdtm_product);

#endif /* _xml_sdtm_product_H_ */

