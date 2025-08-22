/*
 * ct_term_ref.h
 *
 * 
 */

#ifndef _ct_term_ref_H_
#define _ct_term_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_term_ref_t ct_term_ref_t;




typedef struct ct_term_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ct_term_ref_t;

__attribute__((deprecated)) ct_term_ref_t *ct_term_ref_create(
    char *href,
    char *title,
    char *type
);

void ct_term_ref_free(ct_term_ref_t *ct_term_ref);

ct_term_ref_t *ct_term_ref_parseFromJSON(cJSON *ct_term_refJSON);

cJSON *ct_term_ref_convertToJSON(ct_term_ref_t *ct_term_ref);

#endif /* _ct_term_ref_H_ */

