/*
 * sdtm_class_links.h
 *
 * 
 */

#ifndef _sdtm_class_links_H_
#define _sdtm_class_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_links_t sdtm_class_links_t;

#include "sdtm_class_ref.h"
#include "sdtm_class_ref_subclass.h"
#include "sdtm_product_ref.h"



typedef struct sdtm_class_links_t {
    struct sdtm_class_ref_t *self; //model
    struct sdtm_product_ref_t *parent_product; //model
    struct sdtm_class_ref_t *parent_class; //model
    list_t *subclasses; //nonprimitive container
    struct sdtm_class_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_links_t;

__attribute__((deprecated)) sdtm_class_links_t *sdtm_class_links_create(
    sdtm_class_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    list_t *subclasses,
    sdtm_class_ref_t *prior_version
);

void sdtm_class_links_free(sdtm_class_links_t *sdtm_class_links);

sdtm_class_links_t *sdtm_class_links_parseFromJSON(cJSON *sdtm_class_linksJSON);

cJSON *sdtm_class_links_convertToJSON(sdtm_class_links_t *sdtm_class_links);

#endif /* _sdtm_class_links_H_ */

