/*
 * ct_codelist_ref.h
 *
 * 
 */

#ifndef _ct_codelist_ref_H_
#define _ct_codelist_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_codelist_ref_t ct_codelist_ref_t;




typedef struct ct_codelist_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ct_codelist_ref_t;

__attribute__((deprecated)) ct_codelist_ref_t *ct_codelist_ref_create(
    char *href,
    char *title,
    char *type
);

void ct_codelist_ref_free(ct_codelist_ref_t *ct_codelist_ref);

ct_codelist_ref_t *ct_codelist_ref_parseFromJSON(cJSON *ct_codelist_refJSON);

cJSON *ct_codelist_ref_convertToJSON(ct_codelist_ref_t *ct_codelist_ref);

#endif /* _ct_codelist_ref_H_ */

