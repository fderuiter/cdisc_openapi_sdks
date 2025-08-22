/*
 * adam_datastructure_ref_element.h
 *
 * 
 */

#ifndef _adam_datastructure_ref_element_H_
#define _adam_datastructure_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_datastructure_ref_element_t adam_datastructure_ref_element_t;




typedef struct adam_datastructure_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} adam_datastructure_ref_element_t;

__attribute__((deprecated)) adam_datastructure_ref_element_t *adam_datastructure_ref_element_create(
    char *href,
    char *title,
    char *type
);

void adam_datastructure_ref_element_free(adam_datastructure_ref_element_t *adam_datastructure_ref_element);

adam_datastructure_ref_element_t *adam_datastructure_ref_element_parseFromJSON(cJSON *adam_datastructure_ref_elementJSON);

cJSON *adam_datastructure_ref_element_convertToJSON(adam_datastructure_ref_element_t *adam_datastructure_ref_element);

#endif /* _adam_datastructure_ref_element_H_ */

