/*
 * cdashig_class_scenarios.h
 *
 * 
 */

#ifndef _cdashig_class_scenarios_H_
#define _cdashig_class_scenarios_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_class_scenarios_t cdashig_class_scenarios_t;

#include "cdashig_class_scenarios_links.h"



typedef struct cdashig_class_scenarios_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct cdashig_class_scenarios_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_class_scenarios_t;

__attribute__((deprecated)) cdashig_class_scenarios_t *cdashig_class_scenarios_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdashig_class_scenarios_links_t *_links
);

void cdashig_class_scenarios_free(cdashig_class_scenarios_t *cdashig_class_scenarios);

cdashig_class_scenarios_t *cdashig_class_scenarios_parseFromJSON(cJSON *cdashig_class_scenariosJSON);

cJSON *cdashig_class_scenarios_convertToJSON(cdashig_class_scenarios_t *cdashig_class_scenarios);

#endif /* _cdashig_class_scenarios_H_ */

