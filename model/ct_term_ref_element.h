/*
 * ct_term_ref_element.h
 *
 * 
 */

#ifndef _ct_term_ref_element_H_
#define _ct_term_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_term_ref_element_t ct_term_ref_element_t;




typedef struct ct_term_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ct_term_ref_element_t;

__attribute__((deprecated)) ct_term_ref_element_t *ct_term_ref_element_create(
    char *href,
    char *title,
    char *type
);

void ct_term_ref_element_free(ct_term_ref_element_t *ct_term_ref_element);

ct_term_ref_element_t *ct_term_ref_element_parseFromJSON(cJSON *ct_term_ref_elementJSON);

cJSON *ct_term_ref_element_convertToJSON(ct_term_ref_element_t *ct_term_ref_element);

#endif /* _ct_term_ref_element_H_ */

