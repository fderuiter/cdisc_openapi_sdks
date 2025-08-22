/*
 * xml_root_ct_codelist.h
 *
 * 
 */

#ifndef _xml_root_ct_codelist_H_
#define _xml_root_ct_codelist_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_root_ct_codelist_t xml_root_ct_codelist_t;

#include "root_ct_codelist.h"



typedef struct xml_root_ct_codelist_t {
    struct root_ct_codelist_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_root_ct_codelist_t;

__attribute__((deprecated)) xml_root_ct_codelist_t *xml_root_ct_codelist_create(
    root_ct_codelist_t *self
);

void xml_root_ct_codelist_free(xml_root_ct_codelist_t *xml_root_ct_codelist);

xml_root_ct_codelist_t *xml_root_ct_codelist_parseFromJSON(cJSON *xml_root_ct_codelistJSON);

cJSON *xml_root_ct_codelist_convertToJSON(xml_root_ct_codelist_t *xml_root_ct_codelist);

#endif /* _xml_root_ct_codelist_H_ */

