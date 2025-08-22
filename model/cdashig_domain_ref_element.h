/*
 * cdashig_domain_ref_element.h
 *
 * 
 */

#ifndef _cdashig_domain_ref_element_H_
#define _cdashig_domain_ref_element_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_domain_ref_element_t cdashig_domain_ref_element_t;




typedef struct cdashig_domain_ref_element_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_domain_ref_element_t;

__attribute__((deprecated)) cdashig_domain_ref_element_t *cdashig_domain_ref_element_create(
    char *href,
    char *title,
    char *type
);

void cdashig_domain_ref_element_free(cdashig_domain_ref_element_t *cdashig_domain_ref_element);

cdashig_domain_ref_element_t *cdashig_domain_ref_element_parseFromJSON(cJSON *cdashig_domain_ref_elementJSON);

cJSON *cdashig_domain_ref_element_convertToJSON(cdashig_domain_ref_element_t *cdashig_domain_ref_element);

#endif /* _cdashig_domain_ref_element_H_ */

