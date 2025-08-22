/*
 * adam_product_datastructures_ref.h
 *
 * 
 */

#ifndef _adam_product_datastructures_ref_H_
#define _adam_product_datastructures_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_product_datastructures_ref_t adam_product_datastructures_ref_t;




typedef struct adam_product_datastructures_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} adam_product_datastructures_ref_t;

__attribute__((deprecated)) adam_product_datastructures_ref_t *adam_product_datastructures_ref_create(
    char *href,
    char *title,
    char *type
);

void adam_product_datastructures_ref_free(adam_product_datastructures_ref_t *adam_product_datastructures_ref);

adam_product_datastructures_ref_t *adam_product_datastructures_ref_parseFromJSON(cJSON *adam_product_datastructures_refJSON);

cJSON *adam_product_datastructures_ref_convertToJSON(adam_product_datastructures_ref_t *adam_product_datastructures_ref);

#endif /* _adam_product_datastructures_ref_H_ */

