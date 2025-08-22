/*
 * sendig_classes_links.h
 *
 * 
 */

#ifndef _sendig_classes_links_H_
#define _sendig_classes_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_classes_links_t sendig_classes_links_t;

#include "sendig_class_ref_element.h"
#include "sendig_classes_ref.h"



typedef struct sendig_classes_links_t {
    struct sendig_classes_ref_t *self; //model
    struct sendig_classes_ref_t *prior_version; //model
    list_t *classes; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_classes_links_t;

__attribute__((deprecated)) sendig_classes_links_t *sendig_classes_links_create(
    sendig_classes_ref_t *self,
    sendig_classes_ref_t *prior_version,
    list_t *classes
);

void sendig_classes_links_free(sendig_classes_links_t *sendig_classes_links);

sendig_classes_links_t *sendig_classes_links_parseFromJSON(cJSON *sendig_classes_linksJSON);

cJSON *sendig_classes_links_convertToJSON(sendig_classes_links_t *sendig_classes_links);

#endif /* _sendig_classes_links_H_ */

