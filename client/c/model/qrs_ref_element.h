/*
 * qrs_ref_element.h
 *
 * 
 */

#ifndef _qrs_ref_element_H_
#define _qrs_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct qrs_ref_element_t qrs_ref_element_t;




typedef struct qrs_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} qrs_ref_element_t;

__attribute__((deprecated)) qrs_ref_element_t *qrs_ref_element_create(
    char *href,
    char *title,
    char *type
);

void qrs_ref_element_free(qrs_ref_element_t *qrs_ref_element);

qrs_ref_element_t *qrs_ref_element_parseFromJSON(cJSON *qrs_ref_elementJSON);

cJSON *qrs_ref_element_convertToJSON(qrs_ref_element_t *qrs_ref_element);

#endif /* _qrs_ref_element_H_ */

