/*
 * cdashig_domain_field.h
 *
 * 
 */

#ifndef _cdashig_domain_field_H_
#define _cdashig_domain_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_field_t cdashig_domain_field_t;

#include "cdashig_domain_field_links.h"



typedef struct cdashig_domain_field_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *definition; // string
    char *question_text; // string
    char *prompt; // string
    char *completion_instructions; // string
    char *implementation_notes; // string
    char *simple_datatype; // string
    char *mapping_instructions; // string
    char *core; // string
    struct cdashig_domain_field_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_field_t;

__attribute__((deprecated)) cdashig_domain_field_t *cdashig_domain_field_create(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *question_text,
    char *prompt,
    char *completion_instructions,
    char *implementation_notes,
    char *simple_datatype,
    char *mapping_instructions,
    char *core,
    cdashig_domain_field_links_t *_links
);

void cdashig_domain_field_free(cdashig_domain_field_t *cdashig_domain_field);

cdashig_domain_field_t *cdashig_domain_field_parseFromJSON(cJSON *cdashig_domain_fieldJSON);

cJSON *cdashig_domain_field_convertToJSON(cdashig_domain_field_t *cdashig_domain_field);

#endif /* _cdashig_domain_field_H_ */

