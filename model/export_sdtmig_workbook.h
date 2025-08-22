/*
 * export_sdtmig_workbook.h
 *
 * 
 */

#ifndef _export_sdtmig_workbook_H_
#define _export_sdtmig_workbook_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sdtmig_workbook_t export_sdtmig_workbook_t;

#include "export_sdtmig_datasets_row.h"
#include "export_sdtmig_variables_row.h"



typedef struct export_sdtmig_workbook_t {
    list_t *variables; //nonprimitive container
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_sdtmig_workbook_t;

__attribute__((deprecated)) export_sdtmig_workbook_t *export_sdtmig_workbook_create(
    list_t *variables,
    list_t *datasets
);

void export_sdtmig_workbook_free(export_sdtmig_workbook_t *export_sdtmig_workbook);

export_sdtmig_workbook_t *export_sdtmig_workbook_parseFromJSON(cJSON *export_sdtmig_workbookJSON);

cJSON *export_sdtmig_workbook_convertToJSON(export_sdtmig_workbook_t *export_sdtmig_workbook);

#endif /* _export_sdtmig_workbook_H_ */

