/*
 * export_sendig_variables_table.h
 *
 * 
 */

#ifndef _export_sendig_variables_table_H_
#define _export_sendig_variables_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sendig_variables_table_t export_sendig_variables_table_t;

#include "export_sendig_variables_row.h"



typedef struct export_sendig_variables_table_t {
    list_t *variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_sendig_variables_table_t;

__attribute__((deprecated)) export_sendig_variables_table_t *export_sendig_variables_table_create(
    list_t *variables
);

void export_sendig_variables_table_free(export_sendig_variables_table_t *export_sendig_variables_table);

export_sendig_variables_table_t *export_sendig_variables_table_parseFromJSON(cJSON *export_sendig_variables_tableJSON);

cJSON *export_sendig_variables_table_convertToJSON(export_sendig_variables_table_t *export_sendig_variables_table);

#endif /* _export_sendig_variables_table_H_ */

