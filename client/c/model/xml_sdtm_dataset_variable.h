/*
 * xml_sdtm_dataset_variable.h
 *
 * 
 */

#ifndef _xml_sdtm_dataset_variable_H_
#define _xml_sdtm_dataset_variable_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_dataset_variable_t xml_sdtm_dataset_variable_t;

#include "sdtm_dataset_variable.h"



typedef struct xml_sdtm_dataset_variable_t {
    struct sdtm_dataset_variable_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_dataset_variable_t;

__attribute__((deprecated)) xml_sdtm_dataset_variable_t *xml_sdtm_dataset_variable_create(
    sdtm_dataset_variable_t *self
);

void xml_sdtm_dataset_variable_free(xml_sdtm_dataset_variable_t *xml_sdtm_dataset_variable);

xml_sdtm_dataset_variable_t *xml_sdtm_dataset_variable_parseFromJSON(cJSON *xml_sdtm_dataset_variableJSON);

cJSON *xml_sdtm_dataset_variable_convertToJSON(xml_sdtm_dataset_variable_t *xml_sdtm_dataset_variable);

#endif /* _xml_sdtm_dataset_variable_H_ */

