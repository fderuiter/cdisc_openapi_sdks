/*
 * sdtm_dataset_variables.h
 *
 * 
 */

#ifndef _sdtm_dataset_variables_H_
#define _sdtm_dataset_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_dataset_variables_t sdtm_dataset_variables_t;

#include "sdtm_dataset_variables_links.h"



typedef struct sdtm_dataset_variables_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *dataset_structure; // string
    struct sdtm_dataset_variables_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_dataset_variables_t;

__attribute__((deprecated)) sdtm_dataset_variables_t *sdtm_dataset_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtm_dataset_variables_links_t *_links
);

void sdtm_dataset_variables_free(sdtm_dataset_variables_t *sdtm_dataset_variables);

sdtm_dataset_variables_t *sdtm_dataset_variables_parseFromJSON(cJSON *sdtm_dataset_variablesJSON);

cJSON *sdtm_dataset_variables_convertToJSON(sdtm_dataset_variables_t *sdtm_dataset_variables);

#endif /* _sdtm_dataset_variables_H_ */

