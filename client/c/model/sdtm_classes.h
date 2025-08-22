/*
 * sdtm_classes.h
 *
 * 
 */

#ifndef _sdtm_classes_H_
#define _sdtm_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_classes_t sdtm_classes_t;

#include "sdtm_classes_links.h"



typedef struct sdtm_classes_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sdtm_classes_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_classes_t;

__attribute__((deprecated)) sdtm_classes_t *sdtm_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sdtm_classes_links_t *_links
);

void sdtm_classes_free(sdtm_classes_t *sdtm_classes);

sdtm_classes_t *sdtm_classes_parseFromJSON(cJSON *sdtm_classesJSON);

cJSON *sdtm_classes_convertToJSON(sdtm_classes_t *sdtm_classes);

#endif /* _sdtm_classes_H_ */

