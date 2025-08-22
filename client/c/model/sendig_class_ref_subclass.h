/*
 * sendig_class_ref_subclass.h
 *
 * 
 */

#ifndef _sendig_class_ref_subclass_H_
#define _sendig_class_ref_subclass_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_class_ref_subclass_t sendig_class_ref_subclass_t;




typedef struct sendig_class_ref_subclass_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_class_ref_subclass_t;

__attribute__((deprecated)) sendig_class_ref_subclass_t *sendig_class_ref_subclass_create(
    char *href,
    char *title,
    char *type
);

void sendig_class_ref_subclass_free(sendig_class_ref_subclass_t *sendig_class_ref_subclass);

sendig_class_ref_subclass_t *sendig_class_ref_subclass_parseFromJSON(cJSON *sendig_class_ref_subclassJSON);

cJSON *sendig_class_ref_subclass_convertToJSON(sendig_class_ref_subclass_t *sendig_class_ref_subclass);

#endif /* _sendig_class_ref_subclass_H_ */

