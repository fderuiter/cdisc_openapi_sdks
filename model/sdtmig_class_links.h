/*
 * sdtmig_class_links.h
 *
 * 
 */

#ifndef _sdtmig_class_links_H_
#define _sdtmig_class_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_class_links_t sdtmig_class_links_t;

#include "sdtm_class_ref.h"
#include "sdtmig_class_ref.h"
#include "sdtmig_class_ref_subclass.h"
#include "sdtmig_product_ref.h"



typedef struct sdtmig_class_links_t {
    struct sdtmig_class_ref_t *self; //model
    struct sdtm_class_ref_t *model_class; //model
    struct sdtmig_product_ref_t *parent_product; //model
    struct sdtmig_class_ref_t *parent_class; //model
    list_t *subclasses; //nonprimitive container
    struct sdtmig_class_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_class_links_t;

__attribute__((deprecated)) sdtmig_class_links_t *sdtmig_class_links_create(
    sdtmig_class_ref_t *self,
    sdtm_class_ref_t *model_class,
    sdtmig_product_ref_t *parent_product,
    sdtmig_class_ref_t *parent_class,
    list_t *subclasses,
    sdtmig_class_ref_t *prior_version
);

void sdtmig_class_links_free(sdtmig_class_links_t *sdtmig_class_links);

sdtmig_class_links_t *sdtmig_class_links_parseFromJSON(cJSON *sdtmig_class_linksJSON);

cJSON *sdtmig_class_links_convertToJSON(sdtmig_class_links_t *sdtmig_class_links);

#endif /* _sdtmig_class_links_H_ */

