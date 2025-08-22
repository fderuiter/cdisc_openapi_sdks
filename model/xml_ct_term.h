/*
 * xml_ct_term.h
 *
 * 
 */

#ifndef _xml_ct_term_H_
#define _xml_ct_term_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_ct_term_t xml_ct_term_t;

#include "ct_term.h"



typedef struct xml_ct_term_t {
    struct ct_term_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_ct_term_t;

__attribute__((deprecated)) xml_ct_term_t *xml_ct_term_create(
    ct_term_t *self
);

void xml_ct_term_free(xml_ct_term_t *xml_ct_term);

xml_ct_term_t *xml_ct_term_parseFromJSON(cJSON *xml_ct_termJSON);

cJSON *xml_ct_term_convertToJSON(xml_ct_term_t *xml_ct_term);

#endif /* _xml_ct_term_H_ */

