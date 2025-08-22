/*
 * ct_package_term.h
 *
 * 
 */

#ifndef _ct_package_term_H_
#define _ct_package_term_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_package_term_t ct_package_term_t;




typedef struct ct_package_term_t {
    char *concept_id; // string
    char *submission_value; // string
    char *definition; // string
    char *preferred_term; // string
    list_t *synonyms; //primitive container

    int _library_owned; // Is the library responsible for freeing this object?
} ct_package_term_t;

__attribute__((deprecated)) ct_package_term_t *ct_package_term_create(
    char *concept_id,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms
);

void ct_package_term_free(ct_package_term_t *ct_package_term);

ct_package_term_t *ct_package_term_parseFromJSON(cJSON *ct_package_termJSON);

cJSON *ct_package_term_convertToJSON(ct_package_term_t *ct_package_term);

#endif /* _ct_package_term_H_ */

