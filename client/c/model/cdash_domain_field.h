/*
 * cdash_domain_field.h
 *
 * 
 */

#ifndef _cdash_domain_field_H_
#define _cdash_domain_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_field_t cdash_domain_field_t;

#include "cdash_domain_field_links.h"



typedef struct cdash_domain_field_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *definition; // string
    char *domain_specific; // string
    char *question_text; // string
    char *prompt; // string
    char *simple_datatype; // string
    char *implementation_notes; // string
    char *mapping_instructions; // string
    struct cdash_domain_field_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_field_t;

__attribute__((deprecated)) cdash_domain_field_t *cdash_domain_field_create(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *domain_specific,
    char *question_text,
    char *prompt,
    char *simple_datatype,
    char *implementation_notes,
    char *mapping_instructions,
    cdash_domain_field_links_t *_links
);

void cdash_domain_field_free(cdash_domain_field_t *cdash_domain_field);

cdash_domain_field_t *cdash_domain_field_parseFromJSON(cJSON *cdash_domain_fieldJSON);

cJSON *cdash_domain_field_convertToJSON(cdash_domain_field_t *cdash_domain_field);

#endif /* _cdash_domain_field_H_ */

