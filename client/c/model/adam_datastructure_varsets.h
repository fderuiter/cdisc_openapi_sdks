/*
 * adam_datastructure_varsets.h
 *
 * 
 */

#ifndef _adam_datastructure_varsets_H_
#define _adam_datastructure_varsets_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_datastructure_varsets_t adam_datastructure_varsets_t;

#include "adam_datastructure_varsets_links.h"



typedef struct adam_datastructure_varsets_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *_class; // string
    struct adam_datastructure_varsets_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_datastructure_varsets_t;

__attribute__((deprecated)) adam_datastructure_varsets_t *adam_datastructure_varsets_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_varsets_links_t *_links
);

void adam_datastructure_varsets_free(adam_datastructure_varsets_t *adam_datastructure_varsets);

adam_datastructure_varsets_t *adam_datastructure_varsets_parseFromJSON(cJSON *adam_datastructure_varsetsJSON);

cJSON *adam_datastructure_varsets_convertToJSON(adam_datastructure_varsets_t *adam_datastructure_varsets);

#endif /* _adam_datastructure_varsets_H_ */

