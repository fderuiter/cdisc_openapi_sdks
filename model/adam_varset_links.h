/*
 * adam_varset_links.h
 *
 * 
 */

#ifndef _adam_varset_links_H_
#define _adam_varset_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_varset_links_t adam_varset_links_t;

#include "adam_datastructure_ref.h"
#include "adam_product_ref.h"
#include "adam_varset_ref.h"



typedef struct adam_varset_links_t {
    struct adam_varset_ref_t *self; //model
    struct adam_product_ref_t *parent_product; //model
    struct adam_datastructure_ref_t *parent_datastructure; //model
    struct adam_varset_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_varset_links_t;

__attribute__((deprecated)) adam_varset_links_t *adam_varset_links_create(
    adam_varset_ref_t *self,
    adam_product_ref_t *parent_product,
    adam_datastructure_ref_t *parent_datastructure,
    adam_varset_ref_t *prior_version
);

void adam_varset_links_free(adam_varset_links_t *adam_varset_links);

adam_varset_links_t *adam_varset_links_parseFromJSON(cJSON *adam_varset_linksJSON);

cJSON *adam_varset_links_convertToJSON(adam_varset_links_t *adam_varset_links);

#endif /* _adam_varset_links_H_ */

