/*
 * sdtm_class_variable_ref_qualifies.h
 *
 * 
 */

#ifndef _sdtm_class_variable_ref_qualifies_H_
#define _sdtm_class_variable_ref_qualifies_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_variable_ref_qualifies_t sdtm_class_variable_ref_qualifies_t;




typedef struct sdtm_class_variable_ref_qualifies_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_variable_ref_qualifies_t;

__attribute__((deprecated)) sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_create(
    char *href,
    char *title,
    char *type
);

void sdtm_class_variable_ref_qualifies_free(sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies);

sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies_parseFromJSON(cJSON *sdtm_class_variable_ref_qualifiesJSON);

cJSON *sdtm_class_variable_ref_qualifies_convertToJSON(sdtm_class_variable_ref_qualifies_t *sdtm_class_variable_ref_qualifies);

#endif /* _sdtm_class_variable_ref_qualifies_H_ */

