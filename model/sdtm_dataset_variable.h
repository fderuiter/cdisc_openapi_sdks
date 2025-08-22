/*
 * sdtm_dataset_variable.h
 *
 * 
 */

#ifndef _sdtm_dataset_variable_H_
#define _sdtm_dataset_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_dataset_variable_t sdtm_dataset_variable_t;

#include "sdtm_dataset_variable_links.h"



typedef struct sdtm_dataset_variable_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *role; // string
    char *role_description; // string
    char *simple_datatype; // string
    char *described_value_domain; // string
    struct sdtm_dataset_variable_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_dataset_variable_t;

__attribute__((deprecated)) sdtm_dataset_variable_t *sdtm_dataset_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *role_description,
    char *simple_datatype,
    char *described_value_domain,
    sdtm_dataset_variable_links_t *_links
);

void sdtm_dataset_variable_free(sdtm_dataset_variable_t *sdtm_dataset_variable);

sdtm_dataset_variable_t *sdtm_dataset_variable_parseFromJSON(cJSON *sdtm_dataset_variableJSON);

cJSON *sdtm_dataset_variable_convertToJSON(sdtm_dataset_variable_t *sdtm_dataset_variable);

#endif /* _sdtm_dataset_variable_H_ */

