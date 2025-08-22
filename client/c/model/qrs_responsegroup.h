/*
 * qrs_responsegroup.h
 *
 * 
 */

#ifndef _qrs_responsegroup_H_
#define _qrs_responsegroup_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_responsegroup_t qrs_responsegroup_t;

#include "qrs_responsegroup_links.h"



typedef struct qrs_responsegroup_t {
    char *label; // string
    struct qrs_responsegroup_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_responsegroup_t;

__attribute__((deprecated)) qrs_responsegroup_t *qrs_responsegroup_create(
    char *label,
    qrs_responsegroup_links_t *_links
);

void qrs_responsegroup_free(qrs_responsegroup_t *qrs_responsegroup);

qrs_responsegroup_t *qrs_responsegroup_parseFromJSON(cJSON *qrs_responsegroupJSON);

cJSON *qrs_responsegroup_convertToJSON(qrs_responsegroup_t *qrs_responsegroup);

#endif /* _qrs_responsegroup_H_ */

