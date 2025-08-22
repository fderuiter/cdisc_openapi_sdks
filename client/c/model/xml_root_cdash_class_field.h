/*
 * xml_root_cdash_class_field.h
 *
 * 
 */

#ifndef _xml_root_cdash_class_field_H_
#define _xml_root_cdash_class_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_root_cdash_class_field_t xml_root_cdash_class_field_t;

#include "root_cdash_class_field.h"



typedef struct xml_root_cdash_class_field_t {
    struct root_cdash_class_field_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_root_cdash_class_field_t;

__attribute__((deprecated)) xml_root_cdash_class_field_t *xml_root_cdash_class_field_create(
    root_cdash_class_field_t *self
);

void xml_root_cdash_class_field_free(xml_root_cdash_class_field_t *xml_root_cdash_class_field);

xml_root_cdash_class_field_t *xml_root_cdash_class_field_parseFromJSON(cJSON *xml_root_cdash_class_fieldJSON);

cJSON *xml_root_cdash_class_field_convertToJSON(xml_root_cdash_class_field_t *xml_root_cdash_class_field);

#endif /* _xml_root_cdash_class_field_H_ */

