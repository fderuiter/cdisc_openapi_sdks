/*
 * xml_cdashig_scenario.h
 *
 * 
 */

#ifndef _xml_cdashig_scenario_H_
#define _xml_cdashig_scenario_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_scenario_t xml_cdashig_scenario_t;

#include "cdashig_scenario.h"



typedef struct xml_cdashig_scenario_t {
    struct cdashig_scenario_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_scenario_t;

__attribute__((deprecated)) xml_cdashig_scenario_t *xml_cdashig_scenario_create(
    cdashig_scenario_t *self
);

void xml_cdashig_scenario_free(xml_cdashig_scenario_t *xml_cdashig_scenario);

xml_cdashig_scenario_t *xml_cdashig_scenario_parseFromJSON(cJSON *xml_cdashig_scenarioJSON);

cJSON *xml_cdashig_scenario_convertToJSON(xml_cdashig_scenario_t *xml_cdashig_scenario);

#endif /* _xml_cdashig_scenario_H_ */

