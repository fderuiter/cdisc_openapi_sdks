/*
 * qrs_responses.h
 *
 * 
 */

#ifndef _qrs_responses_H_
#define _qrs_responses_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_responses_t qrs_responses_t;

#include "qrs_response_links.h"



typedef struct qrs_responses_t {
    char *ordinal; // string
    struct qrs_response_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_responses_t;

__attribute__((deprecated)) qrs_responses_t *qrs_responses_create(
    char *ordinal,
    qrs_response_links_t *_links
);

void qrs_responses_free(qrs_responses_t *qrs_responses);

qrs_responses_t *qrs_responses_parseFromJSON(cJSON *qrs_responsesJSON);

cJSON *qrs_responses_convertToJSON(qrs_responses_t *qrs_responses);

#endif /* _qrs_responses_H_ */

