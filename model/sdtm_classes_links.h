/*
 * sdtm_classes_links.h
 *
 * 
 */

#ifndef _sdtm_classes_links_H_
#define _sdtm_classes_links_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_classes_links_t sdtm_classes_links_t;

#include "sdtm_class_ref_element.h"
#include "sdtm_classes_ref.h"



typedef struct sdtm_classes_links_t {
    struct sdtm_classes_ref_t *self; //model
    struct sdtm_classes_ref_t *prior_version; //model
    list_t *classes; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_classes_links_t;

__attribute__((deprecated)) sdtm_classes_links_t *sdtm_classes_links_create(
    sdtm_classes_ref_t *self,
    sdtm_classes_ref_t *prior_version,
    list_t *classes
);

void sdtm_classes_links_free(sdtm_classes_links_t *sdtm_classes_links);

sdtm_classes_links_t *sdtm_classes_links_parseFromJSON(cJSON *sdtm_classes_linksJSON);

cJSON *sdtm_classes_links_convertToJSON(sdtm_classes_links_t *sdtm_classes_links);

#endif /* _sdtm_classes_links_H_ */

