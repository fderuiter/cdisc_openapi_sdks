/*
 * cdash_class_links.h
 *
 * 
 */

#ifndef _cdash_class_links_H_
#define _cdash_class_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_links_t cdash_class_links_t;

#include "cdash_class_ref.h"
#include "cdash_product_ref.h"



typedef struct cdash_class_links_t {
    struct cdash_class_ref_t *self; //model
    struct cdash_product_ref_t *parent_product; //model
    struct cdash_class_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_links_t;

__attribute__((deprecated)) cdash_class_links_t *cdash_class_links_create(
    cdash_class_ref_t *self,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *prior_version
);

void cdash_class_links_free(cdash_class_links_t *cdash_class_links);

cdash_class_links_t *cdash_class_links_parseFromJSON(cJSON *cdash_class_linksJSON);

cJSON *cdash_class_links_convertToJSON(cdash_class_links_t *cdash_class_links);

#endif /* _cdash_class_links_H_ */

