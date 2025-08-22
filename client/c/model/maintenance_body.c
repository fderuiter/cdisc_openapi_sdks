#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "maintenance_body.h"



static maintenance_body_t *maintenance_body_create_internal(
    int maintenance_mode,
    char *maintenance_message
    ) {
    maintenance_body_t *maintenance_body_local_var = malloc(sizeof(maintenance_body_t));
    if (!maintenance_body_local_var) {
        return NULL;
    }
    maintenance_body_local_var->maintenance_mode = maintenance_mode;
    maintenance_body_local_var->maintenance_message = maintenance_message;

    maintenance_body_local_var->_library_owned = 1;
    return maintenance_body_local_var;
}

__attribute__((deprecated)) maintenance_body_t *maintenance_body_create(
    int maintenance_mode,
    char *maintenance_message
    ) {
    return maintenance_body_create_internal (
        maintenance_mode,
        maintenance_message
        );
}

void maintenance_body_free(maintenance_body_t *maintenance_body) {
    if(NULL == maintenance_body){
        return ;
    }
    if(maintenance_body->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "maintenance_body_free");
        return ;
    }
    listEntry_t *listEntry;
    if (maintenance_body->maintenance_message) {
        free(maintenance_body->maintenance_message);
        maintenance_body->maintenance_message = NULL;
    }
    free(maintenance_body);
}

cJSON *maintenance_body_convertToJSON(maintenance_body_t *maintenance_body) {
    cJSON *item = cJSON_CreateObject();

    // maintenance_body->maintenance_mode
    if(maintenance_body->maintenance_mode) {
    if(cJSON_AddBoolToObject(item, "maintenanceMode", maintenance_body->maintenance_mode) == NULL) {
    goto fail; //Bool
    }
    }


    // maintenance_body->maintenance_message
    if(maintenance_body->maintenance_message) {
    if(cJSON_AddStringToObject(item, "maintenanceMessage", maintenance_body->maintenance_message) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

maintenance_body_t *maintenance_body_parseFromJSON(cJSON *maintenance_bodyJSON){

    maintenance_body_t *maintenance_body_local_var = NULL;

    // maintenance_body->maintenance_mode
    cJSON *maintenance_mode = cJSON_GetObjectItemCaseSensitive(maintenance_bodyJSON, "maintenanceMode");
    if (cJSON_IsNull(maintenance_mode)) {
        maintenance_mode = NULL;
    }
    if (maintenance_mode) { 
    if(!cJSON_IsBool(maintenance_mode))
    {
    goto end; //Bool
    }
    }

    // maintenance_body->maintenance_message
    cJSON *maintenance_message = cJSON_GetObjectItemCaseSensitive(maintenance_bodyJSON, "maintenanceMessage");
    if (cJSON_IsNull(maintenance_message)) {
        maintenance_message = NULL;
    }
    if (maintenance_message) { 
    if(!cJSON_IsString(maintenance_message) && !cJSON_IsNull(maintenance_message))
    {
    goto end; //String
    }
    }


    maintenance_body_local_var = maintenance_body_create_internal (
        maintenance_mode ? maintenance_mode->valueint : 0,
        maintenance_message && !cJSON_IsNull(maintenance_message) ? strdup(maintenance_message->valuestring) : NULL
        );

    return maintenance_body_local_var;
end:
    return NULL;

}
