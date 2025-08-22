/*
 * sendig_dataset_links.h
 *
 * 
 */

#ifndef _sendig_dataset_links_H_
#define _sendig_dataset_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_links_t sendig_dataset_links_t;

#include "sdtm_dataset_ref.h"
#include "sendig_class_ref.h"
#include "sendig_dataset_ref.h"
#include "sendig_product_ref.h"



typedef struct sendig_dataset_links_t {
    struct sendig_dataset_ref_t *self; //model
    struct sdtm_dataset_ref_t *model_dataset; //model
    struct sendig_product_ref_t *parent_product; //model
    struct sendig_class_ref_t *parent_class; //model
    struct sendig_dataset_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_links_t;

__attribute__((deprecated)) sendig_dataset_links_t *sendig_dataset_links_create(
    sendig_dataset_ref_t *self,
    sdtm_dataset_ref_t *model_dataset,
    sendig_product_ref_t *parent_product,
    sendig_class_ref_t *parent_class,
    sendig_dataset_ref_t *prior_version
);

void sendig_dataset_links_free(sendig_dataset_links_t *sendig_dataset_links);

sendig_dataset_links_t *sendig_dataset_links_parseFromJSON(cJSON *sendig_dataset_linksJSON);

cJSON *sendig_dataset_links_convertToJSON(sendig_dataset_links_t *sendig_dataset_links);

#endif /* _sendig_dataset_links_H_ */

