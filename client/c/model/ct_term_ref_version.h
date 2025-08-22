/*
 * ct_term_ref_version.h
 *
 * 
 */

#ifndef _ct_term_ref_version_H_
#define _ct_term_ref_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_term_ref_version_t ct_term_ref_version_t;




typedef struct ct_term_ref_version_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ct_term_ref_version_t;

__attribute__((deprecated)) ct_term_ref_version_t *ct_term_ref_version_create(
    char *href,
    char *title,
    char *type
);

void ct_term_ref_version_free(ct_term_ref_version_t *ct_term_ref_version);

ct_term_ref_version_t *ct_term_ref_version_parseFromJSON(cJSON *ct_term_ref_versionJSON);

cJSON *ct_term_ref_version_convertToJSON(ct_term_ref_version_t *ct_term_ref_version);

#endif /* _ct_term_ref_version_H_ */

