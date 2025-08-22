/*
 * export_adam_variables_row.h
 *
 * 
 */

#ifndef _export_adam_variables_row_H_
#define _export_adam_variables_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_adam_variables_row_t export_adam_variables_row_t;




typedef struct export_adam_variables_row_t {
    char *version; // string
    char *data_structure_name; // string
    char *dataset_name; // string
    char *variable_group; // string
    char *variable_name; // string
    char *variable_label; // string
    char *type; // string
    char *codelist_controlled_terms; // string
    char *core; // string
    char *cdisc_notes; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_adam_variables_row_t;

__attribute__((deprecated)) export_adam_variables_row_t *export_adam_variables_row_create(
    char *version,
    char *data_structure_name,
    char *dataset_name,
    char *variable_group,
    char *variable_name,
    char *variable_label,
    char *type,
    char *codelist_controlled_terms,
    char *core,
    char *cdisc_notes
);

void export_adam_variables_row_free(export_adam_variables_row_t *export_adam_variables_row);

export_adam_variables_row_t *export_adam_variables_row_parseFromJSON(cJSON *export_adam_variables_rowJSON);

cJSON *export_adam_variables_row_convertToJSON(export_adam_variables_row_t *export_adam_variables_row);

#endif /* _export_adam_variables_row_H_ */

