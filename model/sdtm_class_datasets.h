/*
 * sdtm_class_datasets.h
 *
 * 
 */

#ifndef _sdtm_class_datasets_H_
#define _sdtm_class_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_datasets_t sdtm_class_datasets_t;

#include "sdtm_class_datasets_links.h"



typedef struct sdtm_class_datasets_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sdtm_class_datasets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_datasets_t;

__attribute__((deprecated)) sdtm_class_datasets_t *sdtm_class_datasets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_datasets_links_t *_links
);

void sdtm_class_datasets_free(sdtm_class_datasets_t *sdtm_class_datasets);

sdtm_class_datasets_t *sdtm_class_datasets_parseFromJSON(cJSON *sdtm_class_datasetsJSON);

cJSON *sdtm_class_datasets_convertToJSON(sdtm_class_datasets_t *sdtm_class_datasets);

#endif /* _sdtm_class_datasets_H_ */

