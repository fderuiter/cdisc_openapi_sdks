/*
 * sdtm_class_variable_links.h
 *
 * 
 */

#ifndef _sdtm_class_variable_links_H_
#define _sdtm_class_variable_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_variable_links_t sdtm_class_variable_links_t;

#include "root_sdtm_class_variable_ref.h"
#include "sdtm_class_ref.h"
#include "sdtm_class_variable_ref.h"
#include "sdtm_class_variable_ref_qualifies.h"
#include "sdtm_product_ref.h"



typedef struct sdtm_class_variable_links_t {
    struct sdtm_class_variable_ref_t *self; //model
    struct sdtm_product_ref_t *parent_product; //model
    struct sdtm_class_ref_t *parent_class; //model
    list_t *qualifies_variables; //nonprimitive container
    struct root_sdtm_class_variable_ref_t *root_item; //model
    struct sdtm_class_variable_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_variable_links_t;

__attribute__((deprecated)) sdtm_class_variable_links_t *sdtm_class_variable_links_create(
    sdtm_class_variable_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_ref_t *parent_class,
    list_t *qualifies_variables,
    root_sdtm_class_variable_ref_t *root_item,
    sdtm_class_variable_ref_t *prior_version
);

void sdtm_class_variable_links_free(sdtm_class_variable_links_t *sdtm_class_variable_links);

sdtm_class_variable_links_t *sdtm_class_variable_links_parseFromJSON(cJSON *sdtm_class_variable_linksJSON);

cJSON *sdtm_class_variable_links_convertToJSON(sdtm_class_variable_links_t *sdtm_class_variable_links);

#endif /* _sdtm_class_variable_links_H_ */

