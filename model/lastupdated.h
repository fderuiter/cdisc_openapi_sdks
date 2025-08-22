/*
 * lastupdated.h
 *
 * 
 */

#ifndef _lastupdated_H_
#define _lastupdated_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct lastupdated_t lastupdated_t;

#include "lastupdated_links.h"



typedef struct lastupdated_t {
    struct lastupdated_links_t *_links; //model
    char *overall; // string
    char *data_analysis; // string
    char *data_collection; // string
    char *data_tabulation; // string
    char *measure; // string
    char *terminology; // string

    int _library_owned; // Is the library responsible for freeing this object?
} lastupdated_t;

__attribute__((deprecated)) lastupdated_t *lastupdated_create(
    lastupdated_links_t *_links,
    char *overall,
    char *data_analysis,
    char *data_collection,
    char *data_tabulation,
    char *measure,
    char *terminology
);

void lastupdated_free(lastupdated_t *lastupdated);

lastupdated_t *lastupdated_parseFromJSON(cJSON *lastupdatedJSON);

cJSON *lastupdated_convertToJSON(lastupdated_t *lastupdated);

#endif /* _lastupdated_H_ */

