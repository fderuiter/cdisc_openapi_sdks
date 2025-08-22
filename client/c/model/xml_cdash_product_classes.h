/*
 * xml_cdash_product_classes.h
 *
 * 
 */

#ifndef _xml_cdash_product_classes_H_
#define _xml_cdash_product_classes_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdash_product_classes_t xml_cdash_product_classes_t;

#include "cdash_product_classes.h"



typedef struct xml_cdash_product_classes_t {
    struct cdash_product_classes_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdash_product_classes_t;

__attribute__((deprecated)) xml_cdash_product_classes_t *xml_cdash_product_classes_create(
    cdash_product_classes_t *self
);

void xml_cdash_product_classes_free(xml_cdash_product_classes_t *xml_cdash_product_classes);

xml_cdash_product_classes_t *xml_cdash_product_classes_parseFromJSON(cJSON *xml_cdash_product_classesJSON);

cJSON *xml_cdash_product_classes_convertToJSON(xml_cdash_product_classes_t *xml_cdash_product_classes);

#endif /* _xml_cdash_product_classes_H_ */

