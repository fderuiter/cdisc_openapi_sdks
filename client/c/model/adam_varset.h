/*
 * adam_varset.h
 *
 * 
 */

#ifndef _adam_varset_H_
#define _adam_varset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_varset_t adam_varset_t;

#include "adam_variable.h"
#include "adam_varset_links.h"



typedef struct adam_varset_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct adam_varset_links_t *_links; //model
    list_t *analysis_variables; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} adam_varset_t;

__attribute__((deprecated)) adam_varset_t *adam_varset_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    adam_varset_links_t *_links,
    list_t *analysis_variables
);

void adam_varset_free(adam_varset_t *adam_varset);

adam_varset_t *adam_varset_parseFromJSON(cJSON *adam_varsetJSON);

cJSON *adam_varset_convertToJSON(adam_varset_t *adam_varset);

#endif /* _adam_varset_H_ */

