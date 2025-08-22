/*
 * sendig_datasets.h
 *
 * 
 */

#ifndef _sendig_datasets_H_
#define _sendig_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_datasets_t sendig_datasets_t;

#include "sendig_datasets_links.h"



typedef struct sendig_datasets_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sendig_datasets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_datasets_t;

__attribute__((deprecated)) sendig_datasets_t *sendig_datasets_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_datasets_links_t *_links
);

void sendig_datasets_free(sendig_datasets_t *sendig_datasets);

sendig_datasets_t *sendig_datasets_parseFromJSON(cJSON *sendig_datasetsJSON);

cJSON *sendig_datasets_convertToJSON(sendig_datasets_t *sendig_datasets);

#endif /* _sendig_datasets_H_ */

