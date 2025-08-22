/*
 * scope_values.h
 *
 * 
 */

#ifndef _scope_values_H_
#define _scope_values_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct scope_values_t scope_values_t;




typedef struct scope_values_t {
    double total; //numeric
    int has_more; //boolean
    list_t *values; //primitive container

    int _library_owned; // Is the library responsible for freeing this object?
} scope_values_t;

__attribute__((deprecated)) scope_values_t *scope_values_create(
    double total,
    int has_more,
    list_t *values
);

void scope_values_free(scope_values_t *scope_values);

scope_values_t *scope_values_parseFromJSON(cJSON *scope_valuesJSON);

cJSON *scope_values_convertToJSON(scope_values_t *scope_values);

#endif /* _scope_values_H_ */

