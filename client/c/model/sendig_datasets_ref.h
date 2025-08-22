/*
 * sendig_datasets_ref.h
 *
 * 
 */

#ifndef _sendig_datasets_ref_H_
#define _sendig_datasets_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_datasets_ref_t sendig_datasets_ref_t;




typedef struct sendig_datasets_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_datasets_ref_t;

__attribute__((deprecated)) sendig_datasets_ref_t *sendig_datasets_ref_create(
    char *href,
    char *title,
    char *type
);

void sendig_datasets_ref_free(sendig_datasets_ref_t *sendig_datasets_ref);

sendig_datasets_ref_t *sendig_datasets_ref_parseFromJSON(cJSON *sendig_datasets_refJSON);

cJSON *sendig_datasets_ref_convertToJSON(sendig_datasets_ref_t *sendig_datasets_ref);

#endif /* _sendig_datasets_ref_H_ */

