#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_qrs_responses.h"



static export_qrs_responses_t *export_qrs_responses_create_internal(
    char *response_group,
    char *sequence,
    char *responses_original_result_codelist_c_code,
    char *responses_original_result_term_c_code,
    char *responses_original_result_unit_codelist_c_code,
    char *responses_original_result_unit_term_c_code,
    char *responses_standardized_result_codelist_c_code,
    char *responses_standardized_result_term_c_code,
    char *responses_standardized_result_unit_codelist_c_code,
    char *responses_standardized_result_unit_term_c_code
    ) {
    export_qrs_responses_t *export_qrs_responses_local_var = malloc(sizeof(export_qrs_responses_t));
    if (!export_qrs_responses_local_var) {
        return NULL;
    }
    export_qrs_responses_local_var->response_group = response_group;
    export_qrs_responses_local_var->sequence = sequence;
    export_qrs_responses_local_var->responses_original_result_codelist_c_code = responses_original_result_codelist_c_code;
    export_qrs_responses_local_var->responses_original_result_term_c_code = responses_original_result_term_c_code;
    export_qrs_responses_local_var->responses_original_result_unit_codelist_c_code = responses_original_result_unit_codelist_c_code;
    export_qrs_responses_local_var->responses_original_result_unit_term_c_code = responses_original_result_unit_term_c_code;
    export_qrs_responses_local_var->responses_standardized_result_codelist_c_code = responses_standardized_result_codelist_c_code;
    export_qrs_responses_local_var->responses_standardized_result_term_c_code = responses_standardized_result_term_c_code;
    export_qrs_responses_local_var->responses_standardized_result_unit_codelist_c_code = responses_standardized_result_unit_codelist_c_code;
    export_qrs_responses_local_var->responses_standardized_result_unit_term_c_code = responses_standardized_result_unit_term_c_code;

    export_qrs_responses_local_var->_library_owned = 1;
    return export_qrs_responses_local_var;
}

__attribute__((deprecated)) export_qrs_responses_t *export_qrs_responses_create(
    char *response_group,
    char *sequence,
    char *responses_original_result_codelist_c_code,
    char *responses_original_result_term_c_code,
    char *responses_original_result_unit_codelist_c_code,
    char *responses_original_result_unit_term_c_code,
    char *responses_standardized_result_codelist_c_code,
    char *responses_standardized_result_term_c_code,
    char *responses_standardized_result_unit_codelist_c_code,
    char *responses_standardized_result_unit_term_c_code
    ) {
    return export_qrs_responses_create_internal (
        response_group,
        sequence,
        responses_original_result_codelist_c_code,
        responses_original_result_term_c_code,
        responses_original_result_unit_codelist_c_code,
        responses_original_result_unit_term_c_code,
        responses_standardized_result_codelist_c_code,
        responses_standardized_result_term_c_code,
        responses_standardized_result_unit_codelist_c_code,
        responses_standardized_result_unit_term_c_code
        );
}

void export_qrs_responses_free(export_qrs_responses_t *export_qrs_responses) {
    if(NULL == export_qrs_responses){
        return ;
    }
    if(export_qrs_responses->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_qrs_responses_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_qrs_responses->response_group) {
        free(export_qrs_responses->response_group);
        export_qrs_responses->response_group = NULL;
    }
    if (export_qrs_responses->sequence) {
        free(export_qrs_responses->sequence);
        export_qrs_responses->sequence = NULL;
    }
    if (export_qrs_responses->responses_original_result_codelist_c_code) {
        free(export_qrs_responses->responses_original_result_codelist_c_code);
        export_qrs_responses->responses_original_result_codelist_c_code = NULL;
    }
    if (export_qrs_responses->responses_original_result_term_c_code) {
        free(export_qrs_responses->responses_original_result_term_c_code);
        export_qrs_responses->responses_original_result_term_c_code = NULL;
    }
    if (export_qrs_responses->responses_original_result_unit_codelist_c_code) {
        free(export_qrs_responses->responses_original_result_unit_codelist_c_code);
        export_qrs_responses->responses_original_result_unit_codelist_c_code = NULL;
    }
    if (export_qrs_responses->responses_original_result_unit_term_c_code) {
        free(export_qrs_responses->responses_original_result_unit_term_c_code);
        export_qrs_responses->responses_original_result_unit_term_c_code = NULL;
    }
    if (export_qrs_responses->responses_standardized_result_codelist_c_code) {
        free(export_qrs_responses->responses_standardized_result_codelist_c_code);
        export_qrs_responses->responses_standardized_result_codelist_c_code = NULL;
    }
    if (export_qrs_responses->responses_standardized_result_term_c_code) {
        free(export_qrs_responses->responses_standardized_result_term_c_code);
        export_qrs_responses->responses_standardized_result_term_c_code = NULL;
    }
    if (export_qrs_responses->responses_standardized_result_unit_codelist_c_code) {
        free(export_qrs_responses->responses_standardized_result_unit_codelist_c_code);
        export_qrs_responses->responses_standardized_result_unit_codelist_c_code = NULL;
    }
    if (export_qrs_responses->responses_standardized_result_unit_term_c_code) {
        free(export_qrs_responses->responses_standardized_result_unit_term_c_code);
        export_qrs_responses->responses_standardized_result_unit_term_c_code = NULL;
    }
    free(export_qrs_responses);
}

cJSON *export_qrs_responses_convertToJSON(export_qrs_responses_t *export_qrs_responses) {
    cJSON *item = cJSON_CreateObject();

    // export_qrs_responses->response_group
    if(export_qrs_responses->response_group) {
    if(cJSON_AddStringToObject(item, "Response Group", export_qrs_responses->response_group) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->sequence
    if(export_qrs_responses->sequence) {
    if(cJSON_AddStringToObject(item, "Sequence", export_qrs_responses->sequence) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_original_result_codelist_c_code
    if(export_qrs_responses->responses_original_result_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Original Result Codelist C-Code", export_qrs_responses->responses_original_result_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_original_result_term_c_code
    if(export_qrs_responses->responses_original_result_term_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Original Result Term C-Code", export_qrs_responses->responses_original_result_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_original_result_unit_codelist_c_code
    if(export_qrs_responses->responses_original_result_unit_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Original Result Unit Codelist C-Code", export_qrs_responses->responses_original_result_unit_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_original_result_unit_term_c_code
    if(export_qrs_responses->responses_original_result_unit_term_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Original Result Unit Term C-Code", export_qrs_responses->responses_original_result_unit_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_standardized_result_codelist_c_code
    if(export_qrs_responses->responses_standardized_result_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Standardized Result Codelist C-Code", export_qrs_responses->responses_standardized_result_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_standardized_result_term_c_code
    if(export_qrs_responses->responses_standardized_result_term_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Standardized Result Term C-Code", export_qrs_responses->responses_standardized_result_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_standardized_result_unit_codelist_c_code
    if(export_qrs_responses->responses_standardized_result_unit_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Standardized Result Unit Codelist C-Code", export_qrs_responses->responses_standardized_result_unit_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_responses->responses_standardized_result_unit_term_c_code
    if(export_qrs_responses->responses_standardized_result_unit_term_c_code) {
    if(cJSON_AddStringToObject(item, "Response's Standardized Result Unit Term C-Code", export_qrs_responses->responses_standardized_result_unit_term_c_code) == NULL) {
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

export_qrs_responses_t *export_qrs_responses_parseFromJSON(cJSON *export_qrs_responsesJSON){

    export_qrs_responses_t *export_qrs_responses_local_var = NULL;

    // export_qrs_responses->response_group
    cJSON *response_group = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response Group");
    if (cJSON_IsNull(response_group)) {
        response_group = NULL;
    }
    if (response_group) { 
    if(!cJSON_IsString(response_group) && !cJSON_IsNull(response_group))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->sequence
    cJSON *sequence = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Sequence");
    if (cJSON_IsNull(sequence)) {
        sequence = NULL;
    }
    if (sequence) { 
    if(!cJSON_IsString(sequence) && !cJSON_IsNull(sequence))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_original_result_codelist_c_code
    cJSON *responses_original_result_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Original Result Codelist C-Code");
    if (cJSON_IsNull(responses_original_result_codelist_c_code)) {
        responses_original_result_codelist_c_code = NULL;
    }
    if (responses_original_result_codelist_c_code) { 
    if(!cJSON_IsString(responses_original_result_codelist_c_code) && !cJSON_IsNull(responses_original_result_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_original_result_term_c_code
    cJSON *responses_original_result_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Original Result Term C-Code");
    if (cJSON_IsNull(responses_original_result_term_c_code)) {
        responses_original_result_term_c_code = NULL;
    }
    if (responses_original_result_term_c_code) { 
    if(!cJSON_IsString(responses_original_result_term_c_code) && !cJSON_IsNull(responses_original_result_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_original_result_unit_codelist_c_code
    cJSON *responses_original_result_unit_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Original Result Unit Codelist C-Code");
    if (cJSON_IsNull(responses_original_result_unit_codelist_c_code)) {
        responses_original_result_unit_codelist_c_code = NULL;
    }
    if (responses_original_result_unit_codelist_c_code) { 
    if(!cJSON_IsString(responses_original_result_unit_codelist_c_code) && !cJSON_IsNull(responses_original_result_unit_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_original_result_unit_term_c_code
    cJSON *responses_original_result_unit_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Original Result Unit Term C-Code");
    if (cJSON_IsNull(responses_original_result_unit_term_c_code)) {
        responses_original_result_unit_term_c_code = NULL;
    }
    if (responses_original_result_unit_term_c_code) { 
    if(!cJSON_IsString(responses_original_result_unit_term_c_code) && !cJSON_IsNull(responses_original_result_unit_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_standardized_result_codelist_c_code
    cJSON *responses_standardized_result_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Standardized Result Codelist C-Code");
    if (cJSON_IsNull(responses_standardized_result_codelist_c_code)) {
        responses_standardized_result_codelist_c_code = NULL;
    }
    if (responses_standardized_result_codelist_c_code) { 
    if(!cJSON_IsString(responses_standardized_result_codelist_c_code) && !cJSON_IsNull(responses_standardized_result_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_standardized_result_term_c_code
    cJSON *responses_standardized_result_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Standardized Result Term C-Code");
    if (cJSON_IsNull(responses_standardized_result_term_c_code)) {
        responses_standardized_result_term_c_code = NULL;
    }
    if (responses_standardized_result_term_c_code) { 
    if(!cJSON_IsString(responses_standardized_result_term_c_code) && !cJSON_IsNull(responses_standardized_result_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_standardized_result_unit_codelist_c_code
    cJSON *responses_standardized_result_unit_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Standardized Result Unit Codelist C-Code");
    if (cJSON_IsNull(responses_standardized_result_unit_codelist_c_code)) {
        responses_standardized_result_unit_codelist_c_code = NULL;
    }
    if (responses_standardized_result_unit_codelist_c_code) { 
    if(!cJSON_IsString(responses_standardized_result_unit_codelist_c_code) && !cJSON_IsNull(responses_standardized_result_unit_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_responses->responses_standardized_result_unit_term_c_code
    cJSON *responses_standardized_result_unit_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_responsesJSON, "Response's Standardized Result Unit Term C-Code");
    if (cJSON_IsNull(responses_standardized_result_unit_term_c_code)) {
        responses_standardized_result_unit_term_c_code = NULL;
    }
    if (responses_standardized_result_unit_term_c_code) { 
    if(!cJSON_IsString(responses_standardized_result_unit_term_c_code) && !cJSON_IsNull(responses_standardized_result_unit_term_c_code))
    {
    goto end; //String
    }
    }


    export_qrs_responses_local_var = export_qrs_responses_create_internal (
        response_group && !cJSON_IsNull(response_group) ? strdup(response_group->valuestring) : NULL,
        sequence && !cJSON_IsNull(sequence) ? strdup(sequence->valuestring) : NULL,
        responses_original_result_codelist_c_code && !cJSON_IsNull(responses_original_result_codelist_c_code) ? strdup(responses_original_result_codelist_c_code->valuestring) : NULL,
        responses_original_result_term_c_code && !cJSON_IsNull(responses_original_result_term_c_code) ? strdup(responses_original_result_term_c_code->valuestring) : NULL,
        responses_original_result_unit_codelist_c_code && !cJSON_IsNull(responses_original_result_unit_codelist_c_code) ? strdup(responses_original_result_unit_codelist_c_code->valuestring) : NULL,
        responses_original_result_unit_term_c_code && !cJSON_IsNull(responses_original_result_unit_term_c_code) ? strdup(responses_original_result_unit_term_c_code->valuestring) : NULL,
        responses_standardized_result_codelist_c_code && !cJSON_IsNull(responses_standardized_result_codelist_c_code) ? strdup(responses_standardized_result_codelist_c_code->valuestring) : NULL,
        responses_standardized_result_term_c_code && !cJSON_IsNull(responses_standardized_result_term_c_code) ? strdup(responses_standardized_result_term_c_code->valuestring) : NULL,
        responses_standardized_result_unit_codelist_c_code && !cJSON_IsNull(responses_standardized_result_unit_codelist_c_code) ? strdup(responses_standardized_result_unit_codelist_c_code->valuestring) : NULL,
        responses_standardized_result_unit_term_c_code && !cJSON_IsNull(responses_standardized_result_unit_term_c_code) ? strdup(responses_standardized_result_unit_term_c_code->valuestring) : NULL
        );

    return export_qrs_responses_local_var;
end:
    return NULL;

}
