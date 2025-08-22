/*
 * xml_adam_datastructure_variables.h
 *
 * 
 */

#ifndef _xml_adam_datastructure_variables_H_
#define _xml_adam_datastructure_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_datastructure_variables_t xml_adam_datastructure_variables_t;

#include "adam_datastructure_variables.h"



typedef struct xml_adam_datastructure_variables_t {
    struct adam_datastructure_variables_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_datastructure_variables_t;

__attribute__((deprecated)) xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_create(
    adam_datastructure_variables_t *self
);

void xml_adam_datastructure_variables_free(xml_adam_datastructure_variables_t *xml_adam_datastructure_variables);

xml_adam_datastructure_variables_t *xml_adam_datastructure_variables_parseFromJSON(cJSON *xml_adam_datastructure_variablesJSON);

cJSON *xml_adam_datastructure_variables_convertToJSON(xml_adam_datastructure_variables_t *xml_adam_datastructure_variables);

#endif /* _xml_adam_datastructure_variables_H_ */

