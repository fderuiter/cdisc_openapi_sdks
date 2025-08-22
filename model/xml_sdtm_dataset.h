/*
 * xml_sdtm_dataset.h
 *
 * 
 */

#ifndef _xml_sdtm_dataset_H_
#define _xml_sdtm_dataset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_dataset_t xml_sdtm_dataset_t;

#include "sdtm_dataset.h"



typedef struct xml_sdtm_dataset_t {
    struct sdtm_dataset_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_dataset_t;

__attribute__((deprecated)) xml_sdtm_dataset_t *xml_sdtm_dataset_create(
    sdtm_dataset_t *self
);

void xml_sdtm_dataset_free(xml_sdtm_dataset_t *xml_sdtm_dataset);

xml_sdtm_dataset_t *xml_sdtm_dataset_parseFromJSON(cJSON *xml_sdtm_datasetJSON);

cJSON *xml_sdtm_dataset_convertToJSON(xml_sdtm_dataset_t *xml_sdtm_dataset);

#endif /* _xml_sdtm_dataset_H_ */

