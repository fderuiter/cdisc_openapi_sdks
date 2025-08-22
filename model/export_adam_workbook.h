/*
 * export_adam_workbook.h
 *
 * 
 */

#ifndef _export_adam_workbook_H_
#define _export_adam_workbook_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_adam_workbook_t export_adam_workbook_t;

#include "export_adam_datastructures_row.h"
#include "export_adam_variables_row.h"



typedef struct export_adam_workbook_t {
    list_t *variables; //nonprimitive container
    list_t *datastructures; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_adam_workbook_t;

__attribute__((deprecated)) export_adam_workbook_t *export_adam_workbook_create(
    list_t *variables,
    list_t *datastructures
);

void export_adam_workbook_free(export_adam_workbook_t *export_adam_workbook);

export_adam_workbook_t *export_adam_workbook_parseFromJSON(cJSON *export_adam_workbookJSON);

cJSON *export_adam_workbook_convertToJSON(export_adam_workbook_t *export_adam_workbook);

#endif /* _export_adam_workbook_H_ */

