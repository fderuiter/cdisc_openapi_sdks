/*
 * about_ref.h
 *
 * 
 */

#ifndef _about_ref_H_
#define _about_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct about_ref_t about_ref_t;




typedef struct about_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} about_ref_t;

__attribute__((deprecated)) about_ref_t *about_ref_create(
    char *href,
    char *title,
    char *type
);

void about_ref_free(about_ref_t *about_ref);

about_ref_t *about_ref_parseFromJSON(cJSON *about_refJSON);

cJSON *about_ref_convertToJSON(about_ref_t *about_ref);

#endif /* _about_ref_H_ */

