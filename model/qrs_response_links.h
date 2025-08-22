/*
 * qrs_response_links.h
 *
 * 
 */

#ifndef _qrs_response_links_H_
#define _qrs_response_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_response_links_t qrs_response_links_t;

#include "root_ct_term_ref.h"



typedef struct qrs_response_links_t {
    struct root_ct_term_ref_t *qrs_response_orres; //model
    struct root_ct_term_ref_t *qrs_response_orresu; //model
    struct root_ct_term_ref_t *qrs_response_stresc; //model
    struct root_ct_term_ref_t *qrs_response_strescu; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_response_links_t;

__attribute__((deprecated)) qrs_response_links_t *qrs_response_links_create(
    root_ct_term_ref_t *qrs_response_orres,
    root_ct_term_ref_t *qrs_response_orresu,
    root_ct_term_ref_t *qrs_response_stresc,
    root_ct_term_ref_t *qrs_response_strescu
);

void qrs_response_links_free(qrs_response_links_t *qrs_response_links);

qrs_response_links_t *qrs_response_links_parseFromJSON(cJSON *qrs_response_linksJSON);

cJSON *qrs_response_links_convertToJSON(qrs_response_links_t *qrs_response_links);

#endif /* _qrs_response_links_H_ */

