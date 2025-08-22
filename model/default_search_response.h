/*
 * default_search_response.h
 *
 * 
 */

#ifndef _default_search_response_H_
#define _default_search_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct default_search_response_t default_search_response_t;

#include "default_search_response_hits_inner.h"



typedef struct default_search_response_t {
    list_t *hits; //nonprimitive container
    double total_hits; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} default_search_response_t;

__attribute__((deprecated)) default_search_response_t *default_search_response_create(
    list_t *hits,
    double total_hits
);

void default_search_response_free(default_search_response_t *default_search_response);

default_search_response_t *default_search_response_parseFromJSON(cJSON *default_search_responseJSON);

cJSON *default_search_response_convertToJSON(default_search_response_t *default_search_response);

#endif /* _default_search_response_H_ */

