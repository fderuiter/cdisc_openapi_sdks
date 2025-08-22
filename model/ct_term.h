/*
 * ct_term.h
 *
 * 
 */

#ifndef _ct_term_H_
#define _ct_term_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_term_t ct_term_t;

#include "ct_term_links.h"



typedef struct ct_term_t {
    char *concept_id; // string
    char *submission_value; // string
    char *definition; // string
    char *preferred_term; // string
    list_t *synonyms; //primitive container
    struct ct_term_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_term_t;

__attribute__((deprecated)) ct_term_t *ct_term_create(
    char *concept_id,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_term_links_t *_links
);

void ct_term_free(ct_term_t *ct_term);

ct_term_t *ct_term_parseFromJSON(cJSON *ct_termJSON);

cJSON *ct_term_convertToJSON(ct_term_t *ct_term);

#endif /* _ct_term_H_ */

