/*
 * xml_sdtm_datasets.h
 *
 * 
 */

#ifndef _xml_sdtm_datasets_H_
#define _xml_sdtm_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_datasets_t xml_sdtm_datasets_t;

#include "sdtm_datasets.h"



typedef struct xml_sdtm_datasets_t {
    struct sdtm_datasets_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_datasets_t;

__attribute__((deprecated)) xml_sdtm_datasets_t *xml_sdtm_datasets_create(
    sdtm_datasets_t *self
);

void xml_sdtm_datasets_free(xml_sdtm_datasets_t *xml_sdtm_datasets);

xml_sdtm_datasets_t *xml_sdtm_datasets_parseFromJSON(cJSON *xml_sdtm_datasetsJSON);

cJSON *xml_sdtm_datasets_convertToJSON(xml_sdtm_datasets_t *xml_sdtm_datasets);

#endif /* _xml_sdtm_datasets_H_ */

