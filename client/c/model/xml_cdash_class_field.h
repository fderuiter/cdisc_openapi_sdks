/*
 * xml_cdash_class_field.h
 *
 * 
 */

#ifndef _xml_cdash_class_field_H_
#define _xml_cdash_class_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdash_class_field_t xml_cdash_class_field_t;

#include "cdash_class_field.h"



typedef struct xml_cdash_class_field_t {
    struct cdash_class_field_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdash_class_field_t;

__attribute__((deprecated)) xml_cdash_class_field_t *xml_cdash_class_field_create(
    cdash_class_field_t *self
);

void xml_cdash_class_field_free(xml_cdash_class_field_t *xml_cdash_class_field);

xml_cdash_class_field_t *xml_cdash_class_field_parseFromJSON(cJSON *xml_cdash_class_fieldJSON);

cJSON *xml_cdash_class_field_convertToJSON(xml_cdash_class_field_t *xml_cdash_class_field);

#endif /* _xml_cdash_class_field_H_ */

