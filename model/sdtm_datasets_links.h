/*
 * sdtm_datasets_links.h
 *
 * 
 */

#ifndef _sdtm_datasets_links_H_
#define _sdtm_datasets_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_datasets_links_t sdtm_datasets_links_t;

#include "sdtm_dataset_ref_element.h"
#include "sdtm_datasets_ref.h"
#include "sdtm_product_ref.h"



typedef struct sdtm_datasets_links_t {
    struct sdtm_datasets_ref_t *self; //model
    struct sdtm_product_ref_t *parent_product; //model
    struct sdtm_datasets_ref_t *prior_version; //model
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_datasets_links_t;

__attribute__((deprecated)) sdtm_datasets_links_t *sdtm_datasets_links_create(
    sdtm_datasets_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_datasets_ref_t *prior_version,
    list_t *datasets
);

void sdtm_datasets_links_free(sdtm_datasets_links_t *sdtm_datasets_links);

sdtm_datasets_links_t *sdtm_datasets_links_parseFromJSON(cJSON *sdtm_datasets_linksJSON);

cJSON *sdtm_datasets_links_convertToJSON(sdtm_datasets_links_t *sdtm_datasets_links);

#endif /* _sdtm_datasets_links_H_ */

