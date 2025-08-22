#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "health.h"



static health_t *health_create_internal(
    int healthy,
    int ldap_authentication_healthy,
    int ldap_authorization_healthy,
    int database_healthy,
    int es_healthy
    ) {
    health_t *health_local_var = malloc(sizeof(health_t));
    if (!health_local_var) {
        return NULL;
    }
    health_local_var->healthy = healthy;
    health_local_var->ldap_authentication_healthy = ldap_authentication_healthy;
    health_local_var->ldap_authorization_healthy = ldap_authorization_healthy;
    health_local_var->database_healthy = database_healthy;
    health_local_var->es_healthy = es_healthy;

    health_local_var->_library_owned = 1;
    return health_local_var;
}

__attribute__((deprecated)) health_t *health_create(
    int healthy,
    int ldap_authentication_healthy,
    int ldap_authorization_healthy,
    int database_healthy,
    int es_healthy
    ) {
    return health_create_internal (
        healthy,
        ldap_authentication_healthy,
        ldap_authorization_healthy,
        database_healthy,
        es_healthy
        );
}

void health_free(health_t *health) {
    if(NULL == health){
        return ;
    }
    if(health->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "health_free");
        return ;
    }
    listEntry_t *listEntry;
    free(health);
}

cJSON *health_convertToJSON(health_t *health) {
    cJSON *item = cJSON_CreateObject();

    // health->healthy
    if(health->healthy) {
    if(cJSON_AddBoolToObject(item, "healthy", health->healthy) == NULL) {
    goto fail; //Bool
    }
    }


    // health->ldap_authentication_healthy
    if(health->ldap_authentication_healthy) {
    if(cJSON_AddBoolToObject(item, "ldapAuthenticationHealthy", health->ldap_authentication_healthy) == NULL) {
    goto fail; //Bool
    }
    }


    // health->ldap_authorization_healthy
    if(health->ldap_authorization_healthy) {
    if(cJSON_AddBoolToObject(item, "ldapAuthorizationHealthy", health->ldap_authorization_healthy) == NULL) {
    goto fail; //Bool
    }
    }


    // health->database_healthy
    if(health->database_healthy) {
    if(cJSON_AddBoolToObject(item, "databaseHealthy", health->database_healthy) == NULL) {
    goto fail; //Bool
    }
    }


    // health->es_healthy
    if(health->es_healthy) {
    if(cJSON_AddBoolToObject(item, "esHealthy", health->es_healthy) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

health_t *health_parseFromJSON(cJSON *healthJSON){

    health_t *health_local_var = NULL;

    // health->healthy
    cJSON *healthy = cJSON_GetObjectItemCaseSensitive(healthJSON, "healthy");
    if (cJSON_IsNull(healthy)) {
        healthy = NULL;
    }
    if (healthy) { 
    if(!cJSON_IsBool(healthy))
    {
    goto end; //Bool
    }
    }

    // health->ldap_authentication_healthy
    cJSON *ldap_authentication_healthy = cJSON_GetObjectItemCaseSensitive(healthJSON, "ldapAuthenticationHealthy");
    if (cJSON_IsNull(ldap_authentication_healthy)) {
        ldap_authentication_healthy = NULL;
    }
    if (ldap_authentication_healthy) { 
    if(!cJSON_IsBool(ldap_authentication_healthy))
    {
    goto end; //Bool
    }
    }

    // health->ldap_authorization_healthy
    cJSON *ldap_authorization_healthy = cJSON_GetObjectItemCaseSensitive(healthJSON, "ldapAuthorizationHealthy");
    if (cJSON_IsNull(ldap_authorization_healthy)) {
        ldap_authorization_healthy = NULL;
    }
    if (ldap_authorization_healthy) { 
    if(!cJSON_IsBool(ldap_authorization_healthy))
    {
    goto end; //Bool
    }
    }

    // health->database_healthy
    cJSON *database_healthy = cJSON_GetObjectItemCaseSensitive(healthJSON, "databaseHealthy");
    if (cJSON_IsNull(database_healthy)) {
        database_healthy = NULL;
    }
    if (database_healthy) { 
    if(!cJSON_IsBool(database_healthy))
    {
    goto end; //Bool
    }
    }

    // health->es_healthy
    cJSON *es_healthy = cJSON_GetObjectItemCaseSensitive(healthJSON, "esHealthy");
    if (cJSON_IsNull(es_healthy)) {
        es_healthy = NULL;
    }
    if (es_healthy) { 
    if(!cJSON_IsBool(es_healthy))
    {
    goto end; //Bool
    }
    }


    health_local_var = health_create_internal (
        healthy ? healthy->valueint : 0,
        ldap_authentication_healthy ? ldap_authentication_healthy->valueint : 0,
        ldap_authorization_healthy ? ldap_authorization_healthy->valueint : 0,
        database_healthy ? database_healthy->valueint : 0,
        es_healthy ? es_healthy->valueint : 0
        );

    return health_local_var;
end:
    return NULL;

}
