/*
 * sdtmig_class_ref_subclass.h
 *
 * 
 */

#ifndef _sdtmig_class_ref_subclass_H_
#define _sdtmig_class_ref_subclass_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_class_ref_subclass_t sdtmig_class_ref_subclass_t;




typedef struct sdtmig_class_ref_subclass_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_class_ref_subclass_t;

__attribute__((deprecated)) sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_create(
    char *href,
    char *title,
    char *type
);

void sdtmig_class_ref_subclass_free(sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass);

sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass_parseFromJSON(cJSON *sdtmig_class_ref_subclassJSON);

cJSON *sdtmig_class_ref_subclass_convertToJSON(sdtmig_class_ref_subclass_t *sdtmig_class_ref_subclass);

#endif /* _sdtmig_class_ref_subclass_H_ */

