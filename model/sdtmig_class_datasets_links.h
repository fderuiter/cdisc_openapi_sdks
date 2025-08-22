/*
 * sdtmig_class_datasets_links.h
 *
 * 
 */

#ifndef _sdtmig_class_datasets_links_H_
#define _sdtmig_class_datasets_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_class_datasets_links_t sdtmig_class_datasets_links_t;

#include "sdtmig_class_datasets_ref.h"
#include "sdtmig_dataset_ref_element.h"
#include "sdtmig_product_ref.h"



typedef struct sdtmig_class_datasets_links_t {
    struct sdtmig_class_datasets_ref_t *self; //model
    struct sdtmig_product_ref_t *parent_product; //model
    struct sdtmig_class_datasets_ref_t *prior_version; //model
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_class_datasets_links_t;

__attribute__((deprecated)) sdtmig_class_datasets_links_t *sdtmig_class_datasets_links_create(
    sdtmig_class_datasets_ref_t *self,
    sdtmig_product_ref_t *parent_product,
    sdtmig_class_datasets_ref_t *prior_version,
    list_t *datasets
);

void sdtmig_class_datasets_links_free(sdtmig_class_datasets_links_t *sdtmig_class_datasets_links);

sdtmig_class_datasets_links_t *sdtmig_class_datasets_links_parseFromJSON(cJSON *sdtmig_class_datasets_linksJSON);

cJSON *sdtmig_class_datasets_links_convertToJSON(sdtmig_class_datasets_links_t *sdtmig_class_datasets_links);

#endif /* _sdtmig_class_datasets_links_H_ */

