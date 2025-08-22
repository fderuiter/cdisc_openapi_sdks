/*
 * qrs_product.h
 *
 * 
 */

#ifndef _qrs_product_H_
#define _qrs_product_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_product_t qrs_product_t;

#include "qrs_item.h"
#include "qrs_product_links.h"



typedef struct qrs_product_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *effective_date; // string
    char *until_date; // string
    char *registration_status; // string
    char *version; // string
    char *qrs_type; // string
    struct qrs_product_links_t *_links; //model
    list_t *items; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_product_t;

__attribute__((deprecated)) qrs_product_t *qrs_product_create(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_product_links_t *_links,
    list_t *items
);

void qrs_product_free(qrs_product_t *qrs_product);

qrs_product_t *qrs_product_parseFromJSON(cJSON *qrs_productJSON);

cJSON *qrs_product_convertToJSON(qrs_product_t *qrs_product);

#endif /* _qrs_product_H_ */

