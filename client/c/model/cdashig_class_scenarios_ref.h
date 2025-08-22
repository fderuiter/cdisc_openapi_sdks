/*
 * cdashig_class_scenarios_ref.h
 *
 * 
 */

#ifndef _cdashig_class_scenarios_ref_H_
#define _cdashig_class_scenarios_ref_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdashig_class_scenarios_ref_t cdashig_class_scenarios_ref_t;




typedef struct cdashig_class_scenarios_ref_t {
    char *href; // string
    char *title; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cdashig_class_scenarios_ref_t;

__attribute__((deprecated)) cdashig_class_scenarios_ref_t *cdashig_class_scenarios_ref_create(
    char *href,
    char *title,
    char *type
);

void cdashig_class_scenarios_ref_free(cdashig_class_scenarios_ref_t *cdashig_class_scenarios_ref);

cdashig_class_scenarios_ref_t *cdashig_class_scenarios_ref_parseFromJSON(cJSON *cdashig_class_scenarios_refJSON);

cJSON *cdashig_class_scenarios_ref_convertToJSON(cdashig_class_scenarios_ref_t *cdashig_class_scenarios_ref);

#endif /* _cdashig_class_scenarios_ref_H_ */

