/*
 * xml_sendig_datasets.h
 *
 * 
 */

#ifndef _xml_sendig_datasets_H_
#define _xml_sendig_datasets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sendig_datasets_t xml_sendig_datasets_t;

#include "sendig_datasets.h"



typedef struct xml_sendig_datasets_t {
    struct sendig_datasets_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sendig_datasets_t;

__attribute__((deprecated)) xml_sendig_datasets_t *xml_sendig_datasets_create(
    sendig_datasets_t *self
);

void xml_sendig_datasets_free(xml_sendig_datasets_t *xml_sendig_datasets);

xml_sendig_datasets_t *xml_sendig_datasets_parseFromJSON(cJSON *xml_sendig_datasetsJSON);

cJSON *xml_sendig_datasets_convertToJSON(xml_sendig_datasets_t *xml_sendig_datasets);

#endif /* _xml_sendig_datasets_H_ */

