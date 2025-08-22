/*
 * xml_cdashig_domain.h
 *
 * 
 */

#ifndef _xml_cdashig_domain_H_
#define _xml_cdashig_domain_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_domain_t xml_cdashig_domain_t;

#include "cdashig_domain.h"



typedef struct xml_cdashig_domain_t {
    struct cdashig_domain_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_domain_t;

__attribute__((deprecated)) xml_cdashig_domain_t *xml_cdashig_domain_create(
    cdashig_domain_t *self
);

void xml_cdashig_domain_free(xml_cdashig_domain_t *xml_cdashig_domain);

xml_cdashig_domain_t *xml_cdashig_domain_parseFromJSON(cJSON *xml_cdashig_domainJSON);

cJSON *xml_cdashig_domain_convertToJSON(xml_cdashig_domain_t *xml_cdashig_domain);

#endif /* _xml_cdashig_domain_H_ */

