/*
 * sdtmig_datasets.h
 *
 * 
 */

#ifndef _sdtmig_datasets_H_
#define _sdtmig_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_datasets_t sdtmig_datasets_t;

#include "sdtmig_datasets_links.h"



typedef struct sdtmig_datasets_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sdtmig_datasets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_datasets_t;

__attribute__((deprecated)) sdtmig_datasets_t *sdtmig_datasets_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_datasets_links_t *_links
);

void sdtmig_datasets_free(sdtmig_datasets_t *sdtmig_datasets);

sdtmig_datasets_t *sdtmig_datasets_parseFromJSON(cJSON *sdtmig_datasetsJSON);

cJSON *sdtmig_datasets_convertToJSON(sdtmig_datasets_t *sdtmig_datasets);

#endif /* _sdtmig_datasets_H_ */

