/*
 * sendig_dataset_variables_ref.h
 *
 * 
 */

#ifndef _sendig_dataset_variables_ref_H_
#define _sendig_dataset_variables_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_variables_ref_t sendig_dataset_variables_ref_t;




typedef struct sendig_dataset_variables_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_variables_ref_t;

__attribute__((deprecated)) sendig_dataset_variables_ref_t *sendig_dataset_variables_ref_create(
    char *href,
    char *title,
    char *type
);

void sendig_dataset_variables_ref_free(sendig_dataset_variables_ref_t *sendig_dataset_variables_ref);

sendig_dataset_variables_ref_t *sendig_dataset_variables_ref_parseFromJSON(cJSON *sendig_dataset_variables_refJSON);

cJSON *sendig_dataset_variables_ref_convertToJSON(sendig_dataset_variables_ref_t *sendig_dataset_variables_ref);

#endif /* _sendig_dataset_variables_ref_H_ */

