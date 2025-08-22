/*
 * sendig_class_links.h
 *
 * 
 */

#ifndef _sendig_class_links_H_
#define _sendig_class_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_class_links_t sendig_class_links_t;

#include "sdtm_class_ref.h"
#include "sendig_class_ref.h"
#include "sendig_class_ref_subclass.h"
#include "sendig_product_ref.h"



typedef struct sendig_class_links_t {
    struct sendig_class_ref_t *self; //model
    struct sdtm_class_ref_t *model_class; //model
    struct sendig_product_ref_t *parent_product; //model
    struct sendig_class_ref_t *parent_class; //model
    list_t *subclasses; //nonprimitive container
    struct sendig_class_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_class_links_t;

__attribute__((deprecated)) sendig_class_links_t *sendig_class_links_create(
    sendig_class_ref_t *self,
    sdtm_class_ref_t *model_class,
    sendig_product_ref_t *parent_product,
    sendig_class_ref_t *parent_class,
    list_t *subclasses,
    sendig_class_ref_t *prior_version
);

void sendig_class_links_free(sendig_class_links_t *sendig_class_links);

sendig_class_links_t *sendig_class_links_parseFromJSON(cJSON *sendig_class_linksJSON);

cJSON *sendig_class_links_convertToJSON(sendig_class_links_t *sendig_class_links);

#endif /* _sendig_class_links_H_ */

