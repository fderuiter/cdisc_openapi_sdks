/*
 * default_search_response_hits_inner.h
 *
 * 
 */

#ifndef _default_search_response_hits_inner_H_
#define _default_search_response_hits_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct default_search_response_hits_inner_t default_search_response_hits_inner_t;




typedef struct default_search_response_hits_inner_t {
    char *href; // string
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} default_search_response_hits_inner_t;

__attribute__((deprecated)) default_search_response_hits_inner_t *default_search_response_hits_inner_create(
    char *href,
    char *type
);

void default_search_response_hits_inner_free(default_search_response_hits_inner_t *default_search_response_hits_inner);

default_search_response_hits_inner_t *default_search_response_hits_inner_parseFromJSON(cJSON *default_search_response_hits_innerJSON);

cJSON *default_search_response_hits_inner_convertToJSON(default_search_response_hits_inner_t *default_search_response_hits_inner);

#endif /* _default_search_response_hits_inner_H_ */

