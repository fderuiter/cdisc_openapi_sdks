/*
 * export_cdash_domain_variables_row.h
 *
 * 
 */

#ifndef _export_cdash_domain_variables_row_H_
#define _export_cdash_domain_variables_row_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct export_cdash_domain_variables_row_t export_cdash_domain_variables_row_t;




typedef struct export_cdash_domain_variables_row_t {
    char *version; // string
    char *_class; // string
    char *domain; // string
    char *variable_order; // string
    char *cdash_variable; // string
    char *cdash_variable_label; // string
    char *draft_cdash_definition; // string
    char *domain_specific; // string
    char *question_text; // string
    char *prompt; // string
    char *type; // string
    list_t *sdtm_target; //primitive container
    char *mapping_instructions; // string
    char *controlled_terminology_codelist_name; // string
    char *implementation_notes; // string

    int _library_owned; // Is the library responsible for freeing this object?
} export_cdash_domain_variables_row_t;

__attribute__((deprecated)) export_cdash_domain_variables_row_t *export_cdash_domain_variables_row_create(
    char *version,
    char *_class,
    char *domain,
    char *variable_order,
    char *cdash_variable,
    char *cdash_variable_label,
    char *draft_cdash_definition,
    char *domain_specific,
    char *question_text,
    char *prompt,
    char *type,
    list_t *sdtm_target,
    char *mapping_instructions,
    char *controlled_terminology_codelist_name,
    char *implementation_notes
);

void export_cdash_domain_variables_row_free(export_cdash_domain_variables_row_t *export_cdash_domain_variables_row);

export_cdash_domain_variables_row_t *export_cdash_domain_variables_row_parseFromJSON(cJSON *export_cdash_domain_variables_rowJSON);

cJSON *export_cdash_domain_variables_row_convertToJSON(export_cdash_domain_variables_row_t *export_cdash_domain_variables_row);

#endif /* _export_cdash_domain_variables_row_H_ */

