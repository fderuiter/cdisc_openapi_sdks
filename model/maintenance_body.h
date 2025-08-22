/*
 * maintenance_body.h
 *
 * 
 */

#ifndef _maintenance_body_H_
#define _maintenance_body_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct maintenance_body_t maintenance_body_t;




typedef struct maintenance_body_t {
    int maintenance_mode; //boolean
    char *maintenance_message; // string

    int _library_owned; // Is the library responsible for freeing this object?
} maintenance_body_t;

__attribute__((deprecated)) maintenance_body_t *maintenance_body_create(
    int maintenance_mode,
    char *maintenance_message
);

void maintenance_body_free(maintenance_body_t *maintenance_body);

maintenance_body_t *maintenance_body_parseFromJSON(cJSON *maintenance_bodyJSON);

cJSON *maintenance_body_convertToJSON(maintenance_body_t *maintenance_body);

#endif /* _maintenance_body_H_ */

