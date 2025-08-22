/*
 * adam_variable.h
 *
 * 
 */

#ifndef _adam_variable_H_
#define _adam_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_variable_t adam_variable_t;

#include "adam_variable_links.h"



typedef struct adam_variable_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *core; // string
    char *simple_datatype; // string
    char *described_value_domain; // string
    list_t *value_list; //primitive container
    struct adam_variable_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_variable_t;

__attribute__((deprecated)) adam_variable_t *adam_variable_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *core,
    char *simple_datatype,
    char *described_value_domain,
    list_t *value_list,
    adam_variable_links_t *_links
);

void adam_variable_free(adam_variable_t *adam_variable);

adam_variable_t *adam_variable_parseFromJSON(cJSON *adam_variableJSON);

cJSON *adam_variable_convertToJSON(adam_variable_t *adam_variable);

#endif /* _adam_variable_H_ */

