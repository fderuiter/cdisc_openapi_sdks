/*
 * xml_cdashig_product_scenarios.h
 *
 * 
 */

#ifndef _xml_cdashig_product_scenarios_H_
#define _xml_cdashig_product_scenarios_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_product_scenarios_t xml_cdashig_product_scenarios_t;

#include "cdashig_product_scenarios.h"



typedef struct xml_cdashig_product_scenarios_t {
    struct cdashig_product_scenarios_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_product_scenarios_t;

__attribute__((deprecated)) xml_cdashig_product_scenarios_t *xml_cdashig_product_scenarios_create(
    cdashig_product_scenarios_t *self
);

void xml_cdashig_product_scenarios_free(xml_cdashig_product_scenarios_t *xml_cdashig_product_scenarios);

xml_cdashig_product_scenarios_t *xml_cdashig_product_scenarios_parseFromJSON(cJSON *xml_cdashig_product_scenariosJSON);

cJSON *xml_cdashig_product_scenarios_convertToJSON(xml_cdashig_product_scenarios_t *xml_cdashig_product_scenarios);

#endif /* _xml_cdashig_product_scenarios_H_ */

