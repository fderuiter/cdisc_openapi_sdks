/*
 * sdtmig_dataset_variables_links.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variables_links_H_
#define _sdtmig_dataset_variables_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variables_links_t sdtmig_dataset_variables_links_t;

#include "sdtm_dataset_ref.h"
#include "sdtmig_class_ref.h"
#include "sdtmig_dataset_variable_ref_element.h"
#include "sdtmig_dataset_variables_ref.h"
#include "sdtmig_product_ref.h"



typedef struct sdtmig_dataset_variables_links_t {
    struct sdtmig_dataset_variables_ref_t *self; //model
    struct sdtm_dataset_ref_t *model_dataset; //model
    struct sdtmig_product_ref_t *parent_product; //model
    struct sdtmig_class_ref_t *parent_class; //model
    struct sdtmig_dataset_variables_ref_t *prior_version; //model
    list_t *dataset_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variables_links_t;

__attribute__((deprecated)) sdtmig_dataset_variables_links_t *sdtmig_dataset_variables_links_create(
    sdtmig_dataset_variables_ref_t *self,
    sdtm_dataset_ref_t *model_dataset,
    sdtmig_product_ref_t *parent_product,
    sdtmig_class_ref_t *parent_class,
    sdtmig_dataset_variables_ref_t *prior_version,
    list_t *dataset_variables
);

void sdtmig_dataset_variables_links_free(sdtmig_dataset_variables_links_t *sdtmig_dataset_variables_links);

sdtmig_dataset_variables_links_t *sdtmig_dataset_variables_links_parseFromJSON(cJSON *sdtmig_dataset_variables_linksJSON);

cJSON *sdtmig_dataset_variables_links_convertToJSON(sdtmig_dataset_variables_links_t *sdtmig_dataset_variables_links);

#endif /* _sdtmig_dataset_variables_links_H_ */

