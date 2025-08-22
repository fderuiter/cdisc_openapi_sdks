/*
 * xml_sdtmig_dataset.h
 *
 * 
 */

#ifndef _xml_sdtmig_dataset_H_
#define _xml_sdtmig_dataset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtmig_dataset_t xml_sdtmig_dataset_t;

#include "sdtmig_dataset.h"



typedef struct xml_sdtmig_dataset_t {
    struct sdtmig_dataset_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtmig_dataset_t;

__attribute__((deprecated)) xml_sdtmig_dataset_t *xml_sdtmig_dataset_create(
    sdtmig_dataset_t *self
);

void xml_sdtmig_dataset_free(xml_sdtmig_dataset_t *xml_sdtmig_dataset);

xml_sdtmig_dataset_t *xml_sdtmig_dataset_parseFromJSON(cJSON *xml_sdtmig_datasetJSON);

cJSON *xml_sdtmig_dataset_convertToJSON(xml_sdtmig_dataset_t *xml_sdtmig_dataset);

#endif /* _xml_sdtmig_dataset_H_ */

