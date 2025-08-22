/*
 * qrs_responsegroup_links.h
 *
 * 
 */

#ifndef _qrs_responsegroup_links_H_
#define _qrs_responsegroup_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_responsegroup_links_t qrs_responsegroup_links_t;

#include "qrs_responsegroup_ref.h"
#include "qrs_responses.h"



typedef struct qrs_responsegroup_links_t {
    struct qrs_responsegroup_ref_t *self; //model
    list_t *responses; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_responsegroup_links_t;

__attribute__((deprecated)) qrs_responsegroup_links_t *qrs_responsegroup_links_create(
    qrs_responsegroup_ref_t *self,
    list_t *responses
);

void qrs_responsegroup_links_free(qrs_responsegroup_links_t *qrs_responsegroup_links);

qrs_responsegroup_links_t *qrs_responsegroup_links_parseFromJSON(cJSON *qrs_responsegroup_linksJSON);

cJSON *qrs_responsegroup_links_convertToJSON(qrs_responsegroup_links_t *qrs_responsegroup_links);

#endif /* _qrs_responsegroup_links_H_ */

