/*
 * productgroup_data_tabulation_links.h
 *
 * 
 */

#ifndef _productgroup_data_tabulation_links_H_
#define _productgroup_data_tabulation_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct productgroup_data_tabulation_links_t productgroup_data_tabulation_links_t;

#include "productgroup_ref.h"
#include "sdtm_product_ref_element.h"
#include "sdtmig_product_ref_element.h"
#include "sendig_product_ref_element.h"



typedef struct productgroup_data_tabulation_links_t {
    struct productgroup_ref_t *self; //model
    list_t *sdtm; //nonprimitive container
    list_t *sdtmig; //nonprimitive container
    list_t *sendig; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} productgroup_data_tabulation_links_t;

__attribute__((deprecated)) productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_create(
    productgroup_ref_t *self,
    list_t *sdtm,
    list_t *sdtmig,
    list_t *sendig
);

void productgroup_data_tabulation_links_free(productgroup_data_tabulation_links_t *productgroup_data_tabulation_links);

productgroup_data_tabulation_links_t *productgroup_data_tabulation_links_parseFromJSON(cJSON *productgroup_data_tabulation_linksJSON);

cJSON *productgroup_data_tabulation_links_convertToJSON(productgroup_data_tabulation_links_t *productgroup_data_tabulation_links);

#endif /* _productgroup_data_tabulation_links_H_ */

