/*
 * xml_ct_codelist.h
 *
 * 
 */

#ifndef _xml_ct_codelist_H_
#define _xml_ct_codelist_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_ct_codelist_t xml_ct_codelist_t;

#include "ct_codelist.h"



typedef struct xml_ct_codelist_t {
    struct ct_codelist_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_ct_codelist_t;

__attribute__((deprecated)) xml_ct_codelist_t *xml_ct_codelist_create(
    ct_codelist_t *self
);

void xml_ct_codelist_free(xml_ct_codelist_t *xml_ct_codelist);

xml_ct_codelist_t *xml_ct_codelist_parseFromJSON(cJSON *xml_ct_codelistJSON);

cJSON *xml_ct_codelist_convertToJSON(xml_ct_codelist_t *xml_ct_codelist);

#endif /* _xml_ct_codelist_H_ */

