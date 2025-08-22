/*
 * xml_sendig_dataset_variable.h
 *
 * 
 */

#ifndef _xml_sendig_dataset_variable_H_
#define _xml_sendig_dataset_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sendig_dataset_variable_t xml_sendig_dataset_variable_t;

#include "sendig_dataset_variable.h"



typedef struct xml_sendig_dataset_variable_t {
    struct sendig_dataset_variable_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sendig_dataset_variable_t;

__attribute__((deprecated)) xml_sendig_dataset_variable_t *xml_sendig_dataset_variable_create(
    sendig_dataset_variable_t *self
);

void xml_sendig_dataset_variable_free(xml_sendig_dataset_variable_t *xml_sendig_dataset_variable);

xml_sendig_dataset_variable_t *xml_sendig_dataset_variable_parseFromJSON(cJSON *xml_sendig_dataset_variableJSON);

cJSON *xml_sendig_dataset_variable_convertToJSON(xml_sendig_dataset_variable_t *xml_sendig_dataset_variable);

#endif /* _xml_sendig_dataset_variable_H_ */

