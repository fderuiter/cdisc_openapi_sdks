/*
 * cdash_class_domains.h
 *
 * 
 */

#ifndef _cdash_class_domains_H_
#define _cdash_class_domains_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_domains_t cdash_class_domains_t;

#include "cdash_class_domains_links.h"



typedef struct cdash_class_domains_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *description; // string
    struct cdash_class_domains_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_domains_t;

__attribute__((deprecated)) cdash_class_domains_t *cdash_class_domains_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdash_class_domains_links_t *_links
);

void cdash_class_domains_free(cdash_class_domains_t *cdash_class_domains);

cdash_class_domains_t *cdash_class_domains_parseFromJSON(cJSON *cdash_class_domainsJSON);

cJSON *cdash_class_domains_convertToJSON(cdash_class_domains_t *cdash_class_domains);

#endif /* _cdash_class_domains_H_ */

