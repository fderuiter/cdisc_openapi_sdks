/*
 * qrs_item_links.h
 *
 * 
 */

#ifndef _qrs_item_links_H_
#define _qrs_item_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_item_links_t qrs_item_links_t;

#include "qrs_responsegroup.h"
#include "root_ct_term_ref.h"



typedef struct qrs_item_links_t {
    struct root_ct_term_ref_t *qrs_item_test; //model
    struct root_ct_term_ref_t *qrs_item_testcd; //model
    struct root_ct_term_ref_t *qrs_item_eval; //model
    struct root_ct_term_ref_t *qrs_item_scat; //model
    struct qrs_responsegroup_t *responsegroup; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_item_links_t;

__attribute__((deprecated)) qrs_item_links_t *qrs_item_links_create(
    root_ct_term_ref_t *qrs_item_test,
    root_ct_term_ref_t *qrs_item_testcd,
    root_ct_term_ref_t *qrs_item_eval,
    root_ct_term_ref_t *qrs_item_scat,
    qrs_responsegroup_t *responsegroup
);

void qrs_item_links_free(qrs_item_links_t *qrs_item_links);

qrs_item_links_t *qrs_item_links_parseFromJSON(cJSON *qrs_item_linksJSON);

cJSON *qrs_item_links_convertToJSON(qrs_item_links_t *qrs_item_links);

#endif /* _qrs_item_links_H_ */

