/*
 * cdash_domain_field_links.h
 *
 * 
 */

#ifndef _cdash_domain_field_links_H_
#define _cdash_domain_field_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_field_links_t cdash_domain_field_links_t;

#include "cdash_class_ref.h"
#include "cdash_domain_field_ref.h"
#include "cdash_domain_ref.h"
#include "cdash_product_ref.h"
#include "root_cdash_domain_field_ref.h"
#include "root_ct_codelist_ref_element.h"
#include "sdtm_dataset_variable_ref_target.h"
#include "sdtmig_dataset_variable_ref_target.h"



typedef struct cdash_domain_field_links_t {
    struct cdash_domain_field_ref_t *self; //model
    list_t *codelist; //nonprimitive container
    struct cdash_product_ref_t *parent_product; //model
    struct cdash_class_ref_t *parent_class; //model
    struct cdash_domain_ref_t *parent_domain; //model
    struct root_cdash_domain_field_ref_t *root_item; //model
    struct cdash_domain_field_ref_t *prior_version; //model
    list_t *sdtm_dataset_mapping_targets; //nonprimitive container
    list_t *sdtmig_dataset_mapping_targets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_field_links_t;

__attribute__((deprecated)) cdash_domain_field_links_t *cdash_domain_field_links_create(
    cdash_domain_field_ref_t *self,
    list_t *codelist,
    cdash_product_ref_t *parent_product,
    cdash_class_ref_t *parent_class,
    cdash_domain_ref_t *parent_domain,
    root_cdash_domain_field_ref_t *root_item,
    cdash_domain_field_ref_t *prior_version,
    list_t *sdtm_dataset_mapping_targets,
    list_t *sdtmig_dataset_mapping_targets
);

void cdash_domain_field_links_free(cdash_domain_field_links_t *cdash_domain_field_links);

cdash_domain_field_links_t *cdash_domain_field_links_parseFromJSON(cJSON *cdash_domain_field_linksJSON);

cJSON *cdash_domain_field_links_convertToJSON(cdash_domain_field_links_t *cdash_domain_field_links);

#endif /* _cdash_domain_field_links_H_ */

