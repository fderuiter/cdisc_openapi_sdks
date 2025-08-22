/*
 * sdtmig_dataset_variable_ref_target.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variable_ref_target_H_
#define _sdtmig_dataset_variable_ref_target_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variable_ref_target_t sdtmig_dataset_variable_ref_target_t;




typedef struct sdtmig_dataset_variable_ref_target_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variable_ref_target_t;

__attribute__((deprecated)) sdtmig_dataset_variable_ref_target_t *sdtmig_dataset_variable_ref_target_create(
    char *href,
    char *title,
    char *type
);

void sdtmig_dataset_variable_ref_target_free(sdtmig_dataset_variable_ref_target_t *sdtmig_dataset_variable_ref_target);

sdtmig_dataset_variable_ref_target_t *sdtmig_dataset_variable_ref_target_parseFromJSON(cJSON *sdtmig_dataset_variable_ref_targetJSON);

cJSON *sdtmig_dataset_variable_ref_target_convertToJSON(sdtmig_dataset_variable_ref_target_t *sdtmig_dataset_variable_ref_target);

#endif /* _sdtmig_dataset_variable_ref_target_H_ */

