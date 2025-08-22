/*
 * sdtm_class_ref_subclass.h
 *
 * 
 */

#ifndef _sdtm_class_ref_subclass_H_
#define _sdtm_class_ref_subclass_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_ref_subclass_t sdtm_class_ref_subclass_t;




typedef struct sdtm_class_ref_subclass_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_ref_subclass_t;

__attribute__((deprecated)) sdtm_class_ref_subclass_t *sdtm_class_ref_subclass_create(
    char *href,
    char *title,
    char *type
);

void sdtm_class_ref_subclass_free(sdtm_class_ref_subclass_t *sdtm_class_ref_subclass);

sdtm_class_ref_subclass_t *sdtm_class_ref_subclass_parseFromJSON(cJSON *sdtm_class_ref_subclassJSON);

cJSON *sdtm_class_ref_subclass_convertToJSON(sdtm_class_ref_subclass_t *sdtm_class_ref_subclass);

#endif /* _sdtm_class_ref_subclass_H_ */

