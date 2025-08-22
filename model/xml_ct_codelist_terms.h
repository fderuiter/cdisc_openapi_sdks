/*
 * xml_ct_codelist_terms.h
 *
 * 
 */

#ifndef _xml_ct_codelist_terms_H_
#define _xml_ct_codelist_terms_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_ct_codelist_terms_t xml_ct_codelist_terms_t;

#include "ct_codelist_terms.h"



typedef struct xml_ct_codelist_terms_t {
    struct ct_codelist_terms_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_ct_codelist_terms_t;

__attribute__((deprecated)) xml_ct_codelist_terms_t *xml_ct_codelist_terms_create(
    ct_codelist_terms_t *self
);

void xml_ct_codelist_terms_free(xml_ct_codelist_terms_t *xml_ct_codelist_terms);

xml_ct_codelist_terms_t *xml_ct_codelist_terms_parseFromJSON(cJSON *xml_ct_codelist_termsJSON);

cJSON *xml_ct_codelist_terms_convertToJSON(xml_ct_codelist_terms_t *xml_ct_codelist_terms);

#endif /* _xml_ct_codelist_terms_H_ */

