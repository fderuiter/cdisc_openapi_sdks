/*
 * sdtm_product_ref.h
 *
 * 
 */

#ifndef _sdtm_product_ref_H_
#define _sdtm_product_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct sdtm_product_ref_t sdtm_product_ref_t;




typedef struct sdtm_product_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} sdtm_product_ref_t;

__attribute__((deprecated)) sdtm_product_ref_t *sdtm_product_ref_create(
    char *href,
    char *title,
    char *type
);

void sdtm_product_ref_free(sdtm_product_ref_t *sdtm_product_ref);

sdtm_product_ref_t *sdtm_product_ref_parseFromJSON(cJSON *sdtm_product_refJSON);

cJSON *sdtm_product_ref_convertToJSON(sdtm_product_ref_t *sdtm_product_ref);

#endif /* _sdtm_product_ref_H_ */

