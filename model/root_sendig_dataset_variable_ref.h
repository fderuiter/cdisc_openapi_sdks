/*
 * root_sendig_dataset_variable_ref.h
 *
 * 
 */

#ifndef _root_sendig_dataset_variable_ref_H_
#define _root_sendig_dataset_variable_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_sendig_dataset_variable_ref_t root_sendig_dataset_variable_ref_t;




typedef struct root_sendig_dataset_variable_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} root_sendig_dataset_variable_ref_t;

__attribute__((deprecated)) root_sendig_dataset_variable_ref_t *root_sendig_dataset_variable_ref_create(
    char *href,
    char *title,
    char *type
);

void root_sendig_dataset_variable_ref_free(root_sendig_dataset_variable_ref_t *root_sendig_dataset_variable_ref);

root_sendig_dataset_variable_ref_t *root_sendig_dataset_variable_ref_parseFromJSON(cJSON *root_sendig_dataset_variable_refJSON);

cJSON *root_sendig_dataset_variable_ref_convertToJSON(root_sendig_dataset_variable_ref_t *root_sendig_dataset_variable_ref);

#endif /* _root_sendig_dataset_variable_ref_H_ */

