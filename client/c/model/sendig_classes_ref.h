/*
 * sendig_classes_ref.h
 *
 * 
 */

#ifndef _sendig_classes_ref_H_
#define _sendig_classes_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_classes_ref_t sendig_classes_ref_t;




typedef struct sendig_classes_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_classes_ref_t;

__attribute__((deprecated)) sendig_classes_ref_t *sendig_classes_ref_create(
    char *href,
    char *title,
    char *type
);

void sendig_classes_ref_free(sendig_classes_ref_t *sendig_classes_ref);

sendig_classes_ref_t *sendig_classes_ref_parseFromJSON(cJSON *sendig_classes_refJSON);

cJSON *sendig_classes_ref_convertToJSON(sendig_classes_ref_t *sendig_classes_ref);

#endif /* _sendig_classes_ref_H_ */

