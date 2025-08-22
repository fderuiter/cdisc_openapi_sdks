/*
 * xml_about.h
 *
 * 
 */

#ifndef _xml_about_H_
#define _xml_about_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_about_t xml_about_t;

#include "about.h"



typedef struct xml_about_t {
    struct about_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_about_t;

__attribute__((deprecated)) xml_about_t *xml_about_create(
    about_t *self
);

void xml_about_free(xml_about_t *xml_about);

xml_about_t *xml_about_parseFromJSON(cJSON *xml_aboutJSON);

cJSON *xml_about_convertToJSON(xml_about_t *xml_about);

#endif /* _xml_about_H_ */

