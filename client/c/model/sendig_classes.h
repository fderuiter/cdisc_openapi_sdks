/*
 * sendig_classes.h
 *
 * 
 */

#ifndef _sendig_classes_H_
#define _sendig_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_classes_t sendig_classes_t;

#include "sendig_classes_links.h"



typedef struct sendig_classes_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct sendig_classes_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_classes_t;

__attribute__((deprecated)) sendig_classes_t *sendig_classes_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    sendig_classes_links_t *_links
);

void sendig_classes_free(sendig_classes_t *sendig_classes);

sendig_classes_t *sendig_classes_parseFromJSON(cJSON *sendig_classesJSON);

cJSON *sendig_classes_convertToJSON(sendig_classes_t *sendig_classes);

#endif /* _sendig_classes_H_ */

