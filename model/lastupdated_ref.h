/*
 * lastupdated_ref.h
 *
 * 
 */

#ifndef _lastupdated_ref_H_
#define _lastupdated_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct lastupdated_ref_t lastupdated_ref_t;




typedef struct lastupdated_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} lastupdated_ref_t;

__attribute__((deprecated)) lastupdated_ref_t *lastupdated_ref_create(
    char *href,
    char *title,
    char *type
);

void lastupdated_ref_free(lastupdated_ref_t *lastupdated_ref);

lastupdated_ref_t *lastupdated_ref_parseFromJSON(cJSON *lastupdated_refJSON);

cJSON *lastupdated_ref_convertToJSON(lastupdated_ref_t *lastupdated_ref);

#endif /* _lastupdated_ref_H_ */

