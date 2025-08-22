/*
 * cdashig_class_links.h
 *
 * 
 */

#ifndef _cdashig_class_links_H_
#define _cdashig_class_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_class_links_t cdashig_class_links_t;

#include "cdash_class_ref.h"
#include "cdashig_class_ref.h"
#include "cdashig_class_ref_subclass.h"
#include "cdashig_product_ref.h"



typedef struct cdashig_class_links_t {
    struct cdashig_class_ref_t *self; //model
    struct cdash_class_ref_t *model_class; //model
    struct cdashig_product_ref_t *parent_product; //model
    struct cdashig_class_ref_t *parent_class; //model
    list_t *subclasses; //nonprimitive container
    struct cdashig_class_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_class_links_t;

__attribute__((deprecated)) cdashig_class_links_t *cdashig_class_links_create(
    cdashig_class_ref_t *self,
    cdash_class_ref_t *model_class,
    cdashig_product_ref_t *parent_product,
    cdashig_class_ref_t *parent_class,
    list_t *subclasses,
    cdashig_class_ref_t *prior_version
);

void cdashig_class_links_free(cdashig_class_links_t *cdashig_class_links);

cdashig_class_links_t *cdashig_class_links_parseFromJSON(cJSON *cdashig_class_linksJSON);

cJSON *cdashig_class_links_convertToJSON(cdashig_class_links_t *cdashig_class_links);

#endif /* _cdashig_class_links_H_ */

