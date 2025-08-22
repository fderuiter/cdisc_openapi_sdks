/*
 * sendig_dataset.h
 *
 * 
 */

#ifndef _sendig_dataset_H_
#define _sendig_dataset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_t sendig_dataset_t;

#include "sendig_dataset_links.h"
#include "sendig_dataset_variable.h"



typedef struct sendig_dataset_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *dataset_structure; // string
    struct sendig_dataset_links_t *_links; //model
    list_t *dataset_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_t;

__attribute__((deprecated)) sendig_dataset_t *sendig_dataset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sendig_dataset_links_t *_links,
    list_t *dataset_variables
);

void sendig_dataset_free(sendig_dataset_t *sendig_dataset);

sendig_dataset_t *sendig_dataset_parseFromJSON(cJSON *sendig_datasetJSON);

cJSON *sendig_dataset_convertToJSON(sendig_dataset_t *sendig_dataset);

#endif /* _sendig_dataset_H_ */

