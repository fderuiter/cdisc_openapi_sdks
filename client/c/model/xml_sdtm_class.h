/*
 * xml_sdtm_class.h
 *
 * 
 */

#ifndef _xml_sdtm_class_H_
#define _xml_sdtm_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_class_t xml_sdtm_class_t;

#include "sdtm_class.h"



typedef struct xml_sdtm_class_t {
    struct sdtm_class_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_class_t;

__attribute__((deprecated)) xml_sdtm_class_t *xml_sdtm_class_create(
    sdtm_class_t *self
);

void xml_sdtm_class_free(xml_sdtm_class_t *xml_sdtm_class);

xml_sdtm_class_t *xml_sdtm_class_parseFromJSON(cJSON *xml_sdtm_classJSON);

cJSON *xml_sdtm_class_convertToJSON(xml_sdtm_class_t *xml_sdtm_class);

#endif /* _xml_sdtm_class_H_ */

