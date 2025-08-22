/*
 * qrs_items.h
 *
 * 
 */

#ifndef _qrs_items_H_
#define _qrs_items_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_items_t qrs_items_t;

#include "qrs_items_links.h"



typedef struct qrs_items_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *effective_date; // string
    char *until_date; // string
    char *registration_status; // string
    char *version; // string
    char *qrs_type; // string
    struct qrs_items_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_items_t;

__attribute__((deprecated)) qrs_items_t *qrs_items_create(
    char *name,
    char *label,
    char *description,
    char *effective_date,
    char *until_date,
    char *registration_status,
    char *version,
    char *qrs_type,
    qrs_items_links_t *_links
);

void qrs_items_free(qrs_items_t *qrs_items);

qrs_items_t *qrs_items_parseFromJSON(cJSON *qrs_itemsJSON);

cJSON *qrs_items_convertToJSON(qrs_items_t *qrs_items);

#endif /* _qrs_items_H_ */

