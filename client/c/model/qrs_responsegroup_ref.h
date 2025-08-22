/*
 * qrs_responsegroup_ref.h
 *
 * 
 */

#ifndef _qrs_responsegroup_ref_H_
#define _qrs_responsegroup_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_responsegroup_ref_t qrs_responsegroup_ref_t;




typedef struct qrs_responsegroup_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_responsegroup_ref_t;

__attribute__((deprecated)) qrs_responsegroup_ref_t *qrs_responsegroup_ref_create(
    char *href,
    char *title,
    char *type
);

void qrs_responsegroup_ref_free(qrs_responsegroup_ref_t *qrs_responsegroup_ref);

qrs_responsegroup_ref_t *qrs_responsegroup_ref_parseFromJSON(cJSON *qrs_responsegroup_refJSON);

cJSON *qrs_responsegroup_ref_convertToJSON(qrs_responsegroup_ref_t *qrs_responsegroup_ref);

#endif /* _qrs_responsegroup_ref_H_ */

