/*
 * export_sdtm_variables_table.h
 *
 * 
 */

#ifndef _export_sdtm_variables_table_H_
#define _export_sdtm_variables_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sdtm_variables_table_t export_sdtm_variables_table_t;

#include "export_sdtm_class_variables_row.h"
#include "export_sdtm_dataset_variables_row.h"



typedef struct export_sdtm_variables_table_t {
    list_t *class_variables; //nonprimitive container
    list_t *dataset_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_sdtm_variables_table_t;

__attribute__((deprecated)) export_sdtm_variables_table_t *export_sdtm_variables_table_create(
    list_t *class_variables,
    list_t *dataset_variables
);

void export_sdtm_variables_table_free(export_sdtm_variables_table_t *export_sdtm_variables_table);

export_sdtm_variables_table_t *export_sdtm_variables_table_parseFromJSON(cJSON *export_sdtm_variables_tableJSON);

cJSON *export_sdtm_variables_table_convertToJSON(export_sdtm_variables_table_t *export_sdtm_variables_table);

#endif /* _export_sdtm_variables_table_H_ */

