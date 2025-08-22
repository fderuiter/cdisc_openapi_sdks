#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "default_error_response.h"



static default_error_response_t *default_error_response_create_internal(
    char *status_code,
    char *reason_phrase,
    char *user_message,
    char *admin_message
    ) {
    default_error_response_t *default_error_response_local_var = malloc(sizeof(default_error_response_t));
    if (!default_error_response_local_var) {
        return NULL;
    }
    default_error_response_local_var->status_code = status_code;
    default_error_response_local_var->reason_phrase = reason_phrase;
    default_error_response_local_var->user_message = user_message;
    default_error_response_local_var->admin_message = admin_message;

    default_error_response_local_var->_library_owned = 1;
    return default_error_response_local_var;
}

__attribute__((deprecated)) default_error_response_t *default_error_response_create(
    char *status_code,
    char *reason_phrase,
    char *user_message,
    char *admin_message
    ) {
    return default_error_response_create_internal (
        status_code,
        reason_phrase,
        user_message,
        admin_message
        );
}

void default_error_response_free(default_error_response_t *default_error_response) {
    if(NULL == default_error_response){
        return ;
    }
    if(default_error_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "default_error_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (default_error_response->status_code) {
        free(default_error_response->status_code);
        default_error_response->status_code = NULL;
    }
    if (default_error_response->reason_phrase) {
        free(default_error_response->reason_phrase);
        default_error_response->reason_phrase = NULL;
    }
    if (default_error_response->user_message) {
        free(default_error_response->user_message);
        default_error_response->user_message = NULL;
    }
    if (default_error_response->admin_message) {
        free(default_error_response->admin_message);
        default_error_response->admin_message = NULL;
    }
    free(default_error_response);
}

cJSON *default_error_response_convertToJSON(default_error_response_t *default_error_response) {
    cJSON *item = cJSON_CreateObject();

    // default_error_response->status_code
    if(default_error_response->status_code) {
    if(cJSON_AddStringToObject(item, "statusCode", default_error_response->status_code) == NULL) {
    goto fail; //String
    }
    }


    // default_error_response->reason_phrase
    if(default_error_response->reason_phrase) {
    if(cJSON_AddStringToObject(item, "reasonPhrase", default_error_response->reason_phrase) == NULL) {
    goto fail; //String
    }
    }


    // default_error_response->user_message
    if(default_error_response->user_message) {
    if(cJSON_AddStringToObject(item, "userMessage", default_error_response->user_message) == NULL) {
    goto fail; //String
    }
    }


    // default_error_response->admin_message
    if(default_error_response->admin_message) {
    if(cJSON_AddStringToObject(item, "adminMessage", default_error_response->admin_message) == NULL) {
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

default_error_response_t *default_error_response_parseFromJSON(cJSON *default_error_responseJSON){

    default_error_response_t *default_error_response_local_var = NULL;

    // default_error_response->status_code
    cJSON *status_code = cJSON_GetObjectItemCaseSensitive(default_error_responseJSON, "statusCode");
    if (cJSON_IsNull(status_code)) {
        status_code = NULL;
    }
    if (status_code) { 
    if(!cJSON_IsString(status_code) && !cJSON_IsNull(status_code))
    {
    goto end; //String
    }
    }

    // default_error_response->reason_phrase
    cJSON *reason_phrase = cJSON_GetObjectItemCaseSensitive(default_error_responseJSON, "reasonPhrase");
    if (cJSON_IsNull(reason_phrase)) {
        reason_phrase = NULL;
    }
    if (reason_phrase) { 
    if(!cJSON_IsString(reason_phrase) && !cJSON_IsNull(reason_phrase))
    {
    goto end; //String
    }
    }

    // default_error_response->user_message
    cJSON *user_message = cJSON_GetObjectItemCaseSensitive(default_error_responseJSON, "userMessage");
    if (cJSON_IsNull(user_message)) {
        user_message = NULL;
    }
    if (user_message) { 
    if(!cJSON_IsString(user_message) && !cJSON_IsNull(user_message))
    {
    goto end; //String
    }
    }

    // default_error_response->admin_message
    cJSON *admin_message = cJSON_GetObjectItemCaseSensitive(default_error_responseJSON, "adminMessage");
    if (cJSON_IsNull(admin_message)) {
        admin_message = NULL;
    }
    if (admin_message) { 
    if(!cJSON_IsString(admin_message) && !cJSON_IsNull(admin_message))
    {
    goto end; //String
    }
    }


    default_error_response_local_var = default_error_response_create_internal (
        status_code && !cJSON_IsNull(status_code) ? strdup(status_code->valuestring) : NULL,
        reason_phrase && !cJSON_IsNull(reason_phrase) ? strdup(reason_phrase->valuestring) : NULL,
        user_message && !cJSON_IsNull(user_message) ? strdup(user_message->valuestring) : NULL,
        admin_message && !cJSON_IsNull(admin_message) ? strdup(admin_message->valuestring) : NULL
        );

    return default_error_response_local_var;
end:
    return NULL;

}
