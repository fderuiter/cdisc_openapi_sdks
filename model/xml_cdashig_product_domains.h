/*
 * xml_cdashig_product_domains.h
 *
 * 
 */

#ifndef _xml_cdashig_product_domains_H_
#define _xml_cdashig_product_domains_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_cdashig_product_domains_t xml_cdashig_product_domains_t;

#include "cdashig_product_domains.h"



typedef struct xml_cdashig_product_domains_t {
    struct cdashig_product_domains_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_cdashig_product_domains_t;

__attribute__((deprecated)) xml_cdashig_product_domains_t *xml_cdashig_product_domains_create(
    cdashig_product_domains_t *self
);

void xml_cdashig_product_domains_free(xml_cdashig_product_domains_t *xml_cdashig_product_domains);

xml_cdashig_product_domains_t *xml_cdashig_product_domains_parseFromJSON(cJSON *xml_cdashig_product_domainsJSON);

cJSON *xml_cdashig_product_domains_convertToJSON(xml_cdashig_product_domains_t *xml_cdashig_product_domains);

#endif /* _xml_cdashig_product_domains_H_ */

