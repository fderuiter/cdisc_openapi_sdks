/*
 * sdtmig_dataset_variable_links.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variable_links_H_
#define _sdtmig_dataset_variable_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variable_links_t sdtmig_dataset_variable_links_t;

#include "root_ct_codelist_ref_element.h"
#include "root_sdtmig_dataset_variable_ref.h"
#include "sdtm_class_variable_ref.h"
#include "sdtm_dataset_variable_ref.h"
#include "sdtmig_dataset_ref.h"
#include "sdtmig_dataset_variable_ref.h"
#include "sdtmig_product_ref.h"



typedef struct sdtmig_dataset_variable_links_t {
    struct sdtmig_dataset_variable_ref_t *self; //model
    list_t *codelist; //nonprimitive container
    struct sdtm_class_variable_ref_t *model_class_variable; //model
    struct sdtm_dataset_variable_ref_t *model_dataset_variable; //model
    struct sdtmig_product_ref_t *parent_product; //model
    struct sdtmig_dataset_ref_t *parent_dataset; //model
    struct root_sdtmig_dataset_variable_ref_t *root_item; //model
    struct sdtmig_dataset_variable_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variable_links_t;

__attribute__((deprecated)) sdtmig_dataset_variable_links_t *sdtmig_dataset_variable_links_create(
    sdtmig_dataset_variable_ref_t *self,
    list_t *codelist,
    sdtm_class_variable_ref_t *model_class_variable,
    sdtm_dataset_variable_ref_t *model_dataset_variable,
    sdtmig_product_ref_t *parent_product,
    sdtmig_dataset_ref_t *parent_dataset,
    root_sdtmig_dataset_variable_ref_t *root_item,
    sdtmig_dataset_variable_ref_t *prior_version
);

void sdtmig_dataset_variable_links_free(sdtmig_dataset_variable_links_t *sdtmig_dataset_variable_links);

sdtmig_dataset_variable_links_t *sdtmig_dataset_variable_links_parseFromJSON(cJSON *sdtmig_dataset_variable_linksJSON);

cJSON *sdtmig_dataset_variable_links_convertToJSON(sdtmig_dataset_variable_links_t *sdtmig_dataset_variable_links);

#endif /* _sdtmig_dataset_variable_links_H_ */

