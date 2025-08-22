/*
 * root_ct_term_links.h
 *
 * 
 */

#ifndef _root_ct_term_links_H_
#define _root_ct_term_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_ct_term_links_t root_ct_term_links_t;

#include "ct_term_ref_version.h"
#include "root_ct_term_ref.h"



typedef struct root_ct_term_links_t {
    struct root_ct_term_ref_t *self; //model
    list_t *versions; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} root_ct_term_links_t;

__attribute__((deprecated)) root_ct_term_links_t *root_ct_term_links_create(
    root_ct_term_ref_t *self,
    list_t *versions
);

void root_ct_term_links_free(root_ct_term_links_t *root_ct_term_links);

root_ct_term_links_t *root_ct_term_links_parseFromJSON(cJSON *root_ct_term_linksJSON);

cJSON *root_ct_term_links_convertToJSON(root_ct_term_links_t *root_ct_term_links);

#endif /* _root_ct_term_links_H_ */

