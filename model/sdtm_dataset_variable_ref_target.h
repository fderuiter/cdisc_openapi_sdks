/*
 * sdtm_dataset_variable_ref_target.h
 *
 * 
 */

#ifndef _sdtm_dataset_variable_ref_target_H_
#define _sdtm_dataset_variable_ref_target_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_dataset_variable_ref_target_t sdtm_dataset_variable_ref_target_t;




typedef struct sdtm_dataset_variable_ref_target_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_dataset_variable_ref_target_t;

__attribute__((deprecated)) sdtm_dataset_variable_ref_target_t *sdtm_dataset_variable_ref_target_create(
    char *href,
    char *title,
    char *type
);

void sdtm_dataset_variable_ref_target_free(sdtm_dataset_variable_ref_target_t *sdtm_dataset_variable_ref_target);

sdtm_dataset_variable_ref_target_t *sdtm_dataset_variable_ref_target_parseFromJSON(cJSON *sdtm_dataset_variable_ref_targetJSON);

cJSON *sdtm_dataset_variable_ref_target_convertToJSON(sdtm_dataset_variable_ref_target_t *sdtm_dataset_variable_ref_target);

#endif /* _sdtm_dataset_variable_ref_target_H_ */

