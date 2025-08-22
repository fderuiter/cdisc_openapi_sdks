/*
 * sdtm_class_variables.h
 *
 * 
 */

#ifndef _sdtm_class_variables_H_
#define _sdtm_class_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_variables_t sdtm_class_variables_t;

#include "sdtm_class_variables_links.h"



typedef struct sdtm_class_variables_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sdtm_class_variables_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_variables_t;

__attribute__((deprecated)) sdtm_class_variables_t *sdtm_class_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sdtm_class_variables_links_t *_links
);

void sdtm_class_variables_free(sdtm_class_variables_t *sdtm_class_variables);

sdtm_class_variables_t *sdtm_class_variables_parseFromJSON(cJSON *sdtm_class_variablesJSON);

cJSON *sdtm_class_variables_convertToJSON(sdtm_class_variables_t *sdtm_class_variables);

#endif /* _sdtm_class_variables_H_ */

