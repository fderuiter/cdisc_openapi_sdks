/*
 * xml_adam_datastructure.h
 *
 * 
 */

#ifndef _xml_adam_datastructure_H_
#define _xml_adam_datastructure_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_adam_datastructure_t xml_adam_datastructure_t;

#include "adam_datastructure.h"



typedef struct xml_adam_datastructure_t {
    struct adam_datastructure_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_adam_datastructure_t;

__attribute__((deprecated)) xml_adam_datastructure_t *xml_adam_datastructure_create(
    adam_datastructure_t *self
);

void xml_adam_datastructure_free(xml_adam_datastructure_t *xml_adam_datastructure);

xml_adam_datastructure_t *xml_adam_datastructure_parseFromJSON(cJSON *xml_adam_datastructureJSON);

cJSON *xml_adam_datastructure_convertToJSON(xml_adam_datastructure_t *xml_adam_datastructure);

#endif /* _xml_adam_datastructure_H_ */

