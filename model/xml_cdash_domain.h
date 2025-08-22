/*
 * xml_cdash_domain.h
 *
 * 
 */

#ifndef _xml_cdash_domain_H_
#define _xml_cdash_domain_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdash_domain_t xml_cdash_domain_t;

#include "cdash_domain.h"



typedef struct xml_cdash_domain_t {
    struct cdash_domain_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdash_domain_t;

__attribute__((deprecated)) xml_cdash_domain_t *xml_cdash_domain_create(
    cdash_domain_t *self
);

void xml_cdash_domain_free(xml_cdash_domain_t *xml_cdash_domain);

xml_cdash_domain_t *xml_cdash_domain_parseFromJSON(cJSON *xml_cdash_domainJSON);

cJSON *xml_cdash_domain_convertToJSON(xml_cdash_domain_t *xml_cdash_domain);

#endif /* _xml_cdash_domain_H_ */

