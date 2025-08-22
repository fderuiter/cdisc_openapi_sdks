/*
 * cdashig_domain_field_links.h
 *
 * 
 */

#ifndef _cdashig_domain_field_links_H_
#define _cdashig_domain_field_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_field_links_t cdashig_domain_field_links_t;

#include "cdashig_domain_field_ref.h"
#include "cdashig_domain_ref.h"
#include "cdashig_product_ref.h"
#include "root_cdashig_domain_field_ref.h"
#include "root_ct_codelist_ref_element.h"
#include "sdtm_class_variable_ref_target.h"
#include "sdtmig_dataset_variable_ref_target.h"



typedef struct cdashig_domain_field_links_t {
    struct cdashig_domain_field_ref_t *self; //model
    list_t *codelist; //nonprimitive container
    struct cdashig_product_ref_t *parent_product; //model
    struct cdashig_domain_ref_t *parent_domain; //model
    struct root_cdashig_domain_field_ref_t *root_item; //model
    struct cdashig_domain_field_ref_t *prior_version; //model
    list_t *sdtm_class_mapping_targets; //nonprimitive container
    list_t *sdtmig_dataset_mapping_targets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_field_links_t;

__attribute__((deprecated)) cdashig_domain_field_links_t *cdashig_domain_field_links_create(
    cdashig_domain_field_ref_t *self,
    list_t *codelist,
    cdashig_product_ref_t *parent_product,
    cdashig_domain_ref_t *parent_domain,
    root_cdashig_domain_field_ref_t *root_item,
    cdashig_domain_field_ref_t *prior_version,
    list_t *sdtm_class_mapping_targets,
    list_t *sdtmig_dataset_mapping_targets
);

void cdashig_domain_field_links_free(cdashig_domain_field_links_t *cdashig_domain_field_links);

cdashig_domain_field_links_t *cdashig_domain_field_links_parseFromJSON(cJSON *cdashig_domain_field_linksJSON);

cJSON *cdashig_domain_field_links_convertToJSON(cdashig_domain_field_links_t *cdashig_domain_field_links);

#endif /* _cdashig_domain_field_links_H_ */

