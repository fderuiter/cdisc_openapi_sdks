/*
 * cdashig_product_classes_ref.h
 *
 * 
 */

#ifndef _cdashig_product_classes_ref_H_
#define _cdashig_product_classes_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_classes_ref_t cdashig_product_classes_ref_t;




typedef struct cdashig_product_classes_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_classes_ref_t;

__attribute__((deprecated)) cdashig_product_classes_ref_t *cdashig_product_classes_ref_create(
    char *href,
    char *title,
    char *type
);

void cdashig_product_classes_ref_free(cdashig_product_classes_ref_t *cdashig_product_classes_ref);

cdashig_product_classes_ref_t *cdashig_product_classes_ref_parseFromJSON(cJSON *cdashig_product_classes_refJSON);

cJSON *cdashig_product_classes_ref_convertToJSON(cdashig_product_classes_ref_t *cdashig_product_classes_ref);

#endif /* _cdashig_product_classes_ref_H_ */

