/*
 * productgroup_data_analysis.h
 *
 * 
 */

#ifndef _productgroup_data_analysis_H_
#define _productgroup_data_analysis_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_data_analysis_t productgroup_data_analysis_t;

#include "productgroup_data_analysis_links.h"



typedef struct productgroup_data_analysis_t {
    struct productgroup_data_analysis_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_data_analysis_t;

__attribute__((deprecated)) productgroup_data_analysis_t *productgroup_data_analysis_create(
    productgroup_data_analysis_links_t *_links
);

void productgroup_data_analysis_free(productgroup_data_analysis_t *productgroup_data_analysis);

productgroup_data_analysis_t *productgroup_data_analysis_parseFromJSON(cJSON *productgroup_data_analysisJSON);

cJSON *productgroup_data_analysis_convertToJSON(productgroup_data_analysis_t *productgroup_data_analysis);

#endif /* _productgroup_data_analysis_H_ */

