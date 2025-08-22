/*
 * sendig_dataset_variable.h
 *
 * 
 */

#ifndef _sendig_dataset_variable_H_
#define _sendig_dataset_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_dataset_variable_t sendig_dataset_variable_t;

#include "sendig_dataset_variable_links.h"



typedef struct sendig_dataset_variable_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *role; // string
    char *simple_datatype; // string
    char *core; // string
    char *described_value_domain; // string
    list_t *value_list; //primitive container
    struct sendig_dataset_variable_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_dataset_variable_t;

__attribute__((deprecated)) sendig_dataset_variable_t *sendig_dataset_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *role,
    char *simple_datatype,
    char *core,
    char *described_value_domain,
    list_t *value_list,
    sendig_dataset_variable_links_t *_links
);

void sendig_dataset_variable_free(sendig_dataset_variable_t *sendig_dataset_variable);

sendig_dataset_variable_t *sendig_dataset_variable_parseFromJSON(cJSON *sendig_dataset_variableJSON);

cJSON *sendig_dataset_variable_convertToJSON(sendig_dataset_variable_t *sendig_dataset_variable);

#endif /* _sendig_dataset_variable_H_ */

