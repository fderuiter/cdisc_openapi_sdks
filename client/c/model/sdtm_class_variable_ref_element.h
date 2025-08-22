/*
 * sdtm_class_variable_ref_element.h
 *
 * 
 */

#ifndef _sdtm_class_variable_ref_element_H_
#define _sdtm_class_variable_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_variable_ref_element_t sdtm_class_variable_ref_element_t;




typedef struct sdtm_class_variable_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_variable_ref_element_t;

__attribute__((deprecated)) sdtm_class_variable_ref_element_t *sdtm_class_variable_ref_element_create(
    char *href,
    char *title,
    char *type
);

void sdtm_class_variable_ref_element_free(sdtm_class_variable_ref_element_t *sdtm_class_variable_ref_element);

sdtm_class_variable_ref_element_t *sdtm_class_variable_ref_element_parseFromJSON(cJSON *sdtm_class_variable_ref_elementJSON);

cJSON *sdtm_class_variable_ref_element_convertToJSON(sdtm_class_variable_ref_element_t *sdtm_class_variable_ref_element);

#endif /* _sdtm_class_variable_ref_element_H_ */

