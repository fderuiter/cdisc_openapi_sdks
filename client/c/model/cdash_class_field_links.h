/*
 * cdash_class_field_links.h
 *
 * 
 */

#ifndef _cdash_class_field_links_H_
#define _cdash_class_field_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_field_links_t cdash_class_field_links_t;

#include "cdash_class_field_ref.h"
#include "cdash_class_ref.h"
#include "cdash_product_ref.h"
#include "root_cdash_class_field_ref.h"
#include "root_ct_codelist_ref_element.h"
#include "sdtm_class_variable_ref_target.h"
#include "sdtm_dataset_variable_ref_target.h"



typedef struct cdash_class_field_links_t {
    struct cdash_class_field_ref_t *self; //model
    list_t *codelist; //nonprimitive container
    struct cdash_product_ref_t *parent_product; //model
    struct cdash_class_ref_t *parent_class; //model
    struct root_cdash_class_field_ref_t *root_item; //model
    struct cdash_class_field_ref_t *prior_version; //model
    list_t *sdtm_class_mapping_targets; //nonprimitive container
    list_t *sdtm_dataset_mapping_targets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_field_links_t;

__attribute__((deprecated)) cdash_class_field_links_t *cdash_class_field_links_create(
    cdash_class_field_ref_t *self,
    list_t *codelist,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    root_cdash_class_field_ref_t *root_item,
    cdash_class_field_ref_t *prior_version,
    list_t *sdtm_class_mapping_targets,
    list_t *sdtm_dataset_mapping_targets
);

void cdash_class_field_links_free(cdash_class_field_links_t *cdash_class_field_links);

cdash_class_field_links_t *cdash_class_field_links_parseFromJSON(cJSON *cdash_class_field_linksJSON);

cJSON *cdash_class_field_links_convertToJSON(cdash_class_field_links_t *cdash_class_field_links);

#endif /* _cdash_class_field_links_H_ */

