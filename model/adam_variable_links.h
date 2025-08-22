/*
 * adam_variable_links.h
 *
 * 
 */

#ifndef _adam_variable_links_H_
#define _adam_variable_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_variable_links_t adam_variable_links_t;

#include "adam_datastructure_ref.h"
#include "adam_product_ref.h"
#include "adam_variable_ref.h"
#include "adam_varset_ref.h"
#include "root_ct_codelist_ref.h"



typedef struct adam_variable_links_t {
    struct adam_variable_ref_t *self; //model
    struct root_ct_codelist_ref_t *codelist; //model
    struct adam_product_ref_t *parent_product; //model
    struct adam_datastructure_ref_t *parent_datastructure; //model
    struct adam_varset_ref_t *parent_variable_set; //model
    struct adam_variable_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_variable_links_t;

__attribute__((deprecated)) adam_variable_links_t *adam_variable_links_create(
    adam_variable_ref_t *self,
    root_ct_codelist_ref_t *codelist,
    adam_product_ref_t *parent_product,
    adam_datastructure_ref_t *parent_datastructure,
    adam_varset_ref_t *parent_variable_set,
    adam_variable_ref_t *prior_version
);

void adam_variable_links_free(adam_variable_links_t *adam_variable_links);

adam_variable_links_t *adam_variable_links_parseFromJSON(cJSON *adam_variable_linksJSON);

cJSON *adam_variable_links_convertToJSON(adam_variable_links_t *adam_variable_links);

#endif /* _adam_variable_links_H_ */

