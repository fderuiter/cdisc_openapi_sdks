/*
 * sdtmig_class.h
 *
 * 
 */

#ifndef _sdtmig_class_H_
#define _sdtmig_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_class_t sdtmig_class_t;

#include "sdtmig_class_links.h"
#include "sdtmig_dataset.h"



typedef struct sdtmig_class_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sdtmig_class_links_t *_links; //model
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_class_t;

__attribute__((deprecated)) sdtmig_class_t *sdtmig_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtmig_class_links_t *_links,
    list_t *datasets
);

void sdtmig_class_free(sdtmig_class_t *sdtmig_class);

sdtmig_class_t *sdtmig_class_parseFromJSON(cJSON *sdtmig_classJSON);

cJSON *sdtmig_class_convertToJSON(sdtmig_class_t *sdtmig_class);

#endif /* _sdtmig_class_H_ */

