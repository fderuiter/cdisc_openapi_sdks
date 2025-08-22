/*
 * cdashig_product_scenarios.h
 *
 * 
 */

#ifndef _cdashig_product_scenarios_H_
#define _cdashig_product_scenarios_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_scenarios_t cdashig_product_scenarios_t;

#include "cdashig_product_scenarios_links.h"



typedef struct cdashig_product_scenarios_t {
    char *name; // string
    char *label; // string
    char *description; // string
    char *source; // string
    char *effective_date; // string
    char *registration_status; // string
    char *version; // string
    struct cdashig_product_scenarios_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_scenarios_t;

__attribute__((deprecated)) cdashig_product_scenarios_t *cdashig_product_scenarios_create(
    char *name,
    char *label,
    char *description,
    char *source,
    char *effective_date,
    char *registration_status,
    char *version,
    cdashig_product_scenarios_links_t *_links
);

void cdashig_product_scenarios_free(cdashig_product_scenarios_t *cdashig_product_scenarios);

cdashig_product_scenarios_t *cdashig_product_scenarios_parseFromJSON(cJSON *cdashig_product_scenariosJSON);

cJSON *cdashig_product_scenarios_convertToJSON(cdashig_product_scenarios_t *cdashig_product_scenarios);

#endif /* _cdashig_product_scenarios_H_ */

