/*
 * export_adam_datastructures_row.h
 *
 * 
 */

#ifndef _export_adam_datastructures_row_H_
#define _export_adam_datastructures_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_adam_datastructures_row_t export_adam_datastructures_row_t;




typedef struct export_adam_datastructures_row_t {
    char *version; // string
    char *data_structure_name; // string
    char *dataset_name; // string
    char *dataset_label; // string
    char *dataset_description; // string
    char *_class; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_adam_datastructures_row_t;

__attribute__((deprecated)) export_adam_datastructures_row_t *export_adam_datastructures_row_create(
    char *version,
    char *data_structure_name,
    char *dataset_name,
    char *dataset_label,
    char *dataset_description,
    char *_class
);

void export_adam_datastructures_row_free(export_adam_datastructures_row_t *export_adam_datastructures_row);

export_adam_datastructures_row_t *export_adam_datastructures_row_parseFromJSON(cJSON *export_adam_datastructures_rowJSON);

cJSON *export_adam_datastructures_row_convertToJSON(export_adam_datastructures_row_t *export_adam_datastructures_row);

#endif /* _export_adam_datastructures_row_H_ */

