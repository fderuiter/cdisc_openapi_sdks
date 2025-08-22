/*
 * sdtmig_classes.h
 *
 * 
 */

#ifndef _sdtmig_classes_H_
#define _sdtmig_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_classes_t sdtmig_classes_t;

#include "sdtmig_classes_links.h"



typedef struct sdtmig_classes_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sdtmig_classes_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_classes_t;

__attribute__((deprecated)) sdtmig_classes_t *sdtmig_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtmig_classes_links_t *_links
);

void sdtmig_classes_free(sdtmig_classes_t *sdtmig_classes);

sdtmig_classes_t *sdtmig_classes_parseFromJSON(cJSON *sdtmig_classesJSON);

cJSON *sdtmig_classes_convertToJSON(sdtmig_classes_t *sdtmig_classes);

#endif /* _sdtmig_classes_H_ */

