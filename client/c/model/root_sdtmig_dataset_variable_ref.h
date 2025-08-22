/*
 * root_sdtmig_dataset_variable_ref.h
 *
 * 
 */

#ifndef _root_sdtmig_dataset_variable_ref_H_
#define _root_sdtmig_dataset_variable_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_sdtmig_dataset_variable_ref_t root_sdtmig_dataset_variable_ref_t;




typedef struct root_sdtmig_dataset_variable_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} root_sdtmig_dataset_variable_ref_t;

__attribute__((deprecated)) root_sdtmig_dataset_variable_ref_t *root_sdtmig_dataset_variable_ref_create(
    char *href,
    char *title,
    char *type
);

void root_sdtmig_dataset_variable_ref_free(root_sdtmig_dataset_variable_ref_t *root_sdtmig_dataset_variable_ref);

root_sdtmig_dataset_variable_ref_t *root_sdtmig_dataset_variable_ref_parseFromJSON(cJSON *root_sdtmig_dataset_variable_refJSON);

cJSON *root_sdtmig_dataset_variable_ref_convertToJSON(root_sdtmig_dataset_variable_ref_t *root_sdtmig_dataset_variable_ref);

#endif /* _root_sdtmig_dataset_variable_ref_H_ */

