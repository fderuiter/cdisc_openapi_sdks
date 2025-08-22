/*
 * root_ct_term.h
 *
 * 
 */

#ifndef _root_ct_term_H_
#define _root_ct_term_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_ct_term_t root_ct_term_t;

#include "root_ct_term_links.h"



typedef struct root_ct_term_t {
    struct root_ct_term_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} root_ct_term_t;

__attribute__((deprecated)) root_ct_term_t *root_ct_term_create(
    root_ct_term_links_t *_links
);

void root_ct_term_free(root_ct_term_t *root_ct_term);

root_ct_term_t *root_ct_term_parseFromJSON(cJSON *root_ct_termJSON);

cJSON *root_ct_term_convertToJSON(root_ct_term_t *root_ct_term);

#endif /* _root_ct_term_H_ */

