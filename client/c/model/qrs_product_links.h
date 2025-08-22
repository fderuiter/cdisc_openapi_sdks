/*
 * qrs_product_links.h
 *
 * 
 */

#ifndef _qrs_product_links_H_
#define _qrs_product_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_product_links_t qrs_product_links_t;

#include "qrs_items_ref.h"
#include "qrs_product_ref.h"
#include "root_ct_term_ref.h"



typedef struct qrs_product_links_t {
    struct qrs_product_ref_t *self; //model
    struct qrs_product_ref_t *prior_version; //model
    struct root_ct_term_ref_t *qrs_term_cat; //model
    struct qrs_items_ref_t *qrs_items; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_product_links_t;

__attribute__((deprecated)) qrs_product_links_t *qrs_product_links_create(
    qrs_product_ref_t *self,
    qrs_product_ref_t *prior_version,
    root_ct_term_ref_t *qrs_term_cat,
    qrs_items_ref_t *qrs_items
);

void qrs_product_links_free(qrs_product_links_t *qrs_product_links);

qrs_product_links_t *qrs_product_links_parseFromJSON(cJSON *qrs_product_linksJSON);

cJSON *qrs_product_links_convertToJSON(qrs_product_links_t *qrs_product_links);

#endif /* _qrs_product_links_H_ */

