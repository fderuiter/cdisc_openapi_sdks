/*
 * adam_product.h
 *
 * 
 */

#ifndef _adam_product_H_
#define _adam_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_product_t adam_product_t;

#include "adam_datastructure.h"
#include "adam_product_links.h"



typedef struct adam_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct adam_product_links_t *_links; //model
    list_t *data_structures; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} adam_product_t;

__attribute__((deprecated)) adam_product_t *adam_product_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    adam_product_links_t *_links,
    list_t *data_structures
);

void adam_product_free(adam_product_t *adam_product);

adam_product_t *adam_product_parseFromJSON(cJSON *adam_productJSON);

cJSON *adam_product_convertToJSON(adam_product_t *adam_product);

#endif /* _adam_product_H_ */

