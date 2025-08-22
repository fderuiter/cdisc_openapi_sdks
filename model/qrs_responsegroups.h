/*
 * qrs_responsegroups.h
 *
 * 
 */

#ifndef _qrs_responsegroups_H_
#define _qrs_responsegroups_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_responsegroups_t qrs_responsegroups_t;

#include "qrs_responsegroups_links.h"



typedef struct qrs_responsegroups_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *effective_date; // string
    char *until_date; // string
    char *registration_status; // string
    char *version; // string
    char *qrs_type; // string
    struct qrs_responsegroups_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_responsegroups_t;

__attribute__((deprecated)) qrs_responsegroups_t *qrs_responsegroups_create(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_responsegroups_links_t *_links
);

void qrs_responsegroups_free(qrs_responsegroups_t *qrs_responsegroups);

qrs_responsegroups_t *qrs_responsegroups_parseFromJSON(cJSON *qrs_responsegroupsJSON);

cJSON *qrs_responsegroups_convertToJSON(qrs_responsegroups_t *qrs_responsegroups);

#endif /* _qrs_responsegroups_H_ */

