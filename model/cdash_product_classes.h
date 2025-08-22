/*
 * cdash_product_classes.h
 *
 * 
 */

#ifndef _cdash_product_classes_H_
#define _cdash_product_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_product_classes_t cdash_product_classes_t;

#include "cdash_product_classes_links.h"



typedef struct cdash_product_classes_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct cdash_product_classes_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_product_classes_t;

__attribute__((deprecated)) cdash_product_classes_t *cdash_product_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdash_product_classes_links_t *_links
);

void cdash_product_classes_free(cdash_product_classes_t *cdash_product_classes);

cdash_product_classes_t *cdash_product_classes_parseFromJSON(cJSON *cdash_product_classesJSON);

cJSON *cdash_product_classes_convertToJSON(cdash_product_classes_t *cdash_product_classes);

#endif /* _cdash_product_classes_H_ */

