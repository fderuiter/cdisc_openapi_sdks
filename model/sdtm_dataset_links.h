/*
 * sdtm_dataset_links.h
 *
 * 
 */

#ifndef _sdtm_dataset_links_H_
#define _sdtm_dataset_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_dataset_links_t sdtm_dataset_links_t;

#include "sdtm_class_ref.h"
#include "sdtm_dataset_ref.h"
#include "sdtm_product_ref.h"



typedef struct sdtm_dataset_links_t {
    struct sdtm_dataset_ref_t *self; //model
    struct sdtm_product_ref_t *parent_product; //model
    struct sdtm_class_ref_t *parent_class; //model
    struct sdtm_dataset_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_dataset_links_t;

__attribute__((deprecated)) sdtm_dataset_links_t *sdtm_dataset_links_create(
    sdtm_dataset_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    sdtm_dataset_ref_t *prior_version
);

void sdtm_dataset_links_free(sdtm_dataset_links_t *sdtm_dataset_links);

sdtm_dataset_links_t *sdtm_dataset_links_parseFromJSON(cJSON *sdtm_dataset_linksJSON);

cJSON *sdtm_dataset_links_convertToJSON(sdtm_dataset_links_t *sdtm_dataset_links);

#endif /* _sdtm_dataset_links_H_ */

