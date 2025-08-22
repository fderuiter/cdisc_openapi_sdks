/*
 * xml_productgroup_data_tabulation.h
 *
 * 
 */

#ifndef _xml_productgroup_data_tabulation_H_
#define _xml_productgroup_data_tabulation_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_productgroup_data_tabulation_t xml_productgroup_data_tabulation_t;

#include "productgroup_data_tabulation.h"



typedef struct xml_productgroup_data_tabulation_t {
    struct productgroup_data_tabulation_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_productgroup_data_tabulation_t;

__attribute__((deprecated)) xml_productgroup_data_tabulation_t *xml_productgroup_data_tabulation_create(
    productgroup_data_tabulation_t *self
);

void xml_productgroup_data_tabulation_free(xml_productgroup_data_tabulation_t *xml_productgroup_data_tabulation);

xml_productgroup_data_tabulation_t *xml_productgroup_data_tabulation_parseFromJSON(cJSON *xml_productgroup_data_tabulationJSON);

cJSON *xml_productgroup_data_tabulation_convertToJSON(xml_productgroup_data_tabulation_t *xml_productgroup_data_tabulation);

#endif /* _xml_productgroup_data_tabulation_H_ */

