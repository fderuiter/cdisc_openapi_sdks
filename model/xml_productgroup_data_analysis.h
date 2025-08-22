/*
 * xml_productgroup_data_analysis.h
 *
 * 
 */

#ifndef _xml_productgroup_data_analysis_H_
#define _xml_productgroup_data_analysis_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_productgroup_data_analysis_t xml_productgroup_data_analysis_t;

#include "productgroup_data_analysis.h"



typedef struct xml_productgroup_data_analysis_t {
    struct productgroup_data_analysis_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_productgroup_data_analysis_t;

__attribute__((deprecated)) xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_create(
    productgroup_data_analysis_t *self
);

void xml_productgroup_data_analysis_free(xml_productgroup_data_analysis_t *xml_productgroup_data_analysis);

xml_productgroup_data_analysis_t *xml_productgroup_data_analysis_parseFromJSON(cJSON *xml_productgroup_data_analysisJSON);

cJSON *xml_productgroup_data_analysis_convertToJSON(xml_productgroup_data_analysis_t *xml_productgroup_data_analysis);

#endif /* _xml_productgroup_data_analysis_H_ */

