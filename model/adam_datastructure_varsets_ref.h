/*
 * adam_datastructure_varsets_ref.h
 *
 * 
 */

#ifndef _adam_datastructure_varsets_ref_H_
#define _adam_datastructure_varsets_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_datastructure_varsets_ref_t adam_datastructure_varsets_ref_t;




typedef struct adam_datastructure_varsets_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} adam_datastructure_varsets_ref_t;

__attribute__((deprecated)) adam_datastructure_varsets_ref_t *adam_datastructure_varsets_ref_create(
    char *href,
    char *title,
    char *type
);

void adam_datastructure_varsets_ref_free(adam_datastructure_varsets_ref_t *adam_datastructure_varsets_ref);

adam_datastructure_varsets_ref_t *adam_datastructure_varsets_ref_parseFromJSON(cJSON *adam_datastructure_varsets_refJSON);

cJSON *adam_datastructure_varsets_ref_convertToJSON(adam_datastructure_varsets_ref_t *adam_datastructure_varsets_ref);

#endif /* _adam_datastructure_varsets_ref_H_ */

