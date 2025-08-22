/*
 * ct_codelist_links.h
 *
 * 
 */

#ifndef _ct_codelist_links_H_
#define _ct_codelist_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_codelist_links_t ct_codelist_links_t;

#include "ct_codelist_ref.h"
#include "ct_package_ref.h"
#include "root_ct_codelist_ref.h"



typedef struct ct_codelist_links_t {
    struct ct_codelist_ref_t *self; //model
    struct ct_package_ref_t *parent_package; //model
    struct root_ct_codelist_ref_t *root_item; //model
    struct ct_codelist_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_codelist_links_t;

__attribute__((deprecated)) ct_codelist_links_t *ct_codelist_links_create(
    ct_codelist_ref_t *self,
    ct_package_ref_t *parent_package,
    root_ct_codelist_ref_t *root_item,
    ct_codelist_ref_t *prior_version
);

void ct_codelist_links_free(ct_codelist_links_t *ct_codelist_links);

ct_codelist_links_t *ct_codelist_links_parseFromJSON(cJSON *ct_codelist_linksJSON);

cJSON *ct_codelist_links_convertToJSON(ct_codelist_links_t *ct_codelist_links);

#endif /* _ct_codelist_links_H_ */

