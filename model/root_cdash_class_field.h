/*
 * root_cdash_class_field.h
 *
 * 
 */

#ifndef _root_cdash_class_field_H_
#define _root_cdash_class_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_cdash_class_field_t root_cdash_class_field_t;

#include "root_cdash_class_field_links.h"



typedef struct root_cdash_class_field_t {
    struct root_cdash_class_field_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} root_cdash_class_field_t;

__attribute__((deprecated)) root_cdash_class_field_t *root_cdash_class_field_create(
    root_cdash_class_field_links_t *_links
);

void root_cdash_class_field_free(root_cdash_class_field_t *root_cdash_class_field);

root_cdash_class_field_t *root_cdash_class_field_parseFromJSON(cJSON *root_cdash_class_fieldJSON);

cJSON *root_cdash_class_field_convertToJSON(root_cdash_class_field_t *root_cdash_class_field);

#endif /* _root_cdash_class_field_H_ */

