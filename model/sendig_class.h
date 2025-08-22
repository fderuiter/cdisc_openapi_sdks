/*
 * sendig_class.h
 *
 * 
 */

#ifndef _sendig_class_H_
#define _sendig_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_class_t sendig_class_t;

#include "sendig_class_links.h"
#include "sendig_dataset.h"



typedef struct sendig_class_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct sendig_class_links_t *_links; //model
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_class_t;

__attribute__((deprecated)) sendig_class_t *sendig_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    sendig_class_links_t *_links,
    list_t *datasets
);

void sendig_class_free(sendig_class_t *sendig_class);

sendig_class_t *sendig_class_parseFromJSON(cJSON *sendig_classJSON);

cJSON *sendig_class_convertToJSON(sendig_class_t *sendig_class);

#endif /* _sendig_class_H_ */

