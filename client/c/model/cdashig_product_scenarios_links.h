/*
 * cdashig_product_scenarios_links.h
 *
 * 
 */

#ifndef _cdashig_product_scenarios_links_H_
#define _cdashig_product_scenarios_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_product_scenarios_links_t cdashig_product_scenarios_links_t;

#include "cdashig_product_ref.h"
#include "cdashig_product_scenarios_ref.h"
#include "cdashig_scenario_ref_element.h"



typedef struct cdashig_product_scenarios_links_t {
    struct cdashig_product_scenarios_ref_t *self; //model
    struct cdashig_product_ref_t *parent_product; //model
    list_t *scenarios; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_product_scenarios_links_t;

__attribute__((deprecated)) cdashig_product_scenarios_links_t *cdashig_product_scenarios_links_create(
    cdashig_product_scenarios_ref_t *self,
    cdashig_product_ref_t *parent_product,
    list_t *scenarios
);

void cdashig_product_scenarios_links_free(cdashig_product_scenarios_links_t *cdashig_product_scenarios_links);

cdashig_product_scenarios_links_t *cdashig_product_scenarios_links_parseFromJSON(cJSON *cdashig_product_scenarios_linksJSON);

cJSON *cdashig_product_scenarios_links_convertToJSON(cdashig_product_scenarios_links_t *cdashig_product_scenarios_links);

#endif /* _cdashig_product_scenarios_links_H_ */

