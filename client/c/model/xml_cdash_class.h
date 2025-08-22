/*
 * xml_cdash_class.h
 *
 * 
 */

#ifndef _xml_cdash_class_H_
#define _xml_cdash_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdash_class_t xml_cdash_class_t;

#include "cdash_class.h"



typedef struct xml_cdash_class_t {
    struct cdash_class_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdash_class_t;

__attribute__((deprecated)) xml_cdash_class_t *xml_cdash_class_create(
    cdash_class_t *self
);

void xml_cdash_class_free(xml_cdash_class_t *xml_cdash_class);

xml_cdash_class_t *xml_cdash_class_parseFromJSON(cJSON *xml_cdash_classJSON);

cJSON *xml_cdash_class_convertToJSON(xml_cdash_class_t *xml_cdash_class);

#endif /* _xml_cdash_class_H_ */

