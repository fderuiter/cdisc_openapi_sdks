/*
 * export_qrs_csv_items_row.h
 *
 * 
 */

#ifndef _export_qrs_csv_items_row_H_
#define _export_qrs_csv_items_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_qrs_csv_items_row_t export_qrs_csv_items_row_t;




typedef struct export_qrs_csv_items_row_t {
    char *qrs_measure_name; // string
    char *qrs_measure_label; // string
    char *qrs_measure_type; // string
    char *item_sequence; // string
    char *test_name; // string
    char *item_text; // string
    char *tests_codelist_c_code; // string
    char *tests_term_c_code; // string
    char *test_codes_codelist_c_code; // string
    char *test_codes_term_c_code; // string
    char *subcategorys_codelist_c_code; // string
    char *subcategorys_term_c_code; // string
    char *evaluators_codelist_c_code; // string
    char *evaluators_term_c_code; // string
    char *free_form_responses_datatype; // string
    char *response_group; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_qrs_csv_items_row_t;

__attribute__((deprecated)) export_qrs_csv_items_row_t *export_qrs_csv_items_row_create(
    char *qrs_measure_name,
    char *qrs_measure_label,
    char *qrs_measure_type,
    char *item_sequence,
    char *test_name,
    char *item_text,
    char *tests_codelist_c_code,
    char *tests_term_c_code,
    char *test_codes_codelist_c_code,
    char *test_codes_term_c_code,
    char *subcategorys_codelist_c_code,
    char *subcategorys_term_c_code,
    char *evaluators_codelist_c_code,
    char *evaluators_term_c_code,
    char *free_form_responses_datatype,
    char *response_group
);

void export_qrs_csv_items_row_free(export_qrs_csv_items_row_t *export_qrs_csv_items_row);

export_qrs_csv_items_row_t *export_qrs_csv_items_row_parseFromJSON(cJSON *export_qrs_csv_items_rowJSON);

cJSON *export_qrs_csv_items_row_convertToJSON(export_qrs_csv_items_row_t *export_qrs_csv_items_row);

#endif /* _export_qrs_csv_items_row_H_ */

