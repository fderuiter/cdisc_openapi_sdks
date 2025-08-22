/*
 * export_qrs_responses.h
 *
 * 
 */

#ifndef _export_qrs_responses_H_
#define _export_qrs_responses_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_qrs_responses_t export_qrs_responses_t;




typedef struct export_qrs_responses_t {
    char *response_group; // string
    char *sequence; // string
    char *responses_original_result_codelist_c_code; // string
    char *responses_original_result_term_c_code; // string
    char *responses_original_result_unit_codelist_c_code; // string
    char *responses_original_result_unit_term_c_code; // string
    char *responses_standardized_result_codelist_c_code; // string
    char *responses_standardized_result_term_c_code; // string
    char *responses_standardized_result_unit_codelist_c_code; // string
    char *responses_standardized_result_unit_term_c_code; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_qrs_responses_t;

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
);

void export_qrs_responses_free(export_qrs_responses_t *export_qrs_responses);

export_qrs_responses_t *export_qrs_responses_parseFromJSON(cJSON *export_qrs_responsesJSON);

cJSON *export_qrs_responses_convertToJSON(export_qrs_responses_t *export_qrs_responses);

#endif /* _export_qrs_responses_H_ */

