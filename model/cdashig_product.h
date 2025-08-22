/*
 * cdashig_product.h
 *
 * 
 */

#ifndef _cdashig_product_H_
#define _cdashig_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_t cdashig_product_t;

#include "cdashig_class.h"
#include "cdashig_product_links.h"



typedef struct cdashig_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct cdashig_product_links_t *_links; //model
    list_t *classes; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_t;

__attribute__((deprecated)) cdashig_product_t *cdashig_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_links_t *_links,
    list_t *classes
);

void cdashig_product_free(cdashig_product_t *cdashig_product);

cdashig_product_t *cdashig_product_parseFromJSON(cJSON *cdashig_productJSON);

cJSON *cdashig_product_convertToJSON(cdashig_product_t *cdashig_product);

#endif /* _cdashig_product_H_ */

