/*
 * xml_adam_datastructure_varsets.h
 *
 * 
 */

#ifndef _xml_adam_datastructure_varsets_H_
#define _xml_adam_datastructure_varsets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_datastructure_varsets_t xml_adam_datastructure_varsets_t;

#include "adam_datastructure_varsets.h"



typedef struct xml_adam_datastructure_varsets_t {
    struct adam_datastructure_varsets_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_datastructure_varsets_t;

__attribute__((deprecated)) xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_create(
    adam_datastructure_varsets_t *self
);

void xml_adam_datastructure_varsets_free(xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets);

xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets_parseFromJSON(cJSON *xml_adam_datastructure_varsetsJSON);

cJSON *xml_adam_datastructure_varsets_convertToJSON(xml_adam_datastructure_varsets_t *xml_adam_datastructure_varsets);

#endif /* _xml_adam_datastructure_varsets_H_ */

