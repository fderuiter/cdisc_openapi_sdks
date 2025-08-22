/*
 * sendig_product_ref.h
 *
 * 
 */

#ifndef _sendig_product_ref_H_
#define _sendig_product_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_product_ref_t sendig_product_ref_t;




typedef struct sendig_product_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_product_ref_t;

__attribute__((deprecated)) sendig_product_ref_t *sendig_product_ref_create(
    char *href,
    char *title,
    char *type
);

void sendig_product_ref_free(sendig_product_ref_t *sendig_product_ref);

sendig_product_ref_t *sendig_product_ref_parseFromJSON(cJSON *sendig_product_refJSON);

cJSON *sendig_product_ref_convertToJSON(sendig_product_ref_t *sendig_product_ref);

#endif /* _sendig_product_ref_H_ */

