/*
 * export_qrs_items_table.h
 *
 * 
 */

#ifndef _export_qrs_items_table_H_
#define _export_qrs_items_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_qrs_items_table_t export_qrs_items_table_t;

#include "export_qrs_csv_items_row.h"



typedef struct export_qrs_items_table_t {
    list_t *items; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_qrs_items_table_t;

__attribute__((deprecated)) export_qrs_items_table_t *export_qrs_items_table_create(
    list_t *items
);

void export_qrs_items_table_free(export_qrs_items_table_t *export_qrs_items_table);

export_qrs_items_table_t *export_qrs_items_table_parseFromJSON(cJSON *export_qrs_items_tableJSON);

cJSON *export_qrs_items_table_convertToJSON(export_qrs_items_table_t *export_qrs_items_table);

#endif /* _export_qrs_items_table_H_ */

