/*
 * sdtmig_product_ref_element.h
 *
 * 
 */

#ifndef _sdtmig_product_ref_element_H_
#define _sdtmig_product_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_product_ref_element_t sdtmig_product_ref_element_t;




typedef struct sdtmig_product_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_product_ref_element_t;

__attribute__((deprecated)) sdtmig_product_ref_element_t *sdtmig_product_ref_element_create(
    char *href,
    char *title,
    char *type
);

void sdtmig_product_ref_element_free(sdtmig_product_ref_element_t *sdtmig_product_ref_element);

sdtmig_product_ref_element_t *sdtmig_product_ref_element_parseFromJSON(cJSON *sdtmig_product_ref_elementJSON);

cJSON *sdtmig_product_ref_element_convertToJSON(sdtmig_product_ref_element_t *sdtmig_product_ref_element);

#endif /* _sdtmig_product_ref_element_H_ */

