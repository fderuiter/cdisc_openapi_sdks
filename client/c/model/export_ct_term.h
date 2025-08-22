/*
 * export_ct_term.h
 *
 * 
 */

#ifndef _export_ct_term_H_
#define _export_ct_term_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_ct_term_t export_ct_term_t;




typedef struct export_ct_term_t {
    char *bundle_1; // string
    list_t *cdisc_synonym_s; //primitive container
    char *bundle_2; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_ct_term_t;

__attribute__((deprecated)) export_ct_term_t *export_ct_term_create(
    char *bundle_1,
    list_t *cdisc_synonym_s,
    char *bundle_2
);

void export_ct_term_free(export_ct_term_t *export_ct_term);

export_ct_term_t *export_ct_term_parseFromJSON(cJSON *export_ct_termJSON);

cJSON *export_ct_term_convertToJSON(export_ct_term_t *export_ct_term);

#endif /* _export_ct_term_H_ */

