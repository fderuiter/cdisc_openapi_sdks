/*
 * cdash_product.h
 *
 * 
 */

#ifndef _cdash_product_H_
#define _cdash_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_product_t cdash_product_t;

#include "cdash_class.h"
#include "cdash_domain.h"
#include "cdash_product_links.h"



typedef struct cdash_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct cdash_product_links_t *_links; //model
    list_t *classes; //nonprimitive container
    list_t *domains; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_product_t;

__attribute__((deprecated)) cdash_product_t *cdash_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdash_product_links_t *_links,
    list_t *classes,
    list_t *domains
);

void cdash_product_free(cdash_product_t *cdash_product);

cdash_product_t *cdash_product_parseFromJSON(cJSON *cdash_productJSON);

cJSON *cdash_product_convertToJSON(cdash_product_t *cdash_product);

#endif /* _cdash_product_H_ */

