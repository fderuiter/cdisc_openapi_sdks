/*
 * xml_sdtmig_classes.h
 *
 * 
 */

#ifndef _xml_sdtmig_classes_H_
#define _xml_sdtmig_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sdtmig_classes_t xml_sdtmig_classes_t;

#include "sdtmig_classes.h"



typedef struct xml_sdtmig_classes_t {
    struct sdtmig_classes_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sdtmig_classes_t;

__attribute__((deprecated)) xml_sdtmig_classes_t *xml_sdtmig_classes_create(
    sdtmig_classes_t *self
);

void xml_sdtmig_classes_free(xml_sdtmig_classes_t *xml_sdtmig_classes);

xml_sdtmig_classes_t *xml_sdtmig_classes_parseFromJSON(cJSON *xml_sdtmig_classesJSON);

cJSON *xml_sdtmig_classes_convertToJSON(xml_sdtmig_classes_t *xml_sdtmig_classes);

#endif /* _xml_sdtmig_classes_H_ */

