#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_qrs_csv_items_row.h"



static export_qrs_csv_items_row_t *export_qrs_csv_items_row_create_internal(
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
    ) {
    export_qrs_csv_items_row_t *export_qrs_csv_items_row_local_var = malloc(sizeof(export_qrs_csv_items_row_t));
    if (!export_qrs_csv_items_row_local_var) {
        return NULL;
    }
    export_qrs_csv_items_row_local_var->qrs_measure_name = qrs_measure_name;
    export_qrs_csv_items_row_local_var->qrs_measure_label = qrs_measure_label;
    export_qrs_csv_items_row_local_var->qrs_measure_type = qrs_measure_type;
    export_qrs_csv_items_row_local_var->item_sequence = item_sequence;
    export_qrs_csv_items_row_local_var->test_name = test_name;
    export_qrs_csv_items_row_local_var->item_text = item_text;
    export_qrs_csv_items_row_local_var->tests_codelist_c_code = tests_codelist_c_code;
    export_qrs_csv_items_row_local_var->tests_term_c_code = tests_term_c_code;
    export_qrs_csv_items_row_local_var->test_codes_codelist_c_code = test_codes_codelist_c_code;
    export_qrs_csv_items_row_local_var->test_codes_term_c_code = test_codes_term_c_code;
    export_qrs_csv_items_row_local_var->subcategorys_codelist_c_code = subcategorys_codelist_c_code;
    export_qrs_csv_items_row_local_var->subcategorys_term_c_code = subcategorys_term_c_code;
    export_qrs_csv_items_row_local_var->evaluators_codelist_c_code = evaluators_codelist_c_code;
    export_qrs_csv_items_row_local_var->evaluators_term_c_code = evaluators_term_c_code;
    export_qrs_csv_items_row_local_var->free_form_responses_datatype = free_form_responses_datatype;
    export_qrs_csv_items_row_local_var->response_group = response_group;

    export_qrs_csv_items_row_local_var->_library_owned = 1;
    return export_qrs_csv_items_row_local_var;
}

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
    ) {
    return export_qrs_csv_items_row_create_internal (
        qrs_measure_name,
        qrs_measure_label,
        qrs_measure_type,
        item_sequence,
        test_name,
        item_text,
        tests_codelist_c_code,
        tests_term_c_code,
        test_codes_codelist_c_code,
        test_codes_term_c_code,
        subcategorys_codelist_c_code,
        subcategorys_term_c_code,
        evaluators_codelist_c_code,
        evaluators_term_c_code,
        free_form_responses_datatype,
        response_group
        );
}

void export_qrs_csv_items_row_free(export_qrs_csv_items_row_t *export_qrs_csv_items_row) {
    if(NULL == export_qrs_csv_items_row){
        return ;
    }
    if(export_qrs_csv_items_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_qrs_csv_items_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_qrs_csv_items_row->qrs_measure_name) {
        free(export_qrs_csv_items_row->qrs_measure_name);
        export_qrs_csv_items_row->qrs_measure_name = NULL;
    }
    if (export_qrs_csv_items_row->qrs_measure_label) {
        free(export_qrs_csv_items_row->qrs_measure_label);
        export_qrs_csv_items_row->qrs_measure_label = NULL;
    }
    if (export_qrs_csv_items_row->qrs_measure_type) {
        free(export_qrs_csv_items_row->qrs_measure_type);
        export_qrs_csv_items_row->qrs_measure_type = NULL;
    }
    if (export_qrs_csv_items_row->item_sequence) {
        free(export_qrs_csv_items_row->item_sequence);
        export_qrs_csv_items_row->item_sequence = NULL;
    }
    if (export_qrs_csv_items_row->test_name) {
        free(export_qrs_csv_items_row->test_name);
        export_qrs_csv_items_row->test_name = NULL;
    }
    if (export_qrs_csv_items_row->item_text) {
        free(export_qrs_csv_items_row->item_text);
        export_qrs_csv_items_row->item_text = NULL;
    }
    if (export_qrs_csv_items_row->tests_codelist_c_code) {
        free(export_qrs_csv_items_row->tests_codelist_c_code);
        export_qrs_csv_items_row->tests_codelist_c_code = NULL;
    }
    if (export_qrs_csv_items_row->tests_term_c_code) {
        free(export_qrs_csv_items_row->tests_term_c_code);
        export_qrs_csv_items_row->tests_term_c_code = NULL;
    }
    if (export_qrs_csv_items_row->test_codes_codelist_c_code) {
        free(export_qrs_csv_items_row->test_codes_codelist_c_code);
        export_qrs_csv_items_row->test_codes_codelist_c_code = NULL;
    }
    if (export_qrs_csv_items_row->test_codes_term_c_code) {
        free(export_qrs_csv_items_row->test_codes_term_c_code);
        export_qrs_csv_items_row->test_codes_term_c_code = NULL;
    }
    if (export_qrs_csv_items_row->subcategorys_codelist_c_code) {
        free(export_qrs_csv_items_row->subcategorys_codelist_c_code);
        export_qrs_csv_items_row->subcategorys_codelist_c_code = NULL;
    }
    if (export_qrs_csv_items_row->subcategorys_term_c_code) {
        free(export_qrs_csv_items_row->subcategorys_term_c_code);
        export_qrs_csv_items_row->subcategorys_term_c_code = NULL;
    }
    if (export_qrs_csv_items_row->evaluators_codelist_c_code) {
        free(export_qrs_csv_items_row->evaluators_codelist_c_code);
        export_qrs_csv_items_row->evaluators_codelist_c_code = NULL;
    }
    if (export_qrs_csv_items_row->evaluators_term_c_code) {
        free(export_qrs_csv_items_row->evaluators_term_c_code);
        export_qrs_csv_items_row->evaluators_term_c_code = NULL;
    }
    if (export_qrs_csv_items_row->free_form_responses_datatype) {
        free(export_qrs_csv_items_row->free_form_responses_datatype);
        export_qrs_csv_items_row->free_form_responses_datatype = NULL;
    }
    if (export_qrs_csv_items_row->response_group) {
        free(export_qrs_csv_items_row->response_group);
        export_qrs_csv_items_row->response_group = NULL;
    }
    free(export_qrs_csv_items_row);
}

cJSON *export_qrs_csv_items_row_convertToJSON(export_qrs_csv_items_row_t *export_qrs_csv_items_row) {
    cJSON *item = cJSON_CreateObject();

    // export_qrs_csv_items_row->qrs_measure_name
    if(export_qrs_csv_items_row->qrs_measure_name) {
    if(cJSON_AddStringToObject(item, "QRS Measure Name", export_qrs_csv_items_row->qrs_measure_name) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->qrs_measure_label
    if(export_qrs_csv_items_row->qrs_measure_label) {
    if(cJSON_AddStringToObject(item, "QRS Measure Label", export_qrs_csv_items_row->qrs_measure_label) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->qrs_measure_type
    if(export_qrs_csv_items_row->qrs_measure_type) {
    if(cJSON_AddStringToObject(item, "QRS Measure Type", export_qrs_csv_items_row->qrs_measure_type) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->item_sequence
    if(export_qrs_csv_items_row->item_sequence) {
    if(cJSON_AddStringToObject(item, "Item Sequence", export_qrs_csv_items_row->item_sequence) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->test_name
    if(export_qrs_csv_items_row->test_name) {
    if(cJSON_AddStringToObject(item, "Test Name", export_qrs_csv_items_row->test_name) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->item_text
    if(export_qrs_csv_items_row->item_text) {
    if(cJSON_AddStringToObject(item, "Item Text", export_qrs_csv_items_row->item_text) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->tests_codelist_c_code
    if(export_qrs_csv_items_row->tests_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Test's Codelist C-Code", export_qrs_csv_items_row->tests_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->tests_term_c_code
    if(export_qrs_csv_items_row->tests_term_c_code) {
    if(cJSON_AddStringToObject(item, "Test's Term C-Code", export_qrs_csv_items_row->tests_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->test_codes_codelist_c_code
    if(export_qrs_csv_items_row->test_codes_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Test Code's Codelist C-Code", export_qrs_csv_items_row->test_codes_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->test_codes_term_c_code
    if(export_qrs_csv_items_row->test_codes_term_c_code) {
    if(cJSON_AddStringToObject(item, "Test Code's Term C-Code", export_qrs_csv_items_row->test_codes_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->subcategorys_codelist_c_code
    if(export_qrs_csv_items_row->subcategorys_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Subcategory's Codelist C-Code", export_qrs_csv_items_row->subcategorys_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->subcategorys_term_c_code
    if(export_qrs_csv_items_row->subcategorys_term_c_code) {
    if(cJSON_AddStringToObject(item, "Subcategory's Term C-Code", export_qrs_csv_items_row->subcategorys_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->evaluators_codelist_c_code
    if(export_qrs_csv_items_row->evaluators_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Evaluator's Codelist C-Code", export_qrs_csv_items_row->evaluators_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->evaluators_term_c_code
    if(export_qrs_csv_items_row->evaluators_term_c_code) {
    if(cJSON_AddStringToObject(item, "Evaluator's Term C-Code", export_qrs_csv_items_row->evaluators_term_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->free_form_responses_datatype
    if(export_qrs_csv_items_row->free_form_responses_datatype) {
    if(cJSON_AddStringToObject(item, "Free-form Response's Datatype", export_qrs_csv_items_row->free_form_responses_datatype) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_csv_items_row->response_group
    if(export_qrs_csv_items_row->response_group) {
    if(cJSON_AddStringToObject(item, "Response Group", export_qrs_csv_items_row->response_group) == NULL) {
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

export_qrs_csv_items_row_t *export_qrs_csv_items_row_parseFromJSON(cJSON *export_qrs_csv_items_rowJSON){

    export_qrs_csv_items_row_t *export_qrs_csv_items_row_local_var = NULL;

    // export_qrs_csv_items_row->qrs_measure_name
    cJSON *qrs_measure_name = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "QRS Measure Name");
    if (cJSON_IsNull(qrs_measure_name)) {
        qrs_measure_name = NULL;
    }
    if (qrs_measure_name) { 
    if(!cJSON_IsString(qrs_measure_name) && !cJSON_IsNull(qrs_measure_name))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->qrs_measure_label
    cJSON *qrs_measure_label = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "QRS Measure Label");
    if (cJSON_IsNull(qrs_measure_label)) {
        qrs_measure_label = NULL;
    }
    if (qrs_measure_label) { 
    if(!cJSON_IsString(qrs_measure_label) && !cJSON_IsNull(qrs_measure_label))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->qrs_measure_type
    cJSON *qrs_measure_type = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "QRS Measure Type");
    if (cJSON_IsNull(qrs_measure_type)) {
        qrs_measure_type = NULL;
    }
    if (qrs_measure_type) { 
    if(!cJSON_IsString(qrs_measure_type) && !cJSON_IsNull(qrs_measure_type))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->item_sequence
    cJSON *item_sequence = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Item Sequence");
    if (cJSON_IsNull(item_sequence)) {
        item_sequence = NULL;
    }
    if (item_sequence) { 
    if(!cJSON_IsString(item_sequence) && !cJSON_IsNull(item_sequence))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->test_name
    cJSON *test_name = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Test Name");
    if (cJSON_IsNull(test_name)) {
        test_name = NULL;
    }
    if (test_name) { 
    if(!cJSON_IsString(test_name) && !cJSON_IsNull(test_name))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->item_text
    cJSON *item_text = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Item Text");
    if (cJSON_IsNull(item_text)) {
        item_text = NULL;
    }
    if (item_text) { 
    if(!cJSON_IsString(item_text) && !cJSON_IsNull(item_text))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->tests_codelist_c_code
    cJSON *tests_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Test's Codelist C-Code");
    if (cJSON_IsNull(tests_codelist_c_code)) {
        tests_codelist_c_code = NULL;
    }
    if (tests_codelist_c_code) { 
    if(!cJSON_IsString(tests_codelist_c_code) && !cJSON_IsNull(tests_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->tests_term_c_code
    cJSON *tests_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Test's Term C-Code");
    if (cJSON_IsNull(tests_term_c_code)) {
        tests_term_c_code = NULL;
    }
    if (tests_term_c_code) { 
    if(!cJSON_IsString(tests_term_c_code) && !cJSON_IsNull(tests_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->test_codes_codelist_c_code
    cJSON *test_codes_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Test Code's Codelist C-Code");
    if (cJSON_IsNull(test_codes_codelist_c_code)) {
        test_codes_codelist_c_code = NULL;
    }
    if (test_codes_codelist_c_code) { 
    if(!cJSON_IsString(test_codes_codelist_c_code) && !cJSON_IsNull(test_codes_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->test_codes_term_c_code
    cJSON *test_codes_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Test Code's Term C-Code");
    if (cJSON_IsNull(test_codes_term_c_code)) {
        test_codes_term_c_code = NULL;
    }
    if (test_codes_term_c_code) { 
    if(!cJSON_IsString(test_codes_term_c_code) && !cJSON_IsNull(test_codes_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->subcategorys_codelist_c_code
    cJSON *subcategorys_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Subcategory's Codelist C-Code");
    if (cJSON_IsNull(subcategorys_codelist_c_code)) {
        subcategorys_codelist_c_code = NULL;
    }
    if (subcategorys_codelist_c_code) { 
    if(!cJSON_IsString(subcategorys_codelist_c_code) && !cJSON_IsNull(subcategorys_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->subcategorys_term_c_code
    cJSON *subcategorys_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Subcategory's Term C-Code");
    if (cJSON_IsNull(subcategorys_term_c_code)) {
        subcategorys_term_c_code = NULL;
    }
    if (subcategorys_term_c_code) { 
    if(!cJSON_IsString(subcategorys_term_c_code) && !cJSON_IsNull(subcategorys_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->evaluators_codelist_c_code
    cJSON *evaluators_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Evaluator's Codelist C-Code");
    if (cJSON_IsNull(evaluators_codelist_c_code)) {
        evaluators_codelist_c_code = NULL;
    }
    if (evaluators_codelist_c_code) { 
    if(!cJSON_IsString(evaluators_codelist_c_code) && !cJSON_IsNull(evaluators_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->evaluators_term_c_code
    cJSON *evaluators_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Evaluator's Term C-Code");
    if (cJSON_IsNull(evaluators_term_c_code)) {
        evaluators_term_c_code = NULL;
    }
    if (evaluators_term_c_code) { 
    if(!cJSON_IsString(evaluators_term_c_code) && !cJSON_IsNull(evaluators_term_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->free_form_responses_datatype
    cJSON *free_form_responses_datatype = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Free-form Response's Datatype");
    if (cJSON_IsNull(free_form_responses_datatype)) {
        free_form_responses_datatype = NULL;
    }
    if (free_form_responses_datatype) { 
    if(!cJSON_IsString(free_form_responses_datatype) && !cJSON_IsNull(free_form_responses_datatype))
    {
    goto end; //String
    }
    }

    // export_qrs_csv_items_row->response_group
    cJSON *response_group = cJSON_GetObjectItemCaseSensitive(export_qrs_csv_items_rowJSON, "Response Group");
    if (cJSON_IsNull(response_group)) {
        response_group = NULL;
    }
    if (response_group) { 
    if(!cJSON_IsString(response_group) && !cJSON_IsNull(response_group))
    {
    goto end; //String
    }
    }


    export_qrs_csv_items_row_local_var = export_qrs_csv_items_row_create_internal (
        qrs_measure_name && !cJSON_IsNull(qrs_measure_name) ? strdup(qrs_measure_name->valuestring) : NULL,
        qrs_measure_label && !cJSON_IsNull(qrs_measure_label) ? strdup(qrs_measure_label->valuestring) : NULL,
        qrs_measure_type && !cJSON_IsNull(qrs_measure_type) ? strdup(qrs_measure_type->valuestring) : NULL,
        item_sequence && !cJSON_IsNull(item_sequence) ? strdup(item_sequence->valuestring) : NULL,
        test_name && !cJSON_IsNull(test_name) ? strdup(test_name->valuestring) : NULL,
        item_text && !cJSON_IsNull(item_text) ? strdup(item_text->valuestring) : NULL,
        tests_codelist_c_code && !cJSON_IsNull(tests_codelist_c_code) ? strdup(tests_codelist_c_code->valuestring) : NULL,
        tests_term_c_code && !cJSON_IsNull(tests_term_c_code) ? strdup(tests_term_c_code->valuestring) : NULL,
        test_codes_codelist_c_code && !cJSON_IsNull(test_codes_codelist_c_code) ? strdup(test_codes_codelist_c_code->valuestring) : NULL,
        test_codes_term_c_code && !cJSON_IsNull(test_codes_term_c_code) ? strdup(test_codes_term_c_code->valuestring) : NULL,
        subcategorys_codelist_c_code && !cJSON_IsNull(subcategorys_codelist_c_code) ? strdup(subcategorys_codelist_c_code->valuestring) : NULL,
        subcategorys_term_c_code && !cJSON_IsNull(subcategorys_term_c_code) ? strdup(subcategorys_term_c_code->valuestring) : NULL,
        evaluators_codelist_c_code && !cJSON_IsNull(evaluators_codelist_c_code) ? strdup(evaluators_codelist_c_code->valuestring) : NULL,
        evaluators_term_c_code && !cJSON_IsNull(evaluators_term_c_code) ? strdup(evaluators_term_c_code->valuestring) : NULL,
        free_form_responses_datatype && !cJSON_IsNull(free_form_responses_datatype) ? strdup(free_form_responses_datatype->valuestring) : NULL,
        response_group && !cJSON_IsNull(response_group) ? strdup(response_group->valuestring) : NULL
        );

    return export_qrs_csv_items_row_local_var;
end:
    return NULL;

}
