/*
 * sdtm_dataset.h
 *
 * 
 */

#ifndef _sdtm_dataset_H_
#define _sdtm_dataset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_dataset_t sdtm_dataset_t;

#include "sdtm_dataset_links.h"
#include "sdtm_dataset_variable.h"



typedef struct sdtm_dataset_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *dataset_structure; // string
    struct sdtm_dataset_links_t *_links; //model
    list_t *dataset_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_dataset_t;

__attribute__((deprecated)) sdtm_dataset_t *sdtm_dataset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtm_dataset_links_t *_links,
    list_t *dataset_variables
);

void sdtm_dataset_free(sdtm_dataset_t *sdtm_dataset);

sdtm_dataset_t *sdtm_dataset_parseFromJSON(cJSON *sdtm_datasetJSON);

cJSON *sdtm_dataset_convertToJSON(sdtm_dataset_t *sdtm_dataset);

#endif /* _sdtm_dataset_H_ */

