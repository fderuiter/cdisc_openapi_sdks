/*
 * export_ct_table.h
 *
 * 
 */

#ifndef _export_ct_table_H_
#define _export_ct_table_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_ct_table_t export_ct_table_t;

#include "export_ct_codelist.h"



typedef struct export_ct_table_t {
    list_t *ct; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} export_ct_table_t;

__attribute__((deprecated)) export_ct_table_t *export_ct_table_create(
    list_t *ct
);

void export_ct_table_free(export_ct_table_t *export_ct_table);

export_ct_table_t *export_ct_table_parseFromJSON(cJSON *export_ct_tableJSON);

cJSON *export_ct_table_convertToJSON(export_ct_table_t *export_ct_table);

#endif /* _export_ct_table_H_ */

