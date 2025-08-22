/*
 * products_links.h
 *
 * 
 */

#ifndef _products_links_H_
#define _products_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct products_links_t products_links_t;

#include "productgroup_data_analysis.h"
#include "productgroup_data_collection.h"
#include "productgroup_data_tabulation.h"
#include "productgroup_qrs.h"
#include "productgroup_terminology.h"
#include "products_ref.h"



typedef struct products_links_t {
    struct products_ref_t *self; //model
    struct productgroup_data_collection_t *data_collection; //model
    struct productgroup_data_tabulation_t *data_tabulation; //model
    struct productgroup_data_analysis_t *data_analysis; //model
    struct productgroup_terminology_t *terminology; //model
    struct productgroup_qrs_t *measure; //model

    int _library_owned; // Is the library responsible for freeing this object?
} products_links_t;

__attribute__((deprecated)) products_links_t *products_links_create(
    products_ref_t *self,
    productgroup_data_collection_t *data_collection,
    productgroup_data_tabulation_t *data_tabulation,
    productgroup_data_analysis_t *data_analysis,
    productgroup_terminology_t *terminology,
    productgroup_qrs_t *measure
);

void products_links_free(products_links_t *products_links);

products_links_t *products_links_parseFromJSON(cJSON *products_linksJSON);

cJSON *products_links_convertToJSON(products_links_t *products_links);

#endif /* _products_links_H_ */

