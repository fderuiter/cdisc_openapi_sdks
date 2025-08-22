/*
 * sdtmig_dataset_variable_ref_element.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variable_ref_element_H_
#define _sdtmig_dataset_variable_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variable_ref_element_t sdtmig_dataset_variable_ref_element_t;




typedef struct sdtmig_dataset_variable_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variable_ref_element_t;

__attribute__((deprecated)) sdtmig_dataset_variable_ref_element_t *sdtmig_dataset_variable_ref_element_create(
    char *href,
    char *title,
    char *type
);

void sdtmig_dataset_variable_ref_element_free(sdtmig_dataset_variable_ref_element_t *sdtmig_dataset_variable_ref_element);

sdtmig_dataset_variable_ref_element_t *sdtmig_dataset_variable_ref_element_parseFromJSON(cJSON *sdtmig_dataset_variable_ref_elementJSON);

cJSON *sdtmig_dataset_variable_ref_element_convertToJSON(sdtmig_dataset_variable_ref_element_t *sdtmig_dataset_variable_ref_element);

#endif /* _sdtmig_dataset_variable_ref_element_H_ */

