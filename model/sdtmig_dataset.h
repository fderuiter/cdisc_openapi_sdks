/*
 * sdtmig_dataset.h
 *
 * 
 */

#ifndef _sdtmig_dataset_H_
#define _sdtmig_dataset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_t sdtmig_dataset_t;

#include "sdtmig_dataset_links.h"
#include "sdtmig_dataset_variable.h"



typedef struct sdtmig_dataset_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *dataset_structure; // string
    struct sdtmig_dataset_links_t *_links; //model
    list_t *dataset_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_t;

__attribute__((deprecated)) sdtmig_dataset_t *sdtmig_dataset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *dataset_structure,
    sdtmig_dataset_links_t *_links,
    list_t *dataset_variables
);

void sdtmig_dataset_free(sdtmig_dataset_t *sdtmig_dataset);

sdtmig_dataset_t *sdtmig_dataset_parseFromJSON(cJSON *sdtmig_datasetJSON);

cJSON *sdtmig_dataset_convertToJSON(sdtmig_dataset_t *sdtmig_dataset);

#endif /* _sdtmig_dataset_H_ */

