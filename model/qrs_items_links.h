/*
 * qrs_items_links.h
 *
 * 
 */

#ifndef _qrs_items_links_H_
#define _qrs_items_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_items_links_t qrs_items_links_t;

#include "qrs_item_ref_element.h"
#include "qrs_items_ref.h"
#include "qrs_product_ref.h"



typedef struct qrs_items_links_t {
    struct qrs_items_ref_t *self; //model
    struct qrs_product_ref_t *parent_product; //model
    list_t *items; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_items_links_t;

__attribute__((deprecated)) qrs_items_links_t *qrs_items_links_create(
    qrs_items_ref_t *self,
    qrs_product_ref_t *parent_product,
    list_t *items
);

void qrs_items_links_free(qrs_items_links_t *qrs_items_links);

qrs_items_links_t *qrs_items_links_parseFromJSON(cJSON *qrs_items_linksJSON);

cJSON *qrs_items_links_convertToJSON(qrs_items_links_t *qrs_items_links);

#endif /* _qrs_items_links_H_ */

