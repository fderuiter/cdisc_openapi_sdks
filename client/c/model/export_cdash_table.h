/*
 * export_cdash_table.h
 *
 * 
 */

#ifndef _export_cdash_table_H_
#define _export_cdash_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_cdash_table_t export_cdash_table_t;

#include "export_cdash_class_variables_row.h"
#include "export_cdash_domain_variables_row.h"



typedef struct export_cdash_table_t {
    list_t *class_variables; //nonprimitive container
    list_t *domain_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_cdash_table_t;

__attribute__((deprecated)) export_cdash_table_t *export_cdash_table_create(
    list_t *class_variables,
    list_t *domain_variables
);

void export_cdash_table_free(export_cdash_table_t *export_cdash_table);

export_cdash_table_t *export_cdash_table_parseFromJSON(cJSON *export_cdash_tableJSON);

cJSON *export_cdash_table_convertToJSON(export_cdash_table_t *export_cdash_table);

#endif /* _export_cdash_table_H_ */

