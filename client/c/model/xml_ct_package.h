/*
 * xml_ct_package.h
 *
 * 
 */

#ifndef _xml_ct_package_H_
#define _xml_ct_package_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_ct_package_t xml_ct_package_t;

#include "ct_package.h"



typedef struct xml_ct_package_t {
    struct ct_package_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_ct_package_t;

__attribute__((deprecated)) xml_ct_package_t *xml_ct_package_create(
    ct_package_t *self
);

void xml_ct_package_free(xml_ct_package_t *xml_ct_package);

xml_ct_package_t *xml_ct_package_parseFromJSON(cJSON *xml_ct_packageJSON);

cJSON *xml_ct_package_convertToJSON(xml_ct_package_t *xml_ct_package);

#endif /* _xml_ct_package_H_ */

