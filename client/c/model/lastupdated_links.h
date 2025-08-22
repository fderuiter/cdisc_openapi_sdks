/*
 * lastupdated_links.h
 *
 * 
 */

#ifndef _lastupdated_links_H_
#define _lastupdated_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct lastupdated_links_t lastupdated_links_t;

#include "lastupdated_ref.h"



typedef struct lastupdated_links_t {
    struct lastupdated_ref_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} lastupdated_links_t;

__attribute__((deprecated)) lastupdated_links_t *lastupdated_links_create(
    lastupdated_ref_t *self
);

void lastupdated_links_free(lastupdated_links_t *lastupdated_links);

lastupdated_links_t *lastupdated_links_parseFromJSON(cJSON *lastupdated_linksJSON);

cJSON *lastupdated_links_convertToJSON(lastupdated_links_t *lastupdated_links);

#endif /* _lastupdated_links_H_ */

