/*
 * xml_sdtm_class_variables.h
 *
 * 
 */

#ifndef _xml_sdtm_class_variables_H_
#define _xml_sdtm_class_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_class_variables_t xml_sdtm_class_variables_t;

#include "sdtm_class_variables.h"



typedef struct xml_sdtm_class_variables_t {
    struct sdtm_class_variables_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_class_variables_t;

__attribute__((deprecated)) xml_sdtm_class_variables_t *xml_sdtm_class_variables_create(
    sdtm_class_variables_t *self
);

void xml_sdtm_class_variables_free(xml_sdtm_class_variables_t *xml_sdtm_class_variables);

xml_sdtm_class_variables_t *xml_sdtm_class_variables_parseFromJSON(cJSON *xml_sdtm_class_variablesJSON);

cJSON *xml_sdtm_class_variables_convertToJSON(xml_sdtm_class_variables_t *xml_sdtm_class_variables);

#endif /* _xml_sdtm_class_variables_H_ */

