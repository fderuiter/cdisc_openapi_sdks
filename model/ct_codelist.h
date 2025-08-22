/*
 * ct_codelist.h
 *
 * 
 */

#ifndef _ct_codelist_H_
#define _ct_codelist_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_codelist_t ct_codelist_t;

#include "ct_codelist_links.h"
#include "ct_package_term.h"



typedef struct ct_codelist_t {
    char *concept_id; // string
    char *extensible; // string
    char *name; // string
    char *submission_value; // string
    char *definition; // string
    char *preferred_term; // string
    list_t *synonyms; //primitive container
    struct ct_codelist_links_t *_links; //model
    list_t *terms; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} ct_codelist_t;

__attribute__((deprecated)) ct_codelist_t *ct_codelist_create(
    char *concept_id,
    char *extensible,
    char *name,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_codelist_links_t *_links,
    list_t *terms
);

void ct_codelist_free(ct_codelist_t *ct_codelist);

ct_codelist_t *ct_codelist_parseFromJSON(cJSON *ct_codelistJSON);

cJSON *ct_codelist_convertToJSON(ct_codelist_t *ct_codelist);

#endif /* _ct_codelist_H_ */

