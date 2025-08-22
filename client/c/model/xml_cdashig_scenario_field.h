/*
 * xml_cdashig_scenario_field.h
 *
 * 
 */

#ifndef _xml_cdashig_scenario_field_H_
#define _xml_cdashig_scenario_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_scenario_field_t xml_cdashig_scenario_field_t;

#include "cdashig_scenario_field.h"



typedef struct xml_cdashig_scenario_field_t {
    struct cdashig_scenario_field_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_scenario_field_t;

__attribute__((deprecated)) xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_create(
    cdashig_scenario_field_t *self
);

void xml_cdashig_scenario_field_free(xml_cdashig_scenario_field_t *xml_cdashig_scenario_field);

xml_cdashig_scenario_field_t *xml_cdashig_scenario_field_parseFromJSON(cJSON *xml_cdashig_scenario_fieldJSON);

cJSON *xml_cdashig_scenario_field_convertToJSON(xml_cdashig_scenario_field_t *xml_cdashig_scenario_field);

#endif /* _xml_cdashig_scenario_field_H_ */

