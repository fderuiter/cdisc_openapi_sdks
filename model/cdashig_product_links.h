/*
 * cdashig_product_links.h
 *
 * 
 */

#ifndef _cdashig_product_links_H_
#define _cdashig_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_links_t cdashig_product_links_t;

#include "cdash_product_ref.h"
#include "cdashig_product_ref.h"



typedef struct cdashig_product_links_t {
    struct cdashig_product_ref_t *self; //model
    struct cdash_product_ref_t *model; //model
    struct cdashig_product_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_links_t;

__attribute__((deprecated)) cdashig_product_links_t *cdashig_product_links_create(
    cdashig_product_ref_t *self,
    cdash_product_ref_t *model,
    cdashig_product_ref_t *prior_version
);

void cdashig_product_links_free(cdashig_product_links_t *cdashig_product_links);

cdashig_product_links_t *cdashig_product_links_parseFromJSON(cJSON *cdashig_product_linksJSON);

cJSON *cdashig_product_links_convertToJSON(cdashig_product_links_t *cdashig_product_links);

#endif /* _cdashig_product_links_H_ */

