/*
 * adam_datastructure.h
 *
 * 
 */

#ifndef _adam_datastructure_H_
#define _adam_datastructure_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_datastructure_t adam_datastructure_t;

#include "adam_datastructure_links.h"
#include "adam_varset.h"



typedef struct adam_datastructure_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *_class; // string
    struct adam_datastructure_links_t *_links; //model
    list_t *analysis_variable_sets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} adam_datastructure_t;

__attribute__((deprecated)) adam_datastructure_t *adam_datastructure_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_links_t *_links,
    list_t *analysis_variable_sets
);

void adam_datastructure_free(adam_datastructure_t *adam_datastructure);

adam_datastructure_t *adam_datastructure_parseFromJSON(cJSON *adam_datastructureJSON);

cJSON *adam_datastructure_convertToJSON(adam_datastructure_t *adam_datastructure);

#endif /* _adam_datastructure_H_ */

