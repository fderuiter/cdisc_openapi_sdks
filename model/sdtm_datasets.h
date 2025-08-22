/*
 * sdtm_datasets.h
 *
 * 
 */

#ifndef _sdtm_datasets_H_
#define _sdtm_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_datasets_t sdtm_datasets_t;

#include "sdtm_datasets_links.h"



typedef struct sdtm_datasets_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sdtm_datasets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_datasets_t;

__attribute__((deprecated)) sdtm_datasets_t *sdtm_datasets_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_datasets_links_t *_links
);

void sdtm_datasets_free(sdtm_datasets_t *sdtm_datasets);

sdtm_datasets_t *sdtm_datasets_parseFromJSON(cJSON *sdtm_datasetsJSON);

cJSON *sdtm_datasets_convertToJSON(sdtm_datasets_t *sdtm_datasets);

#endif /* _sdtm_datasets_H_ */

