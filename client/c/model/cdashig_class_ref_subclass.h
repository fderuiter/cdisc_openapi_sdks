/*
 * cdashig_class_ref_subclass.h
 *
 * 
 */

#ifndef _cdashig_class_ref_subclass_H_
#define _cdashig_class_ref_subclass_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_class_ref_subclass_t cdashig_class_ref_subclass_t;




typedef struct cdashig_class_ref_subclass_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_class_ref_subclass_t;

__attribute__((deprecated)) cdashig_class_ref_subclass_t *cdashig_class_ref_subclass_create(
    char *href,
    char *title,
    char *type
);

void cdashig_class_ref_subclass_free(cdashig_class_ref_subclass_t *cdashig_class_ref_subclass);

cdashig_class_ref_subclass_t *cdashig_class_ref_subclass_parseFromJSON(cJSON *cdashig_class_ref_subclassJSON);

cJSON *cdashig_class_ref_subclass_convertToJSON(cdashig_class_ref_subclass_t *cdashig_class_ref_subclass);

#endif /* _cdashig_class_ref_subclass_H_ */

