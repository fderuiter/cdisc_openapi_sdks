/*
 * about_links.h
 *
 * 
 */

#ifndef _about_links_H_
#define _about_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct about_links_t about_links_t;

#include "about_ref.h"
#include "lastupdated_ref.h"



typedef struct about_links_t {
    struct about_ref_t *self; //model
    struct lastupdated_ref_t *lastupdated; //model

    int _library_owned; // Is the library responsible for freeing this object?
} about_links_t;

__attribute__((deprecated)) about_links_t *about_links_create(
    about_ref_t *self,
    lastupdated_ref_t *lastupdated
);

void about_links_free(about_links_t *about_links);

about_links_t *about_links_parseFromJSON(cJSON *about_linksJSON);

cJSON *about_links_convertToJSON(about_links_t *about_links);

#endif /* _about_links_H_ */

