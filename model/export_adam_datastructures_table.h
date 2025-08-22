/*
 * export_adam_datastructures_table.h
 *
 * 
 */

#ifndef _export_adam_datastructures_table_H_
#define _export_adam_datastructures_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_adam_datastructures_table_t export_adam_datastructures_table_t;

#include "export_adam_datastructures_row.h"



typedef struct export_adam_datastructures_table_t {
    list_t *datastructures; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_adam_datastructures_table_t;

__attribute__((deprecated)) export_adam_datastructures_table_t *export_adam_datastructures_table_create(
    list_t *datastructures
);

void export_adam_datastructures_table_free(export_adam_datastructures_table_t *export_adam_datastructures_table);

export_adam_datastructures_table_t *export_adam_datastructures_table_parseFromJSON(cJSON *export_adam_datastructures_tableJSON);

cJSON *export_adam_datastructures_table_convertToJSON(export_adam_datastructures_table_t *export_adam_datastructures_table);

#endif /* _export_adam_datastructures_table_H_ */

