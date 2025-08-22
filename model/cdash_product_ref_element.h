/*
 * cdash_product_ref_element.h
 *
 * 
 */

#ifndef _cdash_product_ref_element_H_
#define _cdash_product_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_product_ref_element_t cdash_product_ref_element_t;




typedef struct cdash_product_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_product_ref_element_t;

__attribute__((deprecated)) cdash_product_ref_element_t *cdash_product_ref_element_create(
    char *href,
    char *title,
    char *type
);

void cdash_product_ref_element_free(cdash_product_ref_element_t *cdash_product_ref_element);

cdash_product_ref_element_t *cdash_product_ref_element_parseFromJSON(cJSON *cdash_product_ref_elementJSON);

cJSON *cdash_product_ref_element_convertToJSON(cdash_product_ref_element_t *cdash_product_ref_element);

#endif /* _cdash_product_ref_element_H_ */

