/*
 * adam_datastructure_variables.h
 *
 * 
 */

#ifndef _adam_datastructure_variables_H_
#define _adam_datastructure_variables_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct adam_datastructure_variables_t adam_datastructure_variables_t;

#include "adam_datastructure_variables_links.h"



typedef struct adam_datastructure_variables_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    char *_class; // string
    struct adam_datastructure_variables_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} adam_datastructure_variables_t;

__attribute__((deprecated)) adam_datastructure_variables_t *adam_datastructure_variables_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    char *_class,
    adam_datastructure_variables_links_t *_links
);

void adam_datastructure_variables_free(adam_datastructure_variables_t *adam_datastructure_variables);

adam_datastructure_variables_t *adam_datastructure_variables_parseFromJSON(cJSON *adam_datastructure_variablesJSON);

cJSON *adam_datastructure_variables_convertToJSON(adam_datastructure_variables_t *adam_datastructure_variables);

#endif /* _adam_datastructure_variables_H_ */

