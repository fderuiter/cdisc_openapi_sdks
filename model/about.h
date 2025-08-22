/*
 * about.h
 *
 * 
 */

#ifndef _about_H_
#define _about_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct about_t about_t;

#include "about_links.h"



typedef struct about_t {
    struct about_links_t *_links; //model
    char *release_notes; // string
    char *api_documentation; // string

    int _library_owned; // Is the library responsible for freeing this object?
} about_t;

__attribute__((deprecated)) about_t *about_create(
    about_links_t *_links,
    char *release_notes,
    char *api_documentation
);

void about_free(about_t *about);

about_t *about_parseFromJSON(cJSON *aboutJSON);

cJSON *about_convertToJSON(about_t *about);

#endif /* _about_H_ */

