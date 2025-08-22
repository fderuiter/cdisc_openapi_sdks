/*
 * xml_adam_variable.h
 *
 * 
 */

#ifndef _xml_adam_variable_H_
#define _xml_adam_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_variable_t xml_adam_variable_t;

#include "adam_variable.h"



typedef struct xml_adam_variable_t {
    struct adam_variable_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_variable_t;

__attribute__((deprecated)) xml_adam_variable_t *xml_adam_variable_create(
    adam_variable_t *self
);

void xml_adam_variable_free(xml_adam_variable_t *xml_adam_variable);

xml_adam_variable_t *xml_adam_variable_parseFromJSON(cJSON *xml_adam_variableJSON);

cJSON *xml_adam_variable_convertToJSON(xml_adam_variable_t *xml_adam_variable);

#endif /* _xml_adam_variable_H_ */

