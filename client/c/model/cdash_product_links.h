/*
 * cdash_product_links.h
 *
 * 
 */

#ifndef _cdash_product_links_H_
#define _cdash_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_product_links_t cdash_product_links_t;

#include "cdash_product_ref.h"



typedef struct cdash_product_links_t {
    struct cdash_product_ref_t *self; //model
    struct cdash_product_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_product_links_t;

__attribute__((deprecated)) cdash_product_links_t *cdash_product_links_create(
    cdash_product_ref_t *self,
    cdash_product_ref_t *prior_version
);

void cdash_product_links_free(cdash_product_links_t *cdash_product_links);

cdash_product_links_t *cdash_product_links_parseFromJSON(cJSON *cdash_product_linksJSON);

cJSON *cdash_product_links_convertToJSON(cdash_product_links_t *cdash_product_links);

#endif /* _cdash_product_links_H_ */

