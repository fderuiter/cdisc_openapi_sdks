/*
 * sdtmig_dataset_variable_ref_version.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variable_ref_version_H_
#define _sdtmig_dataset_variable_ref_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variable_ref_version_t sdtmig_dataset_variable_ref_version_t;




typedef struct sdtmig_dataset_variable_ref_version_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variable_ref_version_t;

__attribute__((deprecated)) sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_create(
    char *href,
    char *title,
    char *type
);

void sdtmig_dataset_variable_ref_version_free(sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version);

sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version_parseFromJSON(cJSON *sdtmig_dataset_variable_ref_versionJSON);

cJSON *sdtmig_dataset_variable_ref_version_convertToJSON(sdtmig_dataset_variable_ref_version_t *sdtmig_dataset_variable_ref_version);

#endif /* _sdtmig_dataset_variable_ref_version_H_ */

