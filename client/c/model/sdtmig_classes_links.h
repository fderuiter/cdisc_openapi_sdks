/*
 * sdtmig_classes_links.h
 *
 * 
 */

#ifndef _sdtmig_classes_links_H_
#define _sdtmig_classes_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_classes_links_t sdtmig_classes_links_t;

#include "sdtmig_class_ref_element.h"
#include "sdtmig_classes_ref.h"



typedef struct sdtmig_classes_links_t {
    struct sdtmig_classes_ref_t *self; //model
    struct sdtmig_classes_ref_t *prior_version; //model
    list_t *classes; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_classes_links_t;

__attribute__((deprecated)) sdtmig_classes_links_t *sdtmig_classes_links_create(
    sdtmig_classes_ref_t *self,
    sdtmig_classes_ref_t *prior_version,
    list_t *classes
);

void sdtmig_classes_links_free(sdtmig_classes_links_t *sdtmig_classes_links);

sdtmig_classes_links_t *sdtmig_classes_links_parseFromJSON(cJSON *sdtmig_classes_linksJSON);

cJSON *sdtmig_classes_links_convertToJSON(sdtmig_classes_links_t *sdtmig_classes_links);

#endif /* _sdtmig_classes_links_H_ */

