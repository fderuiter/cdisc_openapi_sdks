/*
 * xml_root_ct_term.h
 *
 * 
 */

#ifndef _xml_root_ct_term_H_
#define _xml_root_ct_term_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_root_ct_term_t xml_root_ct_term_t;

#include "root_ct_term.h"



typedef struct xml_root_ct_term_t {
    struct root_ct_term_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_root_ct_term_t;

__attribute__((deprecated)) xml_root_ct_term_t *xml_root_ct_term_create(
    root_ct_term_t *self
);

void xml_root_ct_term_free(xml_root_ct_term_t *xml_root_ct_term);

xml_root_ct_term_t *xml_root_ct_term_parseFromJSON(cJSON *xml_root_ct_termJSON);

cJSON *xml_root_ct_term_convertToJSON(xml_root_ct_term_t *xml_root_ct_term);

#endif /* _xml_root_ct_term_H_ */

