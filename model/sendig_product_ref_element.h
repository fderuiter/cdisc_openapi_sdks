/*
 * sendig_product_ref_element.h
 *
 * 
 */

#ifndef _sendig_product_ref_element_H_
#define _sendig_product_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_product_ref_element_t sendig_product_ref_element_t;




typedef struct sendig_product_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_product_ref_element_t;

__attribute__((deprecated)) sendig_product_ref_element_t *sendig_product_ref_element_create(
    char *href,
    char *title,
    char *type
);

void sendig_product_ref_element_free(sendig_product_ref_element_t *sendig_product_ref_element);

sendig_product_ref_element_t *sendig_product_ref_element_parseFromJSON(cJSON *sendig_product_ref_elementJSON);

cJSON *sendig_product_ref_element_convertToJSON(sendig_product_ref_element_t *sendig_product_ref_element);

#endif /* _sendig_product_ref_element_H_ */

