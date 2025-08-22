/*
 * default_error_response.h
 *
 * 
 */

#ifndef _default_error_response_H_
#define _default_error_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct default_error_response_t default_error_response_t;




typedef struct default_error_response_t {
    char *status_code; // string
    char *reason_phrase; // string
    char *user_message; // string
    char *admin_message; // string

    int _library_owned; // Is the library responsible for freeing this object?
} default_error_response_t;

__attribute__((deprecated)) default_error_response_t *default_error_response_create(
    char *status_code,
    char *reason_phrase,
    char *user_message,
    char *admin_message
);

void default_error_response_free(default_error_response_t *default_error_response);

default_error_response_t *default_error_response_parseFromJSON(cJSON *default_error_responseJSON);

cJSON *default_error_response_convertToJSON(default_error_response_t *default_error_response);

#endif /* _default_error_response_H_ */

