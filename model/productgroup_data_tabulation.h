/*
 * productgroup_data_tabulation.h
 *
 * 
 */

#ifndef _productgroup_data_tabulation_H_
#define _productgroup_data_tabulation_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_data_tabulation_t productgroup_data_tabulation_t;

#include "productgroup_data_tabulation_links.h"



typedef struct productgroup_data_tabulation_t {
    struct productgroup_data_tabulation_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_data_tabulation_t;

__attribute__((deprecated)) productgroup_data_tabulation_t *productgroup_data_tabulation_create(
    productgroup_data_tabulation_links_t *_links
);

void productgroup_data_tabulation_free(productgroup_data_tabulation_t *productgroup_data_tabulation);

productgroup_data_tabulation_t *productgroup_data_tabulation_parseFromJSON(cJSON *productgroup_data_tabulationJSON);

cJSON *productgroup_data_tabulation_convertToJSON(productgroup_data_tabulation_t *productgroup_data_tabulation);

#endif /* _productgroup_data_tabulation_H_ */

