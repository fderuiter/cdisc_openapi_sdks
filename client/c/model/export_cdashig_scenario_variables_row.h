/*
 * export_cdashig_scenario_variables_row.h
 *
 * 
 */

#ifndef _export_cdashig_scenario_variables_row_H_
#define _export_cdashig_scenario_variables_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_cdashig_scenario_variables_row_t export_cdashig_scenario_variables_row_t;




typedef struct export_cdashig_scenario_variables_row_t {
    char *version; // string
    char *_class; // string
    char *domain; // string
    char *data_collection_scenario; // string
    char *variable_order; // string
    char *cdashig_variable; // string
    char *cdashig_variable_label; // string
    char *draft_cdashig_definition; // string
    char *question_text; // string
    char *prompt; // string
    char *type; // string
    char *cdashig_core; // string
    char *case_report_form_completion_instructions; // string
    list_t *sdtmig_target; //primitive container
    char *mapping_instructions; // string
    char *controlled_terminology_codelist_name; // string
    char *implementation_notes; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_cdashig_scenario_variables_row_t;

__attribute__((deprecated)) export_cdashig_scenario_variables_row_t *export_cdashig_scenario_variables_row_create(
    char *version,
    char *_class,
    char *domain,
    char *data_collection_scenario,
    char *variable_order,
    char *cdashig_variable,
    char *cdashig_variable_label,
    char *draft_cdashig_definition,
    char *question_text,
    char *prompt,
    char *type,
    char *cdashig_core,
    char *case_report_form_completion_instructions,
    list_t *sdtmig_target,
    char *mapping_instructions,
    char *controlled_terminology_codelist_name,
    char *implementation_notes
);

void export_cdashig_scenario_variables_row_free(export_cdashig_scenario_variables_row_t *export_cdashig_scenario_variables_row);

export_cdashig_scenario_variables_row_t *export_cdashig_scenario_variables_row_parseFromJSON(cJSON *export_cdashig_scenario_variables_rowJSON);

cJSON *export_cdashig_scenario_variables_row_convertToJSON(export_cdashig_scenario_variables_row_t *export_cdashig_scenario_variables_row);

#endif /* _export_cdashig_scenario_variables_row_H_ */

