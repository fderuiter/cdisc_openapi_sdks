/*
 * xml_sendig_classes.h
 *
 * 
 */

#ifndef _xml_sendig_classes_H_
#define _xml_sendig_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sendig_classes_t xml_sendig_classes_t;

#include "sendig_classes.h"



typedef struct xml_sendig_classes_t {
    struct sendig_classes_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sendig_classes_t;

__attribute__((deprecated)) xml_sendig_classes_t *xml_sendig_classes_create(
    sendig_classes_t *self
);

void xml_sendig_classes_free(xml_sendig_classes_t *xml_sendig_classes);

xml_sendig_classes_t *xml_sendig_classes_parseFromJSON(cJSON *xml_sendig_classesJSON);

cJSON *xml_sendig_classes_convertToJSON(xml_sendig_classes_t *xml_sendig_classes);

#endif /* _xml_sendig_classes_H_ */

