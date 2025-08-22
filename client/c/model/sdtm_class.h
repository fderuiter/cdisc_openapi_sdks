/*
 * sdtm_class.h
 *
 * 
 */

#ifndef _sdtm_class_H_
#define _sdtm_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_t sdtm_class_t;

#include "sdtm_class_links.h"
#include "sdtm_class_variable.h"
#include "sdtm_dataset.h"



typedef struct sdtm_class_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sdtm_class_links_t *_links; //model
    list_t *class_variables; //nonprimitive container
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_t;

__attribute__((deprecated)) sdtm_class_t *sdtm_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_links_t *_links,
    list_t *class_variables,
    list_t *datasets
);

void sdtm_class_free(sdtm_class_t *sdtm_class);

sdtm_class_t *sdtm_class_parseFromJSON(cJSON *sdtm_classJSON);

cJSON *sdtm_class_convertToJSON(sdtm_class_t *sdtm_class);

#endif /* _sdtm_class_H_ */

