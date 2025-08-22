/*
 * cdash_class.h
 *
 * 
 */

#ifndef _cdash_class_H_
#define _cdash_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_t cdash_class_t;

#include "cdash_class_field.h"
#include "cdash_class_links.h"



typedef struct cdash_class_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct cdash_class_links_t *_links; //model
    list_t *cdash_model_fields; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_t;

__attribute__((deprecated)) cdash_class_t *cdash_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdash_class_links_t *_links,
    list_t *cdash_model_fields
);

void cdash_class_free(cdash_class_t *cdash_class);

cdash_class_t *cdash_class_parseFromJSON(cJSON *cdash_classJSON);

cJSON *cdash_class_convertToJSON(cdash_class_t *cdash_class);

#endif /* _cdash_class_H_ */

