/*
 * ct_term_links.h
 *
 * 
 */

#ifndef _ct_term_links_H_
#define _ct_term_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ct_term_links_t ct_term_links_t;

#include "ct_codelist_ref.h"
#include "ct_package_ref.h"
#include "ct_term_ref.h"
#include "root_ct_term_ref.h"



typedef struct ct_term_links_t {
    struct ct_term_ref_t *self; //model
    struct ct_package_ref_t *parent_package; //model
    struct ct_codelist_ref_t *parent_codelist; //model
    struct root_ct_term_ref_t *root_item; //model
    struct ct_term_ref_t *prior_version; //model

    int _library_owned; // Is the library responsible for freeing this object?
} ct_term_links_t;

__attribute__((deprecated)) ct_term_links_t *ct_term_links_create(
    ct_term_ref_t *self,
    ct_package_ref_t *parent_package,
    ct_codelist_ref_t *parent_codelist,
    root_ct_term_ref_t *root_item,
    ct_term_ref_t *prior_version
);

void ct_term_links_free(ct_term_links_t *ct_term_links);

ct_term_links_t *ct_term_links_parseFromJSON(cJSON *ct_term_linksJSON);

cJSON *ct_term_links_convertToJSON(ct_term_links_t *ct_term_links);

#endif /* _ct_term_links_H_ */

