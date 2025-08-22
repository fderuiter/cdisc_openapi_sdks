/*
 * cdashig_scenario_fields.h
 *
 * 
 */

#ifndef _cdashig_scenario_fields_H_
#define _cdashig_scenario_fields_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_scenario_fields_t cdashig_scenario_fields_t;

#include "cdashig_scenario_fields_links.h"



typedef struct cdashig_scenario_fields_t {
    char *ordinal; // string
    char *domain; // string
    char *scenario; // string
    struct cdashig_scenario_fields_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_scenario_fields_t;

__attribute__((deprecated)) cdashig_scenario_fields_t *cdashig_scenario_fields_create(
    char *ordinal,
    char *domain,
    char *scenario,
    cdashig_scenario_fields_links_t *_links
);

void cdashig_scenario_fields_free(cdashig_scenario_fields_t *cdashig_scenario_fields);

cdashig_scenario_fields_t *cdashig_scenario_fields_parseFromJSON(cJSON *cdashig_scenario_fieldsJSON);

cJSON *cdashig_scenario_fields_convertToJSON(cdashig_scenario_fields_t *cdashig_scenario_fields);

#endif /* _cdashig_scenario_fields_H_ */

