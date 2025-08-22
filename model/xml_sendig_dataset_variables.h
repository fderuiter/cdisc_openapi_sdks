/*
 * xml_sendig_dataset_variables.h
 *
 * 
 */

#ifndef _xml_sendig_dataset_variables_H_
#define _xml_sendig_dataset_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sendig_dataset_variables_t xml_sendig_dataset_variables_t;

#include "sendig_dataset_variables.h"



typedef struct xml_sendig_dataset_variables_t {
    struct sendig_dataset_variables_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sendig_dataset_variables_t;

__attribute__((deprecated)) xml_sendig_dataset_variables_t *xml_sendig_dataset_variables_create(
    sendig_dataset_variables_t *self
);

void xml_sendig_dataset_variables_free(xml_sendig_dataset_variables_t *xml_sendig_dataset_variables);

xml_sendig_dataset_variables_t *xml_sendig_dataset_variables_parseFromJSON(cJSON *xml_sendig_dataset_variablesJSON);

cJSON *xml_sendig_dataset_variables_convertToJSON(xml_sendig_dataset_variables_t *xml_sendig_dataset_variables);

#endif /* _xml_sendig_dataset_variables_H_ */

