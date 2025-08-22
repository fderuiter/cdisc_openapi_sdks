/*
 * xml_ct_packages.h
 *
 * 
 */

#ifndef _xml_ct_packages_H_
#define _xml_ct_packages_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_ct_packages_t xml_ct_packages_t;

#include "ct_packages.h"



typedef struct xml_ct_packages_t {
    struct ct_packages_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_ct_packages_t;

__attribute__((deprecated)) xml_ct_packages_t *xml_ct_packages_create(
    ct_packages_t *self
);

void xml_ct_packages_free(xml_ct_packages_t *xml_ct_packages);

xml_ct_packages_t *xml_ct_packages_parseFromJSON(cJSON *xml_ct_packagesJSON);

cJSON *xml_ct_packages_convertToJSON(xml_ct_packages_t *xml_ct_packages);

#endif /* _xml_ct_packages_H_ */

