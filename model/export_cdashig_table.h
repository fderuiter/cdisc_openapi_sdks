/*
 * export_cdashig_table.h
 *
 * 
 */

#ifndef _export_cdashig_table_H_
#define _export_cdashig_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_cdashig_table_t export_cdashig_table_t;

#include "export_cdashig_domain_variables_row.h"
#include "export_cdashig_scenario_variables_row.h"



typedef struct export_cdashig_table_t {
    list_t *domain_variables; //nonprimitive container
    list_t *scenario_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_cdashig_table_t;

__attribute__((deprecated)) export_cdashig_table_t *export_cdashig_table_create(
    list_t *domain_variables,
    list_t *scenario_variables
);

void export_cdashig_table_free(export_cdashig_table_t *export_cdashig_table);

export_cdashig_table_t *export_cdashig_table_parseFromJSON(cJSON *export_cdashig_tableJSON);

cJSON *export_cdashig_table_convertToJSON(export_cdashig_table_t *export_cdashig_table);

#endif /* _export_cdashig_table_H_ */

