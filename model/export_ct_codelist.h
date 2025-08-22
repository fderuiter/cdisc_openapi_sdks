/*
 * export_ct_codelist.h
 *
 * 
 */

#ifndef _export_ct_codelist_H_
#define _export_ct_codelist_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_ct_codelist_t export_ct_codelist_t;

#include "export_ct_term.h"



typedef struct export_ct_codelist_t {
    char *code; // string
    char *codelist_code; // string
    char *codelist_extensible__yes_no; // string
    char *codelist_name; // string
    char *cdisc_submission_value; // string
    list_t *cdisc_synonym_s; //primitive container
    char *cdisc_definition; // string
    char *nci_preferred_term; // string
    char *standard_and_date; // string
    list_t *; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_ct_codelist_t;

__attribute__((deprecated)) export_ct_codelist_t *export_ct_codelist_create(
    char *code,
    char *codelist_code,
    char *codelist_extensible__yes_no,
    char *codelist_name,
    char *cdisc_submission_value,
    list_t *cdisc_synonym_s,
    char *cdisc_definition,
    char *nci_preferred_term,
    char *standard_and_date,
    list_t *
);

void export_ct_codelist_free(export_ct_codelist_t *export_ct_codelist);

export_ct_codelist_t *export_ct_codelist_parseFromJSON(cJSON *export_ct_codelistJSON);

cJSON *export_ct_codelist_convertToJSON(export_ct_codelist_t *export_ct_codelist);

#endif /* _export_ct_codelist_H_ */

