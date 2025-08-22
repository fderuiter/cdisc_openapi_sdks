/*
 * qrs_responsegroups_links.h
 *
 * 
 */

#ifndef _qrs_responsegroups_links_H_
#define _qrs_responsegroups_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_responsegroups_links_t qrs_responsegroups_links_t;

#include "qrs_responsegroup_ref_element.h"
#include "qrs_responsegroups_ref.h"



typedef struct qrs_responsegroups_links_t {
    struct qrs_responsegroups_ref_t *self; //model
    list_t *responsegroups; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_responsegroups_links_t;

__attribute__((deprecated)) qrs_responsegroups_links_t *qrs_responsegroups_links_create(
    qrs_responsegroups_ref_t *self,
    list_t *responsegroups
);

void qrs_responsegroups_links_free(qrs_responsegroups_links_t *qrs_responsegroups_links);

qrs_responsegroups_links_t *qrs_responsegroups_links_parseFromJSON(cJSON *qrs_responsegroups_linksJSON);

cJSON *qrs_responsegroups_links_convertToJSON(qrs_responsegroups_links_t *qrs_responsegroups_links);

#endif /* _qrs_responsegroups_links_H_ */

