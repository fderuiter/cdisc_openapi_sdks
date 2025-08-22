/*
 * sendig_dataset_variable_links.h
 *
 * 
 */

#ifndef _sendig_dataset_variable_links_H_
#define _sendig_dataset_variable_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_variable_links_t sendig_dataset_variable_links_t;

#include "root_ct_codelist_ref_element.h"
#include "root_sendig_dataset_variable_ref.h"
#include "sdtm_class_variable_ref.h"
#include "sdtm_dataset_variable_ref.h"
#include "sendig_dataset_ref.h"
#include "sendig_dataset_variable_ref.h"
#include "sendig_product_ref.h"



typedef struct sendig_dataset_variable_links_t {
    struct sendig_dataset_variable_ref_t *self; //model
    list_t *codelist; //nonprimitive container
    struct sdtm_class_variable_ref_t *model_class_variable; //model
    struct sdtm_dataset_variable_ref_t *model_dataset_variable; //model
    struct sendig_product_ref_t *parent_product; //model
    struct sendig_dataset_ref_t *parent_dataset; //model
    struct root_sendig_dataset_variable_ref_t *root_item; //model
    struct sendig_dataset_variable_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_variable_links_t;

__attribute__((deprecated)) sendig_dataset_variable_links_t *sendig_dataset_variable_links_create(
    sendig_dataset_variable_ref_t *self,
    list_t *codelist,
    sdtm_class_variable_ref_t *model_class_variable,
    sdtm_dataset_variable_ref_t *model_dataset_variable,
    sendig_product_ref_t *parent_product,
    sendig_dataset_ref_t *parent_dataset,
    root_sendig_dataset_variable_ref_t *root_item,
    sendig_dataset_variable_ref_t *prior_version
);

void sendig_dataset_variable_links_free(sendig_dataset_variable_links_t *sendig_dataset_variable_links);

sendig_dataset_variable_links_t *sendig_dataset_variable_links_parseFromJSON(cJSON *sendig_dataset_variable_linksJSON);

cJSON *sendig_dataset_variable_links_convertToJSON(sendig_dataset_variable_links_t *sendig_dataset_variable_links);

#endif /* _sendig_dataset_variable_links_H_ */

