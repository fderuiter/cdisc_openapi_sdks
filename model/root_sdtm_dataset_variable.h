/*
 * root_sdtm_dataset_variable.h
 *
 * 
 */

#ifndef _root_sdtm_dataset_variable_H_
#define _root_sdtm_dataset_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_sdtm_dataset_variable_t root_sdtm_dataset_variable_t;

#include "root_sdtm_dataset_variable_links.h"



typedef struct root_sdtm_dataset_variable_t {
    struct root_sdtm_dataset_variable_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} root_sdtm_dataset_variable_t;

__attribute__((deprecated)) root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_create(
    root_sdtm_dataset_variable_links_t *_links
);

void root_sdtm_dataset_variable_free(root_sdtm_dataset_variable_t *root_sdtm_dataset_variable);

root_sdtm_dataset_variable_t *root_sdtm_dataset_variable_parseFromJSON(cJSON *root_sdtm_dataset_variableJSON);

cJSON *root_sdtm_dataset_variable_convertToJSON(root_sdtm_dataset_variable_t *root_sdtm_dataset_variable);

#endif /* _root_sdtm_dataset_variable_H_ */

