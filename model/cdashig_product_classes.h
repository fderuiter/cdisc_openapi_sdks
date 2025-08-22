/*
 * cdashig_product_classes.h
 *
 * 
 */

#ifndef _cdashig_product_classes_H_
#define _cdashig_product_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_classes_t cdashig_product_classes_t;

#include "cdashig_product_classes_links.h"



typedef struct cdashig_product_classes_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct cdashig_product_classes_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_classes_t;

__attribute__((deprecated)) cdashig_product_classes_t *cdashig_product_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_classes_links_t *_links
);

void cdashig_product_classes_free(cdashig_product_classes_t *cdashig_product_classes);

cdashig_product_classes_t *cdashig_product_classes_parseFromJSON(cJSON *cdashig_product_classesJSON);

cJSON *cdashig_product_classes_convertToJSON(cdashig_product_classes_t *cdashig_product_classes);

#endif /* _cdashig_product_classes_H_ */

