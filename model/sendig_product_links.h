/*
 * sendig_product_links.h
 *
 * 
 */

#ifndef _sendig_product_links_H_
#define _sendig_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_product_links_t sendig_product_links_t;

#include "sdtm_product_ref.h"
#include "sendig_product_ref.h"



typedef struct sendig_product_links_t {
    struct sendig_product_ref_t *self; //model
    struct sdtm_product_ref_t *model; //model
    struct sendig_product_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_product_links_t;

__attribute__((deprecated)) sendig_product_links_t *sendig_product_links_create(
    sendig_product_ref_t *self,
    sdtm_product_ref_t *model,
    sendig_product_ref_t *prior_version
);

void sendig_product_links_free(sendig_product_links_t *sendig_product_links);

sendig_product_links_t *sendig_product_links_parseFromJSON(cJSON *sendig_product_linksJSON);

cJSON *sendig_product_links_convertToJSON(sendig_product_links_t *sendig_product_links);

#endif /* _sendig_product_links_H_ */

