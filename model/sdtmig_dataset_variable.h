/*
 * sdtmig_dataset_variable.h
 *
 * 
 */

#ifndef _sdtmig_dataset_variable_H_
#define _sdtmig_dataset_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_dataset_variable_t sdtmig_dataset_variable_t;

#include "sdtmig_dataset_variable_links.h"



typedef struct sdtmig_dataset_variable_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *role; // string
    char *simple_datatype; // string
    char *core; // string
    char *described_value_domain; // string
    list_t *value_list; //primitive container
    struct sdtmig_dataset_variable_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_dataset_variable_t;

__attribute__((deprecated)) sdtmig_dataset_variable_t *sdtmig_dataset_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *simple_datatype,
    char *core,
    char *described_value_domain,
    list_t *value_list,
    sdtmig_dataset_variable_links_t *_links
);

void sdtmig_dataset_variable_free(sdtmig_dataset_variable_t *sdtmig_dataset_variable);

sdtmig_dataset_variable_t *sdtmig_dataset_variable_parseFromJSON(cJSON *sdtmig_dataset_variableJSON);

cJSON *sdtmig_dataset_variable_convertToJSON(sdtmig_dataset_variable_t *sdtmig_dataset_variable);

#endif /* _sdtmig_dataset_variable_H_ */

