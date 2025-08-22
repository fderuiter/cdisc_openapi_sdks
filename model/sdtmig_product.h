/*
 * sdtmig_product.h
 *
 * 
 */

#ifndef _sdtmig_product_H_
#define _sdtmig_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_product_t sdtmig_product_t;

#include "sdtmig_class.h"
#include "sdtmig_product_links.h"



typedef struct sdtmig_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sdtmig_product_links_t *_links; //model
    list_t *classes; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_product_t;

__attribute__((deprecated)) sdtmig_product_t *sdtmig_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_product_links_t *_links,
    list_t *classes
);

void sdtmig_product_free(sdtmig_product_t *sdtmig_product);

sdtmig_product_t *sdtmig_product_parseFromJSON(cJSON *sdtmig_productJSON);

cJSON *sdtmig_product_convertToJSON(sdtmig_product_t *sdtmig_product);

#endif /* _sdtmig_product_H_ */

