/*
 * export_sendig_datasets_row.h
 *
 * 
 */

#ifndef _export_sendig_datasets_row_H_
#define _export_sendig_datasets_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_sendig_datasets_row_t export_sendig_datasets_row_t;




typedef struct export_sendig_datasets_row_t {
    char *version; // string
    char *_class; // string
    char *dataset_name; // string
    char *dataset_label; // string
    char *structure; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_sendig_datasets_row_t;

__attribute__((deprecated)) export_sendig_datasets_row_t *export_sendig_datasets_row_create(
    char *version,
    char *_class,
    char *dataset_name,
    char *dataset_label,
    char *structure
);

void export_sendig_datasets_row_free(export_sendig_datasets_row_t *export_sendig_datasets_row);

export_sendig_datasets_row_t *export_sendig_datasets_row_parseFromJSON(cJSON *export_sendig_datasets_rowJSON);

cJSON *export_sendig_datasets_row_convertToJSON(export_sendig_datasets_row_t *export_sendig_datasets_row);

#endif /* _export_sendig_datasets_row_H_ */

