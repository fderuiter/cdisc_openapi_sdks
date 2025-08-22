/*
 * sendig_class_datasets.h
 *
 * 
 */

#ifndef _sendig_class_datasets_H_
#define _sendig_class_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_class_datasets_t sendig_class_datasets_t;

#include "sendig_class_datasets_links.h"



typedef struct sendig_class_datasets_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sendig_class_datasets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_class_datasets_t;

__attribute__((deprecated)) sendig_class_datasets_t *sendig_class_datasets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sendig_class_datasets_links_t *_links
);

void sendig_class_datasets_free(sendig_class_datasets_t *sendig_class_datasets);

sendig_class_datasets_t *sendig_class_datasets_parseFromJSON(cJSON *sendig_class_datasetsJSON);

cJSON *sendig_class_datasets_convertToJSON(sendig_class_datasets_t *sendig_class_datasets);

#endif /* _sendig_class_datasets_H_ */

