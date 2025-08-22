/*
 * sdtm_product_links.h
 *
 * 
 */

#ifndef _sdtm_product_links_H_
#define _sdtm_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_product_links_t sdtm_product_links_t;

#include "sdtm_product_ref.h"



typedef struct sdtm_product_links_t {
    struct sdtm_product_ref_t *self; //model
    struct sdtm_product_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_product_links_t;

__attribute__((deprecated)) sdtm_product_links_t *sdtm_product_links_create(
    sdtm_product_ref_t *self,
    sdtm_product_ref_t *prior_version
);

void sdtm_product_links_free(sdtm_product_links_t *sdtm_product_links);

sdtm_product_links_t *sdtm_product_links_parseFromJSON(cJSON *sdtm_product_linksJSON);

cJSON *sdtm_product_links_convertToJSON(sdtm_product_links_t *sdtm_product_links);

#endif /* _sdtm_product_links_H_ */

