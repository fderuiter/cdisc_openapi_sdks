/*
 * sdtmig_datasets_ref.h
 *
 * 
 */

#ifndef _sdtmig_datasets_ref_H_
#define _sdtmig_datasets_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtmig_datasets_ref_t sdtmig_datasets_ref_t;




typedef struct sdtmig_datasets_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtmig_datasets_ref_t;

__attribute__((deprecated)) sdtmig_datasets_ref_t *sdtmig_datasets_ref_create(
    char *href,
    char *title,
    char *type
);

void sdtmig_datasets_ref_free(sdtmig_datasets_ref_t *sdtmig_datasets_ref);

sdtmig_datasets_ref_t *sdtmig_datasets_ref_parseFromJSON(cJSON *sdtmig_datasets_refJSON);

cJSON *sdtmig_datasets_ref_convertToJSON(sdtmig_datasets_ref_t *sdtmig_datasets_ref);

#endif /* _sdtmig_datasets_ref_H_ */

