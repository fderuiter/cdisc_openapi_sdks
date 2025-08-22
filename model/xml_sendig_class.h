/*
 * xml_sendig_class.h
 *
 * 
 */

#ifndef _xml_sendig_class_H_
#define _xml_sendig_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_sendig_class_t xml_sendig_class_t;

#include "sendig_class.h"



typedef struct xml_sendig_class_t {
    struct sendig_class_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_sendig_class_t;

__attribute__((deprecated)) xml_sendig_class_t *xml_sendig_class_create(
    sendig_class_t *self
);

void xml_sendig_class_free(xml_sendig_class_t *xml_sendig_class);

xml_sendig_class_t *xml_sendig_class_parseFromJSON(cJSON *xml_sendig_classJSON);

cJSON *xml_sendig_class_convertToJSON(xml_sendig_class_t *xml_sendig_class);

#endif /* _xml_sendig_class_H_ */

