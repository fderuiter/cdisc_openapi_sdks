/*
 * sdtmig_dataset_variables.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variables_H_
#define _sdtmig_dataset_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variables_t sdtmig_dataset_variables_t;

#include "sdtmig_dataset_variables_links.h"



typedef struct sdtmig_dataset_variables_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *dataset_structure; // string
    struct sdtmig_dataset_variables_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variables_t;

__attribute__((deprecated)) sdtmig_dataset_variables_t *sdtmig_dataset_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtmig_dataset_variables_links_t *_links
);

void sdtmig_dataset_variables_free(sdtmig_dataset_variables_t *sdtmig_dataset_variables);

sdtmig_dataset_variables_t *sdtmig_dataset_variables_parseFromJSON(cJSON *sdtmig_dataset_variablesJSON);

cJSON *sdtmig_dataset_variables_convertToJSON(sdtmig_dataset_variables_t *sdtmig_dataset_variables);

#endif /* _sdtmig_dataset_variables_H_ */

