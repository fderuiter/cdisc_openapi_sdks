/*
 * adam_product_datastructures.h
 *
 * 
 */

#ifndef _adam_product_datastructures_H_
#define _adam_product_datastructures_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_product_datastructures_t adam_product_datastructures_t;

#include "adam_product_datastructures_links.h"



typedef struct adam_product_datastructures_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct adam_product_datastructures_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_product_datastructures_t;

__attribute__((deprecated)) adam_product_datastructures_t *adam_product_datastructures_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    adam_product_datastructures_links_t *_links
);

void adam_product_datastructures_free(adam_product_datastructures_t *adam_product_datastructures);

adam_product_datastructures_t *adam_product_datastructures_parseFromJSON(cJSON *adam_product_datastructuresJSON);

cJSON *adam_product_datastructures_convertToJSON(adam_product_datastructures_t *adam_product_datastructures);

#endif /* _adam_product_datastructures_H_ */

