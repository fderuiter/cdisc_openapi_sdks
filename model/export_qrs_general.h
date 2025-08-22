/*
 * export_qrs_general.h
 *
 * 
 */

#ifndef _export_qrs_general_H_
#define _export_qrs_general_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_qrs_general_t export_qrs_general_t;




typedef struct export_qrs_general_t {
    char *name; // string
    char *label; // string
    char *effective_date; // string
    char *description; // string
    char *type; // string
    char *categorys_codelist_c_code; // string
    char *categorys_term_c_code; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_qrs_general_t;

__attribute__((deprecated)) export_qrs_general_t *export_qrs_general_create(
    char *name,
    char *label,
    char *effective_date,
    char *description,
    char *type,
    char *categorys_codelist_c_code,
    char *categorys_term_c_code
);

void export_qrs_general_free(export_qrs_general_t *export_qrs_general);

export_qrs_general_t *export_qrs_general_parseFromJSON(cJSON *export_qrs_generalJSON);

cJSON *export_qrs_general_convertToJSON(export_qrs_general_t *export_qrs_general);

#endif /* _export_qrs_general_H_ */

