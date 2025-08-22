/*
 * cdashig_scenario.h
 *
 * 
 */

#ifndef _cdashig_scenario_H_
#define _cdashig_scenario_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_scenario_t cdashig_scenario_t;

#include "cdashig_scenario_field.h"
#include "cdashig_scenario_links.h"



typedef struct cdashig_scenario_t {
    char *ordinal; // string
    char *domain; // string
    char *scenario; // string
    struct cdashig_scenario_links_t *_links; //model
    list_t *fields; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_scenario_t;

__attribute__((deprecated)) cdashig_scenario_t *cdashig_scenario_create(
    char *ordinal,
    char *domain,
    char *scenario,
    cdashig_scenario_links_t *_links,
    list_t *fields
);

void cdashig_scenario_free(cdashig_scenario_t *cdashig_scenario);

cdashig_scenario_t *cdashig_scenario_parseFromJSON(cJSON *cdashig_scenarioJSON);

cJSON *cdashig_scenario_convertToJSON(cdashig_scenario_t *cdashig_scenario);

#endif /* _cdashig_scenario_H_ */

