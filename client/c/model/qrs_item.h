/*
 * qrs_item.h
 *
 * 
 */

#ifndef _qrs_item_H_
#define _qrs_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_item_t qrs_item_t;

#include "qrs_item_links.h"



typedef struct qrs_item_t {
    char *ordinal; // string
    char *label; // string
    char *question_text; // string
    struct qrs_item_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_item_t;

__attribute__((deprecated)) qrs_item_t *qrs_item_create(
    char *ordinal,
    char *label,
    char *question_text,
    qrs_item_links_t *_links
);

void qrs_item_free(qrs_item_t *qrs_item);

qrs_item_t *qrs_item_parseFromJSON(cJSON *qrs_itemJSON);

cJSON *qrs_item_convertToJSON(qrs_item_t *qrs_item);

#endif /* _qrs_item_H_ */

