/*
 * health.h
 *
 * 
 */

#ifndef _health_H_
#define _health_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct health_t health_t;




typedef struct health_t {
    int healthy; //boolean
    int ldap_authentication_healthy; //boolean
    int ldap_authorization_healthy; //boolean
    int database_healthy; //boolean
    int es_healthy; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} health_t;

__attribute__((deprecated)) health_t *health_create(
    int healthy,
    int ldap_authentication_healthy,
    int ldap_authorization_healthy,
    int database_healthy,
    int es_healthy
);

void health_free(health_t *health);

health_t *health_parseFromJSON(cJSON *healthJSON);

cJSON *health_convertToJSON(health_t *health);

#endif /* _health_H_ */

