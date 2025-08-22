/*
 * adam_product_links.h
 *
 * 
 */

#ifndef _adam_product_links_H_
#define _adam_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_product_links_t adam_product_links_t;

#include "adam_product_ref.h"



typedef struct adam_product_links_t {
    struct adam_product_ref_t *self; //model
    struct adam_product_ref_t *model; //model
    struct adam_product_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_product_links_t;

__attribute__((deprecated)) adam_product_links_t *adam_product_links_create(
    adam_product_ref_t *self,
    adam_product_ref_t *model,
    adam_product_ref_t *prior_version
);

void adam_product_links_free(adam_product_links_t *adam_product_links);

adam_product_links_t *adam_product_links_parseFromJSON(cJSON *adam_product_linksJSON);

cJSON *adam_product_links_convertToJSON(adam_product_links_t *adam_product_links);

#endif /* _adam_product_links_H_ */

