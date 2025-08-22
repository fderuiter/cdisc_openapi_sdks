/*
 * xml_cdashig_scenario_fields.h
 *
 * 
 */

#ifndef _xml_cdashig_scenario_fields_H_
#define _xml_cdashig_scenario_fields_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_scenario_fields_t xml_cdashig_scenario_fields_t;

#include "cdashig_scenario_fields.h"



typedef struct xml_cdashig_scenario_fields_t {
    struct cdashig_scenario_fields_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_scenario_fields_t;

__attribute__((deprecated)) xml_cdashig_scenario_fields_t *xml_cdashig_scenario_fields_create(
    cdashig_scenario_fields_t *self
);

void xml_cdashig_scenario_fields_free(xml_cdashig_scenario_fields_t *xml_cdashig_scenario_fields);

xml_cdashig_scenario_fields_t *xml_cdashig_scenario_fields_parseFromJSON(cJSON *xml_cdashig_scenario_fieldsJSON);

cJSON *xml_cdashig_scenario_fields_convertToJSON(xml_cdashig_scenario_fields_t *xml_cdashig_scenario_fields);

#endif /* _xml_cdashig_scenario_fields_H_ */

