/*
 * xml_sdtm_classes.h
 *
 * 
 */

#ifndef _xml_sdtm_classes_H_
#define _xml_sdtm_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtm_classes_t xml_sdtm_classes_t;

#include "sdtm_classes.h"



typedef struct xml_sdtm_classes_t {
    struct sdtm_classes_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtm_classes_t;

__attribute__((deprecated)) xml_sdtm_classes_t *xml_sdtm_classes_create(
    sdtm_classes_t *self
);

void xml_sdtm_classes_free(xml_sdtm_classes_t *xml_sdtm_classes);

xml_sdtm_classes_t *xml_sdtm_classes_parseFromJSON(cJSON *xml_sdtm_classesJSON);

cJSON *xml_sdtm_classes_convertToJSON(xml_sdtm_classes_t *xml_sdtm_classes);

#endif /* _xml_sdtm_classes_H_ */

