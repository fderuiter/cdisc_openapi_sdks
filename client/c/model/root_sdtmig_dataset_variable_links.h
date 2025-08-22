/*
 * root_sdtmig_dataset_variable_links.h
 *
 * 
 */

#ifndef _root_sdtmig_dataset_variable_links_H_
#define _root_sdtmig_dataset_variable_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct root_sdtmig_dataset_variable_links_t root_sdtmig_dataset_variable_links_t;

#include "root_sdtmig_dataset_variable_ref.h"
#include "sdtmig_dataset_variable_ref_version.h"



typedef struct root_sdtmig_dataset_variable_links_t {
    struct root_sdtmig_dataset_variable_ref_t *self; //model
    list_t *versions; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} root_sdtmig_dataset_variable_links_t;

__attribute__((deprecated)) root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_create(
    root_sdtmig_dataset_variable_ref_t *self,
    list_t *versions
);

void root_sdtmig_dataset_variable_links_free(root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links);

root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links_parseFromJSON(cJSON *root_sdtmig_dataset_variable_linksJSON);

cJSON *root_sdtmig_dataset_variable_links_convertToJSON(root_sdtmig_dataset_variable_links_t *root_sdtmig_dataset_variable_links);

#endif /* _root_sdtmig_dataset_variable_links_H_ */

