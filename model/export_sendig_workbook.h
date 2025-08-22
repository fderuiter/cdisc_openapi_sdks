/*
 * export_sendig_workbook.h
 *
 * 
 */

#ifndef _export_sendig_workbook_H_
#define _export_sendig_workbook_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sendig_workbook_t export_sendig_workbook_t;

#include "export_sendig_datasets_row.h"
#include "export_sendig_variables_row.h"



typedef struct export_sendig_workbook_t {
    list_t *variables; //nonprimitive container
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_sendig_workbook_t;

__attribute__((deprecated)) export_sendig_workbook_t *export_sendig_workbook_create(
    list_t *variables,
    list_t *datasets
);

void export_sendig_workbook_free(export_sendig_workbook_t *export_sendig_workbook);

export_sendig_workbook_t *export_sendig_workbook_parseFromJSON(cJSON *export_sendig_workbookJSON);

cJSON *export_sendig_workbook_convertToJSON(export_sendig_workbook_t *export_sendig_workbook);

#endif /* _export_sendig_workbook_H_ */

