/*
 * ct_codelist_terms.h
 *
 * 
 */

#ifndef _ct_codelist_terms_H_
#define _ct_codelist_terms_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_codelist_terms_t ct_codelist_terms_t;

#include "ct_codelist_terms_links.h"



typedef struct ct_codelist_terms_t {
    char *concept_id; // string
    char *extensible; // string
    char *name; // string
    char *submission_value; // string
    char *definition; // string
    char *preferred_term; // string
    list_t *synonyms; //primitive container
    struct ct_codelist_terms_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_codelist_terms_t;

__attribute__((deprecated)) ct_codelist_terms_t *ct_codelist_terms_create(
    char *concept_id,
    char *extensible,
    char *name,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_codelist_terms_links_t *_links
);

void ct_codelist_terms_free(ct_codelist_terms_t *ct_codelist_terms);

ct_codelist_terms_t *ct_codelist_terms_parseFromJSON(cJSON *ct_codelist_termsJSON);

cJSON *ct_codelist_terms_convertToJSON(ct_codelist_terms_t *ct_codelist_terms);

#endif /* _ct_codelist_terms_H_ */

