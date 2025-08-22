/*
 * export_sdtmig_variables_row.h
 *
 * 
 */

#ifndef _export_sdtmig_variables_row_H_
#define _export_sdtmig_variables_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sdtmig_variables_row_t export_sdtmig_variables_row_t;




typedef struct export_sdtmig_variables_row_t {
    char *version; // string
    char *variable_order; // string
    char *_class; // string
    char *dataset_name; // string
    char *variable_name; // string
    char *variable_label; // string
    char *type; // string
    char *controlled_terms_codelist_or_format; // string
    char *role; // string
    char *cdisc_notes; // string
    char *core; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_sdtmig_variables_row_t;

__attribute__((deprecated)) export_sdtmig_variables_row_t *export_sdtmig_variables_row_create(
    char *version,
    char *variable_order,
    char *_class,
    char *dataset_name,
    char *variable_name,
    char *variable_label,
    char *type,
    char *controlled_terms_codelist_or_format,
    char *role,
    char *cdisc_notes,
    char *core
);

void export_sdtmig_variables_row_free(export_sdtmig_variables_row_t *export_sdtmig_variables_row);

export_sdtmig_variables_row_t *export_sdtmig_variables_row_parseFromJSON(cJSON *export_sdtmig_variables_rowJSON);

cJSON *export_sdtmig_variables_row_convertToJSON(export_sdtmig_variables_row_t *export_sdtmig_variables_row);

#endif /* _export_sdtmig_variables_row_H_ */

