/*
 * sdtmig_class_datasets.h
 *
 * 
 */

#ifndef _sdtmig_class_datasets_H_
#define _sdtmig_class_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_class_datasets_t sdtmig_class_datasets_t;

#include "sdtmig_class_datasets_links.h"



typedef struct sdtmig_class_datasets_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sdtmig_class_datasets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_class_datasets_t;

__attribute__((deprecated)) sdtmig_class_datasets_t *sdtmig_class_datasets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtmig_class_datasets_links_t *_links
);

void sdtmig_class_datasets_free(sdtmig_class_datasets_t *sdtmig_class_datasets);

sdtmig_class_datasets_t *sdtmig_class_datasets_parseFromJSON(cJSON *sdtmig_class_datasetsJSON);

cJSON *sdtmig_class_datasets_convertToJSON(sdtmig_class_datasets_t *sdtmig_class_datasets);

#endif /* _sdtmig_class_datasets_H_ */

