/*
 * export_sdtm_workbook.h
 *
 * 
 */

#ifndef _export_sdtm_workbook_H_
#define _export_sdtm_workbook_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sdtm_workbook_t export_sdtm_workbook_t;

#include "export_sdtm_class_variables_row.h"
#include "export_sdtm_dataset_variables_row.h"
#include "export_sdtm_datasets_row.h"



typedef struct export_sdtm_workbook_t {
    list_t *class_variables; //nonprimitive container
    list_t *dataset_variables; //nonprimitive container
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_sdtm_workbook_t;

__attribute__((deprecated)) export_sdtm_workbook_t *export_sdtm_workbook_create(
    list_t *class_variables,
    list_t *dataset_variables,
    list_t *datasets
);

void export_sdtm_workbook_free(export_sdtm_workbook_t *export_sdtm_workbook);

export_sdtm_workbook_t *export_sdtm_workbook_parseFromJSON(cJSON *export_sdtm_workbookJSON);

cJSON *export_sdtm_workbook_convertToJSON(export_sdtm_workbook_t *export_sdtm_workbook);

#endif /* _export_sdtm_workbook_H_ */

