/*
 * xml_cdash_class_domains.h
 *
 * 
 */

#ifndef _xml_cdash_class_domains_H_
#define _xml_cdash_class_domains_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdash_class_domains_t xml_cdash_class_domains_t;

#include "cdash_class_domains.h"



typedef struct xml_cdash_class_domains_t {
    struct cdash_class_domains_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdash_class_domains_t;

__attribute__((deprecated)) xml_cdash_class_domains_t *xml_cdash_class_domains_create(
    cdash_class_domains_t *self
);

void xml_cdash_class_domains_free(xml_cdash_class_domains_t *xml_cdash_class_domains);

xml_cdash_class_domains_t *xml_cdash_class_domains_parseFromJSON(cJSON *xml_cdash_class_domainsJSON);

cJSON *xml_cdash_class_domains_convertToJSON(xml_cdash_class_domains_t *xml_cdash_class_domains);

#endif /* _xml_cdash_class_domains_H_ */

