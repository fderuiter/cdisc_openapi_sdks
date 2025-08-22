/*
 * sendig_dataset_variables.h
 *
 * 
 */

#ifndef _sendig_dataset_variables_H_
#define _sendig_dataset_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_variables_t sendig_dataset_variables_t;

#include "sendig_dataset_variables_links.h"



typedef struct sendig_dataset_variables_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *dataset_structure; // string
    struct sendig_dataset_variables_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_variables_t;

__attribute__((deprecated)) sendig_dataset_variables_t *sendig_dataset_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sendig_dataset_variables_links_t *_links
);

void sendig_dataset_variables_free(sendig_dataset_variables_t *sendig_dataset_variables);

sendig_dataset_variables_t *sendig_dataset_variables_parseFromJSON(cJSON *sendig_dataset_variablesJSON);

cJSON *sendig_dataset_variables_convertToJSON(sendig_dataset_variables_t *sendig_dataset_variables);

#endif /* _sendig_dataset_variables_H_ */

