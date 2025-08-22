/*
 * export_qrs_workbook.h
 *
 * 
 */

#ifndef _export_qrs_workbook_H_
#define _export_qrs_workbook_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_qrs_workbook_t export_qrs_workbook_t;

#include "export_qrs_general.h"
#include "export_qrs_responses.h"
#include "export_qrs_workbook_items_row.h"



typedef struct export_qrs_workbook_t {
    struct export_qrs_general_t *self; //model
    list_t *items; //nonprimitive container
    list_t *responses; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_qrs_workbook_t;

__attribute__((deprecated)) export_qrs_workbook_t *export_qrs_workbook_create(
    export_qrs_general_t *self,
    list_t *items,
    list_t *responses
);

void export_qrs_workbook_free(export_qrs_workbook_t *export_qrs_workbook);

export_qrs_workbook_t *export_qrs_workbook_parseFromJSON(cJSON *export_qrs_workbookJSON);

cJSON *export_qrs_workbook_convertToJSON(export_qrs_workbook_t *export_qrs_workbook);

#endif /* _export_qrs_workbook_H_ */

