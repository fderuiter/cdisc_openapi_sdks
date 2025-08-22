/*
 * export_sdtmig_variables_table.h
 *
 * 
 */

#ifndef _export_sdtmig_variables_table_H_
#define _export_sdtmig_variables_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sdtmig_variables_table_t export_sdtmig_variables_table_t;

#include "export_sdtmig_variables_row.h"



typedef struct export_sdtmig_variables_table_t {
    list_t *variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_sdtmig_variables_table_t;

__attribute__((deprecated)) export_sdtmig_variables_table_t *export_sdtmig_variables_table_create(
    list_t *variables
);

void export_sdtmig_variables_table_free(export_sdtmig_variables_table_t *export_sdtmig_variables_table);

export_sdtmig_variables_table_t *export_sdtmig_variables_table_parseFromJSON(cJSON *export_sdtmig_variables_tableJSON);

cJSON *export_sdtmig_variables_table_convertToJSON(export_sdtmig_variables_table_t *export_sdtmig_variables_table);

#endif /* _export_sdtmig_variables_table_H_ */

