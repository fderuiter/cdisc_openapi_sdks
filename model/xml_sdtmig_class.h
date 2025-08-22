/*
 * xml_sdtmig_class.h
 *
 * 
 */

#ifndef _xml_sdtmig_class_H_
#define _xml_sdtmig_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtmig_class_t xml_sdtmig_class_t;

#include "sdtmig_class.h"



typedef struct xml_sdtmig_class_t {
    struct sdtmig_class_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtmig_class_t;

__attribute__((deprecated)) xml_sdtmig_class_t *xml_sdtmig_class_create(
    sdtmig_class_t *self
);

void xml_sdtmig_class_free(xml_sdtmig_class_t *xml_sdtmig_class);

xml_sdtmig_class_t *xml_sdtmig_class_parseFromJSON(cJSON *xml_sdtmig_classJSON);

cJSON *xml_sdtmig_class_convertToJSON(xml_sdtmig_class_t *xml_sdtmig_class);

#endif /* _xml_sdtmig_class_H_ */

