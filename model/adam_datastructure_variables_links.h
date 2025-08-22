/*
 * adam_datastructure_variables_links.h
 *
 * 
 */

#ifndef _adam_datastructure_variables_links_H_
#define _adam_datastructure_variables_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_datastructure_variables_links_t adam_datastructure_variables_links_t;

#include "adam_datastructure_variables_ref.h"
#include "adam_product_ref.h"
#include "adam_variable_ref_element.h"



typedef struct adam_datastructure_variables_links_t {
    struct adam_datastructure_variables_ref_t *self; //model
    struct adam_product_ref_t *parent_product; //model
    struct adam_datastructure_variables_ref_t *prior_version; //model
    list_t *analysis_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} adam_datastructure_variables_links_t;

__attribute__((deprecated)) adam_datastructure_variables_links_t *adam_datastructure_variables_links_create(
    adam_datastructure_variables_ref_t *self,
    adam_product_ref_t *parent_product,
    adam_datastructure_variables_ref_t *prior_version,
    list_t *analysis_variables
);

void adam_datastructure_variables_links_free(adam_datastructure_variables_links_t *adam_datastructure_variables_links);

adam_datastructure_variables_links_t *adam_datastructure_variables_links_parseFromJSON(cJSON *adam_datastructure_variables_linksJSON);

cJSON *adam_datastructure_variables_links_convertToJSON(adam_datastructure_variables_links_t *adam_datastructure_variables_links);

#endif /* _adam_datastructure_variables_links_H_ */

