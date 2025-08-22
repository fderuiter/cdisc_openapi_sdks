/*
 * xml_sdtmig_dataset_variables.h
 *
 * 
 */

#ifndef _xml_sdtmig_dataset_variables_H_
#define _xml_sdtmig_dataset_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtmig_dataset_variables_t xml_sdtmig_dataset_variables_t;

#include "sdtmig_dataset_variables.h"



typedef struct xml_sdtmig_dataset_variables_t {
    struct sdtmig_dataset_variables_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtmig_dataset_variables_t;

__attribute__((deprecated)) xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_create(
    sdtmig_dataset_variables_t *self
);

void xml_sdtmig_dataset_variables_free(xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables);

xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables_parseFromJSON(cJSON *xml_sdtmig_dataset_variablesJSON);

cJSON *xml_sdtmig_dataset_variables_convertToJSON(xml_sdtmig_dataset_variables_t *xml_sdtmig_dataset_variables);

#endif /* _xml_sdtmig_dataset_variables_H_ */

