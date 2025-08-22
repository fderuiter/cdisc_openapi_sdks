/*
 * cdash_class_domains_ref.h
 *
 * 
 */

#ifndef _cdash_class_domains_ref_H_
#define _cdash_class_domains_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_domains_ref_t cdash_class_domains_ref_t;




typedef struct cdash_class_domains_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_domains_ref_t;

__attribute__((deprecated)) cdash_class_domains_ref_t *cdash_class_domains_ref_create(
    char *href,
    char *title,
    char *type
);

void cdash_class_domains_ref_free(cdash_class_domains_ref_t *cdash_class_domains_ref);

cdash_class_domains_ref_t *cdash_class_domains_ref_parseFromJSON(cJSON *cdash_class_domains_refJSON);

cJSON *cdash_class_domains_ref_convertToJSON(cdash_class_domains_ref_t *cdash_class_domains_ref);

#endif /* _cdash_class_domains_ref_H_ */

