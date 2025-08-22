/*
 * cdashig_product_ref_element.h
 *
 * 
 */

#ifndef _cdashig_product_ref_element_H_
#define _cdashig_product_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_ref_element_t cdashig_product_ref_element_t;




typedef struct cdashig_product_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_ref_element_t;

__attribute__((deprecated)) cdashig_product_ref_element_t *cdashig_product_ref_element_create(
    char *href,
    char *title,
    char *type
);

void cdashig_product_ref_element_free(cdashig_product_ref_element_t *cdashig_product_ref_element);

cdashig_product_ref_element_t *cdashig_product_ref_element_parseFromJSON(cJSON *cdashig_product_ref_elementJSON);

cJSON *cdashig_product_ref_element_convertToJSON(cdashig_product_ref_element_t *cdashig_product_ref_element);

#endif /* _cdashig_product_ref_element_H_ */

