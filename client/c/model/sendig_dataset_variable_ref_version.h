/*
 * sendig_dataset_variable_ref_version.h
 *
 * 
 */

#ifndef _sendig_dataset_variable_ref_version_H_
#define _sendig_dataset_variable_ref_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_variable_ref_version_t sendig_dataset_variable_ref_version_t;




typedef struct sendig_dataset_variable_ref_version_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_variable_ref_version_t;

__attribute__((deprecated)) sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_create(
    char *href,
    char *title,
    char *type
);

void sendig_dataset_variable_ref_version_free(sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version);

sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version_parseFromJSON(cJSON *sendig_dataset_variable_ref_versionJSON);

cJSON *sendig_dataset_variable_ref_version_convertToJSON(sendig_dataset_variable_ref_version_t *sendig_dataset_variable_ref_version);

#endif /* _sendig_dataset_variable_ref_version_H_ */

