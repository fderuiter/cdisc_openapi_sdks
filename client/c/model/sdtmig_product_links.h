/*
 * sdtmig_product_links.h
 *
 * 
 */

#ifndef _sdtmig_product_links_H_
#define _sdtmig_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_product_links_t sdtmig_product_links_t;

#include "sdtm_product_ref.h"
#include "sdtmig_product_ref.h"



typedef struct sdtmig_product_links_t {
    struct sdtmig_product_ref_t *self; //model
    struct sdtm_product_ref_t *model; //model
    struct sdtmig_product_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_product_links_t;

__attribute__((deprecated)) sdtmig_product_links_t *sdtmig_product_links_create(
    sdtmig_product_ref_t *self,
    sdtm_product_ref_t *model,
    sdtmig_product_ref_t *prior_version
);

void sdtmig_product_links_free(sdtmig_product_links_t *sdtmig_product_links);

sdtmig_product_links_t *sdtmig_product_links_parseFromJSON(cJSON *sdtmig_product_linksJSON);

cJSON *sdtmig_product_links_convertToJSON(sdtmig_product_links_t *sdtmig_product_links);

#endif /* _sdtmig_product_links_H_ */

