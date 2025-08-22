/*
 * productgroup_ref.h
 *
 * 
 */

#ifndef _productgroup_ref_H_
#define _productgroup_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_ref_t productgroup_ref_t;




typedef struct productgroup_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_ref_t;

__attribute__((deprecated)) productgroup_ref_t *productgroup_ref_create(
    char *href,
    char *title,
    char *type
);

void productgroup_ref_free(productgroup_ref_t *productgroup_ref);

productgroup_ref_t *productgroup_ref_parseFromJSON(cJSON *productgroup_refJSON);

cJSON *productgroup_ref_convertToJSON(productgroup_ref_t *productgroup_ref);

#endif /* _productgroup_ref_H_ */

