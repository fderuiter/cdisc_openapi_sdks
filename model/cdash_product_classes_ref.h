/*
 * cdash_product_classes_ref.h
 *
 * 
 */

#ifndef _cdash_product_classes_ref_H_
#define _cdash_product_classes_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_product_classes_ref_t cdash_product_classes_ref_t;




typedef struct cdash_product_classes_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_product_classes_ref_t;

__attribute__((deprecated)) cdash_product_classes_ref_t *cdash_product_classes_ref_create(
    char *href,
    char *title,
    char *type
);

void cdash_product_classes_ref_free(cdash_product_classes_ref_t *cdash_product_classes_ref);

cdash_product_classes_ref_t *cdash_product_classes_ref_parseFromJSON(cJSON *cdash_product_classes_refJSON);

cJSON *cdash_product_classes_ref_convertToJSON(cdash_product_classes_ref_t *cdash_product_classes_ref);

#endif /* _cdash_product_classes_ref_H_ */

