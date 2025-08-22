/*
 * sdtm_dataset_variable_ref_version.h
 *
 * 
 */

#ifndef _sdtm_dataset_variable_ref_version_H_
#define _sdtm_dataset_variable_ref_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_dataset_variable_ref_version_t sdtm_dataset_variable_ref_version_t;




typedef struct sdtm_dataset_variable_ref_version_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_dataset_variable_ref_version_t;

__attribute__((deprecated)) sdtm_dataset_variable_ref_version_t *sdtm_dataset_variable_ref_version_create(
    char *href,
    char *title,
    char *type
);

void sdtm_dataset_variable_ref_version_free(sdtm_dataset_variable_ref_version_t *sdtm_dataset_variable_ref_version);

sdtm_dataset_variable_ref_version_t *sdtm_dataset_variable_ref_version_parseFromJSON(cJSON *sdtm_dataset_variable_ref_versionJSON);

cJSON *sdtm_dataset_variable_ref_version_convertToJSON(sdtm_dataset_variable_ref_version_t *sdtm_dataset_variable_ref_version);

#endif /* _sdtm_dataset_variable_ref_version_H_ */

