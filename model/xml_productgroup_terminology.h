/*
 * xml_productgroup_terminology.h
 *
 * 
 */

#ifndef _xml_productgroup_terminology_H_
#define _xml_productgroup_terminology_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_productgroup_terminology_t xml_productgroup_terminology_t;

#include "productgroup_terminology.h"



typedef struct xml_productgroup_terminology_t {
    struct productgroup_terminology_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_productgroup_terminology_t;

__attribute__((deprecated)) xml_productgroup_terminology_t *xml_productgroup_terminology_create(
    productgroup_terminology_t *self
);

void xml_productgroup_terminology_free(xml_productgroup_terminology_t *xml_productgroup_terminology);

xml_productgroup_terminology_t *xml_productgroup_terminology_parseFromJSON(cJSON *xml_productgroup_terminologyJSON);

cJSON *xml_productgroup_terminology_convertToJSON(xml_productgroup_terminology_t *xml_productgroup_terminology);

#endif /* _xml_productgroup_terminology_H_ */

