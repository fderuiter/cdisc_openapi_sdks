/*
 * cdashig_class.h
 *
 * 
 */

#ifndef _cdashig_class_H_
#define _cdashig_class_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_class_t cdashig_class_t;

#include "cdashig_class_links.h"
#include "cdashig_domain.h"
#include "cdashig_scenario.h"



typedef struct cdashig_class_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct cdashig_class_links_t *_links; //model
    list_t *domains; //nonprimitive container
    list_t *scenarios; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_class_t;

__attribute__((deprecated)) cdashig_class_t *cdashig_class_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdashig_class_links_t *_links,
    list_t *domains,
    list_t *scenarios
);

void cdashig_class_free(cdashig_class_t *cdashig_class);

cdashig_class_t *cdashig_class_parseFromJSON(cJSON *cdashig_classJSON);

cJSON *cdashig_class_convertToJSON(cdashig_class_t *cdashig_class);

#endif /* _cdashig_class_H_ */

