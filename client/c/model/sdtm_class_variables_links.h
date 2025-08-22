/*
 * sdtm_class_variables_links.h
 *
 * 
 */

#ifndef _sdtm_class_variables_links_H_
#define _sdtm_class_variables_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_variables_links_t sdtm_class_variables_links_t;

#include "sdtm_class_variable_ref_element.h"
#include "sdtm_class_variables_ref.h"
#include "sdtm_product_ref.h"



typedef struct sdtm_class_variables_links_t {
    struct sdtm_class_variables_ref_t *self; //model
    struct sdtm_product_ref_t *parent_product; //model
    struct sdtm_class_variables_ref_t *prior_version; //model
    list_t *class_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_variables_links_t;

__attribute__((deprecated)) sdtm_class_variables_links_t *sdtm_class_variables_links_create(
    sdtm_class_variables_ref_t *self,
    sdtm_product_ref_t *parent_product,
    sdtm_class_variables_ref_t *prior_version,
    list_t *class_variables
);

void sdtm_class_variables_links_free(sdtm_class_variables_links_t *sdtm_class_variables_links);

sdtm_class_variables_links_t *sdtm_class_variables_links_parseFromJSON(cJSON *sdtm_class_variables_linksJSON);

cJSON *sdtm_class_variables_links_convertToJSON(sdtm_class_variables_links_t *sdtm_class_variables_links);

#endif /* _sdtm_class_variables_links_H_ */

