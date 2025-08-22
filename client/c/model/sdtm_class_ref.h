/*
 * sdtm_class_ref.h
 *
 * 
 */

#ifndef _sdtm_class_ref_H_
#define _sdtm_class_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_class_ref_t sdtm_class_ref_t;




typedef struct sdtm_class_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_class_ref_t;

__attribute__((deprecated)) sdtm_class_ref_t *sdtm_class_ref_create(
    char *href,
    char *title,
    char *type
);

void sdtm_class_ref_free(sdtm_class_ref_t *sdtm_class_ref);

sdtm_class_ref_t *sdtm_class_ref_parseFromJSON(cJSON *sdtm_class_refJSON);

cJSON *sdtm_class_ref_convertToJSON(sdtm_class_ref_t *sdtm_class_ref);

#endif /* _sdtm_class_ref_H_ */

