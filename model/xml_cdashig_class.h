/*
 * xml_cdashig_class.h
 *
 * 
 */

#ifndef _xml_cdashig_class_H_
#define _xml_cdashig_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_class_t xml_cdashig_class_t;

#include "cdashig_class.h"



typedef struct xml_cdashig_class_t {
    struct cdashig_class_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_class_t;

__attribute__((deprecated)) xml_cdashig_class_t *xml_cdashig_class_create(
    cdashig_class_t *self
);

void xml_cdashig_class_free(xml_cdashig_class_t *xml_cdashig_class);

xml_cdashig_class_t *xml_cdashig_class_parseFromJSON(cJSON *xml_cdashig_classJSON);

cJSON *xml_cdashig_class_convertToJSON(xml_cdashig_class_t *xml_cdashig_class);

#endif /* _xml_cdashig_class_H_ */

