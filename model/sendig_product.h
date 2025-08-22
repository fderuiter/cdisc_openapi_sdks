/*
 * sendig_product.h
 *
 * 
 */

#ifndef _sendig_product_H_
#define _sendig_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_product_t sendig_product_t;

#include "sendig_class.h"
#include "sendig_product_links.h"



typedef struct sendig_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sendig_product_links_t *_links; //model
    list_t *classes; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_product_t;

__attribute__((deprecated)) sendig_product_t *sendig_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_product_links_t *_links,
    list_t *classes
);

void sendig_product_free(sendig_product_t *sendig_product);

sendig_product_t *sendig_product_parseFromJSON(cJSON *sendig_productJSON);

cJSON *sendig_product_convertToJSON(sendig_product_t *sendig_product);

#endif /* _sendig_product_H_ */

