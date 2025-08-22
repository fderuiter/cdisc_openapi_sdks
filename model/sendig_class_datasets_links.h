/*
 * sendig_class_datasets_links.h
 *
 * 
 */

#ifndef _sendig_class_datasets_links_H_
#define _sendig_class_datasets_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sendig_class_datasets_links_t sendig_class_datasets_links_t;

#include "sendig_class_datasets_ref.h"
#include "sendig_dataset_ref_element.h"
#include "sendig_product_ref.h"



typedef struct sendig_class_datasets_links_t {
    struct sendig_class_datasets_ref_t *self; //model
    struct sendig_product_ref_t *parent_product; //model
    list_t *datasets; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sendig_class_datasets_links_t;

__attribute__((deprecated)) sendig_class_datasets_links_t *sendig_class_datasets_links_create(
    sendig_class_datasets_ref_t *self,
    sendig_product_ref_t *parent_product,
    list_t *datasets
);

void sendig_class_datasets_links_free(sendig_class_datasets_links_t *sendig_class_datasets_links);

sendig_class_datasets_links_t *sendig_class_datasets_links_parseFromJSON(cJSON *sendig_class_datasets_linksJSON);

cJSON *sendig_class_datasets_links_convertToJSON(sendig_class_datasets_links_t *sendig_class_datasets_links);

#endif /* _sendig_class_datasets_links_H_ */

