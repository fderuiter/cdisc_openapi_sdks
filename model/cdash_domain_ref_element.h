/*
 * cdash_domain_ref_element.h
 *
 * 
 */

#ifndef _cdash_domain_ref_element_H_
#define _cdash_domain_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_domain_ref_element_t cdash_domain_ref_element_t;




typedef struct cdash_domain_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_domain_ref_element_t;

__attribute__((deprecated)) cdash_domain_ref_element_t *cdash_domain_ref_element_create(
    char *href,
    char *title,
    char *type
);

void cdash_domain_ref_element_free(cdash_domain_ref_element_t *cdash_domain_ref_element);

cdash_domain_ref_element_t *cdash_domain_ref_element_parseFromJSON(cJSON *cdash_domain_ref_elementJSON);

cJSON *cdash_domain_ref_element_convertToJSON(cdash_domain_ref_element_t *cdash_domain_ref_element);

#endif /* _cdash_domain_ref_element_H_ */

