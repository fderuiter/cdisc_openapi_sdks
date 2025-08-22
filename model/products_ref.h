/*
 * products_ref.h
 *
 * 
 */

#ifndef _products_ref_H_
#define _products_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct products_ref_t products_ref_t;




typedef struct products_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} products_ref_t;

__attribute__((deprecated)) products_ref_t *products_ref_create(
    char *href,
    char *title,
    char *type
);

void products_ref_free(products_ref_t *products_ref);

products_ref_t *products_ref_parseFromJSON(cJSON *products_refJSON);

cJSON *products_ref_convertToJSON(products_ref_t *products_ref);

#endif /* _products_ref_H_ */

