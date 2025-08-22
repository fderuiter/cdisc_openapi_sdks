/*
 * xml_adam_varset.h
 *
 * 
 */

#ifndef _xml_adam_varset_H_
#define _xml_adam_varset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_varset_t xml_adam_varset_t;

#include "adam_varset.h"



typedef struct xml_adam_varset_t {
    struct adam_varset_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_varset_t;

__attribute__((deprecated)) xml_adam_varset_t *xml_adam_varset_create(
    adam_varset_t *self
);

void xml_adam_varset_free(xml_adam_varset_t *xml_adam_varset);

xml_adam_varset_t *xml_adam_varset_parseFromJSON(cJSON *xml_adam_varsetJSON);

cJSON *xml_adam_varset_convertToJSON(xml_adam_varset_t *xml_adam_varset);

#endif /* _xml_adam_varset_H_ */

