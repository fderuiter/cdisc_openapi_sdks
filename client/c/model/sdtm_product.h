/*
 * sdtm_product.h
 *
 * 
 */

#ifndef _sdtm_product_H_
#define _sdtm_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_product_t sdtm_product_t;

#include "sdtm_class.h"
#include "sdtm_dataset.h"
#include "sdtm_product_links.h"



typedef struct sdtm_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sdtm_product_links_t *_links; //model
    list_t *classes; //nonprimitive container
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_product_t;

__attribute__((deprecated)) sdtm_product_t *sdtm_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_product_links_t *_links,
    list_t *classes,
    list_t *datasets
);

void sdtm_product_free(sdtm_product_t *sdtm_product);

sdtm_product_t *sdtm_product_parseFromJSON(cJSON *sdtm_productJSON);

cJSON *sdtm_product_convertToJSON(sdtm_product_t *sdtm_product);

#endif /* _sdtm_product_H_ */

