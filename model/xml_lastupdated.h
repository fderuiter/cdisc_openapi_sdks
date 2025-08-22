/*
 * xml_lastupdated.h
 *
 * 
 */

#ifndef _xml_lastupdated_H_
#define _xml_lastupdated_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_lastupdated_t xml_lastupdated_t;

#include "lastupdated.h"



typedef struct xml_lastupdated_t {
    struct lastupdated_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_lastupdated_t;

__attribute__((deprecated)) xml_lastupdated_t *xml_lastupdated_create(
    lastupdated_t *self
);

void xml_lastupdated_free(xml_lastupdated_t *xml_lastupdated);

xml_lastupdated_t *xml_lastupdated_parseFromJSON(cJSON *xml_lastupdatedJSON);

cJSON *xml_lastupdated_convertToJSON(xml_lastupdated_t *xml_lastupdated);

#endif /* _xml_lastupdated_H_ */

