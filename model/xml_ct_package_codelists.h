/*
 * xml_ct_package_codelists.h
 *
 * 
 */

#ifndef _xml_ct_package_codelists_H_
#define _xml_ct_package_codelists_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_ct_package_codelists_t xml_ct_package_codelists_t;

#include "ct_package_codelists.h"



typedef struct xml_ct_package_codelists_t {
    struct ct_package_codelists_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_ct_package_codelists_t;

__attribute__((deprecated)) xml_ct_package_codelists_t *xml_ct_package_codelists_create(
    ct_package_codelists_t *self
);

void xml_ct_package_codelists_free(xml_ct_package_codelists_t *xml_ct_package_codelists);

xml_ct_package_codelists_t *xml_ct_package_codelists_parseFromJSON(cJSON *xml_ct_package_codelistsJSON);

cJSON *xml_ct_package_codelists_convertToJSON(xml_ct_package_codelists_t *xml_ct_package_codelists);

#endif /* _xml_ct_package_codelists_H_ */

