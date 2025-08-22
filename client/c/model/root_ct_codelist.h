/*
 * root_ct_codelist.h
 *
 * 
 */

#ifndef _root_ct_codelist_H_
#define _root_ct_codelist_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_ct_codelist_t root_ct_codelist_t;

#include "root_ct_codelist_links.h"



typedef struct root_ct_codelist_t {
    struct root_ct_codelist_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} root_ct_codelist_t;

__attribute__((deprecated)) root_ct_codelist_t *root_ct_codelist_create(
    root_ct_codelist_links_t *_links
);

void root_ct_codelist_free(root_ct_codelist_t *root_ct_codelist);

root_ct_codelist_t *root_ct_codelist_parseFromJSON(cJSON *root_ct_codelistJSON);

cJSON *root_ct_codelist_convertToJSON(root_ct_codelist_t *root_ct_codelist);

#endif /* _root_ct_codelist_H_ */

