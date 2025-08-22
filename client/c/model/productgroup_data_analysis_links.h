/*
 * productgroup_data_analysis_links.h
 *
 * 
 */

#ifndef _productgroup_data_analysis_links_H_
#define _productgroup_data_analysis_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_data_analysis_links_t productgroup_data_analysis_links_t;

#include "adam_product_ref_element.h"
#include "productgroup_ref.h"



typedef struct productgroup_data_analysis_links_t {
    struct productgroup_ref_t *self; //model
    list_t *adam; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_data_analysis_links_t;

__attribute__((deprecated)) productgroup_data_analysis_links_t *productgroup_data_analysis_links_create(
    productgroup_ref_t *self,
    list_t *adam
);

void productgroup_data_analysis_links_free(productgroup_data_analysis_links_t *productgroup_data_analysis_links);

productgroup_data_analysis_links_t *productgroup_data_analysis_links_parseFromJSON(cJSON *productgroup_data_analysis_linksJSON);

cJSON *productgroup_data_analysis_links_convertToJSON(productgroup_data_analysis_links_t *productgroup_data_analysis_links);

#endif /* _productgroup_data_analysis_links_H_ */

