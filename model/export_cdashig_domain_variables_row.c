#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_cdashig_domain_variables_row.h"



static export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row_create_internal(
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
    ) {
    export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row_local_var = malloc(sizeof(export_cdashig_domain_variables_row_t));
    if (!export_cdashig_domain_variables_row_local_var) {
        return NULL;
    }
    export_cdashig_domain_variables_row_local_var->version = version;
    export_cdashig_domain_variables_row_local_var->_class = _class;
    export_cdashig_domain_variables_row_local_var->domain = domain;
    export_cdashig_domain_variables_row_local_var->data_collection_scenario = data_collection_scenario;
    export_cdashig_domain_variables_row_local_var->variable_order = variable_order;
    export_cdashig_domain_variables_row_local_var->cdashig_variable = cdashig_variable;
    export_cdashig_domain_variables_row_local_var->cdashig_variable_label = cdashig_variable_label;
    export_cdashig_domain_variables_row_local_var->draft_cdashig_definition = draft_cdashig_definition;
    export_cdashig_domain_variables_row_local_var->question_text = question_text;
    export_cdashig_domain_variables_row_local_var->prompt = prompt;
    export_cdashig_domain_variables_row_local_var->type = type;
    export_cdashig_domain_variables_row_local_var->cdashig_core = cdashig_core;
    export_cdashig_domain_variables_row_local_var->case_report_form_completion_instructions = case_report_form_completion_instructions;
    export_cdashig_domain_variables_row_local_var->sdtmig_target = sdtmig_target;
    export_cdashig_domain_variables_row_local_var->mapping_instructions = mapping_instructions;
    export_cdashig_domain_variables_row_local_var->controlled_terminology_codelist_name = controlled_terminology_codelist_name;
    export_cdashig_domain_variables_row_local_var->implementation_notes = implementation_notes;

    export_cdashig_domain_variables_row_local_var->_library_owned = 1;
    return export_cdashig_domain_variables_row_local_var;
}

__attribute__((deprecated)) export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row_create(
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
    ) {
    return export_cdashig_domain_variables_row_create_internal (
        version,
        _class,
        domain,
        data_collection_scenario,
        variable_order,
        cdashig_variable,
        cdashig_variable_label,
        draft_cdashig_definition,
        question_text,
        prompt,
        type,
        cdashig_core,
        case_report_form_completion_instructions,
        sdtmig_target,
        mapping_instructions,
        controlled_terminology_codelist_name,
        implementation_notes
        );
}

void export_cdashig_domain_variables_row_free(export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row) {
    if(NULL == export_cdashig_domain_variables_row){
        return ;
    }
    if(export_cdashig_domain_variables_row->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_cdashig_domain_variables_row_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_cdashig_domain_variables_row->version) {
        free(export_cdashig_domain_variables_row->version);
        export_cdashig_domain_variables_row->version = NULL;
    }
    if (export_cdashig_domain_variables_row->_class) {
        free(export_cdashig_domain_variables_row->_class);
        export_cdashig_domain_variables_row->_class = NULL;
    }
    if (export_cdashig_domain_variables_row->domain) {
        free(export_cdashig_domain_variables_row->domain);
        export_cdashig_domain_variables_row->domain = NULL;
    }
    if (export_cdashig_domain_variables_row->data_collection_scenario) {
        free(export_cdashig_domain_variables_row->data_collection_scenario);
        export_cdashig_domain_variables_row->data_collection_scenario = NULL;
    }
    if (export_cdashig_domain_variables_row->variable_order) {
        free(export_cdashig_domain_variables_row->variable_order);
        export_cdashig_domain_variables_row->variable_order = NULL;
    }
    if (export_cdashig_domain_variables_row->cdashig_variable) {
        free(export_cdashig_domain_variables_row->cdashig_variable);
        export_cdashig_domain_variables_row->cdashig_variable = NULL;
    }
    if (export_cdashig_domain_variables_row->cdashig_variable_label) {
        free(export_cdashig_domain_variables_row->cdashig_variable_label);
        export_cdashig_domain_variables_row->cdashig_variable_label = NULL;
    }
    if (export_cdashig_domain_variables_row->draft_cdashig_definition) {
        free(export_cdashig_domain_variables_row->draft_cdashig_definition);
        export_cdashig_domain_variables_row->draft_cdashig_definition = NULL;
    }
    if (export_cdashig_domain_variables_row->question_text) {
        free(export_cdashig_domain_variables_row->question_text);
        export_cdashig_domain_variables_row->question_text = NULL;
    }
    if (export_cdashig_domain_variables_row->prompt) {
        free(export_cdashig_domain_variables_row->prompt);
        export_cdashig_domain_variables_row->prompt = NULL;
    }
    if (export_cdashig_domain_variables_row->type) {
        free(export_cdashig_domain_variables_row->type);
        export_cdashig_domain_variables_row->type = NULL;
    }
    if (export_cdashig_domain_variables_row->cdashig_core) {
        free(export_cdashig_domain_variables_row->cdashig_core);
        export_cdashig_domain_variables_row->cdashig_core = NULL;
    }
    if (export_cdashig_domain_variables_row->case_report_form_completion_instructions) {
        free(export_cdashig_domain_variables_row->case_report_form_completion_instructions);
        export_cdashig_domain_variables_row->case_report_form_completion_instructions = NULL;
    }
    if (export_cdashig_domain_variables_row->sdtmig_target) {
        list_ForEach(listEntry, export_cdashig_domain_variables_row->sdtmig_target) {
            free(listEntry->data);
        }
        list_freeList(export_cdashig_domain_variables_row->sdtmig_target);
        export_cdashig_domain_variables_row->sdtmig_target = NULL;
    }
    if (export_cdashig_domain_variables_row->mapping_instructions) {
        free(export_cdashig_domain_variables_row->mapping_instructions);
        export_cdashig_domain_variables_row->mapping_instructions = NULL;
    }
    if (export_cdashig_domain_variables_row->controlled_terminology_codelist_name) {
        free(export_cdashig_domain_variables_row->controlled_terminology_codelist_name);
        export_cdashig_domain_variables_row->controlled_terminology_codelist_name = NULL;
    }
    if (export_cdashig_domain_variables_row->implementation_notes) {
        free(export_cdashig_domain_variables_row->implementation_notes);
        export_cdashig_domain_variables_row->implementation_notes = NULL;
    }
    free(export_cdashig_domain_variables_row);
}

cJSON *export_cdashig_domain_variables_row_convertToJSON(export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row) {
    cJSON *item = cJSON_CreateObject();

    // export_cdashig_domain_variables_row->version
    if(export_cdashig_domain_variables_row->version) {
    if(cJSON_AddStringToObject(item, "Version", export_cdashig_domain_variables_row->version) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->_class
    if(export_cdashig_domain_variables_row->_class) {
    if(cJSON_AddStringToObject(item, "Class", export_cdashig_domain_variables_row->_class) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->domain
    if(export_cdashig_domain_variables_row->domain) {
    if(cJSON_AddStringToObject(item, "Domain", export_cdashig_domain_variables_row->domain) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->data_collection_scenario
    if(export_cdashig_domain_variables_row->data_collection_scenario) {
    if(cJSON_AddStringToObject(item, "Data Collection Scenario", export_cdashig_domain_variables_row->data_collection_scenario) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->variable_order
    if(export_cdashig_domain_variables_row->variable_order) {
    if(cJSON_AddStringToObject(item, "Variable Order", export_cdashig_domain_variables_row->variable_order) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->cdashig_variable
    if(export_cdashig_domain_variables_row->cdashig_variable) {
    if(cJSON_AddStringToObject(item, "CDASHIG Variable", export_cdashig_domain_variables_row->cdashig_variable) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->cdashig_variable_label
    if(export_cdashig_domain_variables_row->cdashig_variable_label) {
    if(cJSON_AddStringToObject(item, "CDASHIG Variable Label", export_cdashig_domain_variables_row->cdashig_variable_label) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->draft_cdashig_definition
    if(export_cdashig_domain_variables_row->draft_cdashig_definition) {
    if(cJSON_AddStringToObject(item, "DRAFT CDASHIG Definition", export_cdashig_domain_variables_row->draft_cdashig_definition) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->question_text
    if(export_cdashig_domain_variables_row->question_text) {
    if(cJSON_AddStringToObject(item, "Question Text", export_cdashig_domain_variables_row->question_text) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->prompt
    if(export_cdashig_domain_variables_row->prompt) {
    if(cJSON_AddStringToObject(item, "Prompt", export_cdashig_domain_variables_row->prompt) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->type
    if(export_cdashig_domain_variables_row->type) {
    if(cJSON_AddStringToObject(item, "Type", export_cdashig_domain_variables_row->type) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->cdashig_core
    if(export_cdashig_domain_variables_row->cdashig_core) {
    if(cJSON_AddStringToObject(item, "CDASHIG Core", export_cdashig_domain_variables_row->cdashig_core) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->case_report_form_completion_instructions
    if(export_cdashig_domain_variables_row->case_report_form_completion_instructions) {
    if(cJSON_AddStringToObject(item, "Case Report Form Completion Instructions", export_cdashig_domain_variables_row->case_report_form_completion_instructions) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->sdtmig_target
    if(export_cdashig_domain_variables_row->sdtmig_target) {
    cJSON *sdtmig_target = cJSON_AddArrayToObject(item, "SDTMIG Target");
    if(sdtmig_target == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *sdtmig_targetListEntry;
    list_ForEach(sdtmig_targetListEntry, export_cdashig_domain_variables_row->sdtmig_target) {
    if(cJSON_AddStringToObject(sdtmig_target, "", sdtmig_targetListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // export_cdashig_domain_variables_row->mapping_instructions
    if(export_cdashig_domain_variables_row->mapping_instructions) {
    if(cJSON_AddStringToObject(item, "Mapping Instructions", export_cdashig_domain_variables_row->mapping_instructions) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->controlled_terminology_codelist_name
    if(export_cdashig_domain_variables_row->controlled_terminology_codelist_name) {
    if(cJSON_AddStringToObject(item, "Controlled Terminology Codelist Name", export_cdashig_domain_variables_row->controlled_terminology_codelist_name) == NULL) {
    goto fail; //String
    }
    }


    // export_cdashig_domain_variables_row->implementation_notes
    if(export_cdashig_domain_variables_row->implementation_notes) {
    if(cJSON_AddStringToObject(item, "Implementation Notes", export_cdashig_domain_variables_row->implementation_notes) == NULL) {
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

export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row_parseFromJSON(cJSON *export_cdashig_domain_variables_rowJSON){

    export_cdashig_domain_variables_row_t *export_cdashig_domain_variables_row_local_var = NULL;

    // define the local list for export_cdashig_domain_variables_row->sdtmig_target
    list_t *sdtmig_targetList = NULL;

    // export_cdashig_domain_variables_row->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsString(version) && !cJSON_IsNull(version))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->_class
    cJSON *_class = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Class");
    if (cJSON_IsNull(_class)) {
        _class = NULL;
    }
    if (_class) { 
    if(!cJSON_IsString(_class) && !cJSON_IsNull(_class))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->domain
    cJSON *domain = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Domain");
    if (cJSON_IsNull(domain)) {
        domain = NULL;
    }
    if (domain) { 
    if(!cJSON_IsString(domain) && !cJSON_IsNull(domain))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->data_collection_scenario
    cJSON *data_collection_scenario = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Data Collection Scenario");
    if (cJSON_IsNull(data_collection_scenario)) {
        data_collection_scenario = NULL;
    }
    if (data_collection_scenario) { 
    if(!cJSON_IsString(data_collection_scenario) && !cJSON_IsNull(data_collection_scenario))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->variable_order
    cJSON *variable_order = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Variable Order");
    if (cJSON_IsNull(variable_order)) {
        variable_order = NULL;
    }
    if (variable_order) { 
    if(!cJSON_IsString(variable_order) && !cJSON_IsNull(variable_order))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->cdashig_variable
    cJSON *cdashig_variable = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "CDASHIG Variable");
    if (cJSON_IsNull(cdashig_variable)) {
        cdashig_variable = NULL;
    }
    if (cdashig_variable) { 
    if(!cJSON_IsString(cdashig_variable) && !cJSON_IsNull(cdashig_variable))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->cdashig_variable_label
    cJSON *cdashig_variable_label = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "CDASHIG Variable Label");
    if (cJSON_IsNull(cdashig_variable_label)) {
        cdashig_variable_label = NULL;
    }
    if (cdashig_variable_label) { 
    if(!cJSON_IsString(cdashig_variable_label) && !cJSON_IsNull(cdashig_variable_label))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->draft_cdashig_definition
    cJSON *draft_cdashig_definition = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "DRAFT CDASHIG Definition");
    if (cJSON_IsNull(draft_cdashig_definition)) {
        draft_cdashig_definition = NULL;
    }
    if (draft_cdashig_definition) { 
    if(!cJSON_IsString(draft_cdashig_definition) && !cJSON_IsNull(draft_cdashig_definition))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->question_text
    cJSON *question_text = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Question Text");
    if (cJSON_IsNull(question_text)) {
        question_text = NULL;
    }
    if (question_text) { 
    if(!cJSON_IsString(question_text) && !cJSON_IsNull(question_text))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->prompt
    cJSON *prompt = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Prompt");
    if (cJSON_IsNull(prompt)) {
        prompt = NULL;
    }
    if (prompt) { 
    if(!cJSON_IsString(prompt) && !cJSON_IsNull(prompt))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->cdashig_core
    cJSON *cdashig_core = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "CDASHIG Core");
    if (cJSON_IsNull(cdashig_core)) {
        cdashig_core = NULL;
    }
    if (cdashig_core) { 
    if(!cJSON_IsString(cdashig_core) && !cJSON_IsNull(cdashig_core))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->case_report_form_completion_instructions
    cJSON *case_report_form_completion_instructions = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Case Report Form Completion Instructions");
    if (cJSON_IsNull(case_report_form_completion_instructions)) {
        case_report_form_completion_instructions = NULL;
    }
    if (case_report_form_completion_instructions) { 
    if(!cJSON_IsString(case_report_form_completion_instructions) && !cJSON_IsNull(case_report_form_completion_instructions))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->sdtmig_target
    cJSON *sdtmig_target = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "SDTMIG Target");
    if (cJSON_IsNull(sdtmig_target)) {
        sdtmig_target = NULL;
    }
    if (sdtmig_target) { 
    cJSON *sdtmig_target_local = NULL;
    if(!cJSON_IsArray(sdtmig_target)) {
        goto end;//primitive container
    }
    sdtmig_targetList = list_createList();

    cJSON_ArrayForEach(sdtmig_target_local, sdtmig_target)
    {
        if(!cJSON_IsString(sdtmig_target_local))
        {
            goto end;
        }
        list_addElement(sdtmig_targetList , strdup(sdtmig_target_local->valuestring));
    }
    }

    // export_cdashig_domain_variables_row->mapping_instructions
    cJSON *mapping_instructions = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Mapping Instructions");
    if (cJSON_IsNull(mapping_instructions)) {
        mapping_instructions = NULL;
    }
    if (mapping_instructions) { 
    if(!cJSON_IsString(mapping_instructions) && !cJSON_IsNull(mapping_instructions))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->controlled_terminology_codelist_name
    cJSON *controlled_terminology_codelist_name = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Controlled Terminology Codelist Name");
    if (cJSON_IsNull(controlled_terminology_codelist_name)) {
        controlled_terminology_codelist_name = NULL;
    }
    if (controlled_terminology_codelist_name) { 
    if(!cJSON_IsString(controlled_terminology_codelist_name) && !cJSON_IsNull(controlled_terminology_codelist_name))
    {
    goto end; //String
    }
    }

    // export_cdashig_domain_variables_row->implementation_notes
    cJSON *implementation_notes = cJSON_GetObjectItemCaseSensitive(export_cdashig_domain_variables_rowJSON, "Implementation Notes");
    if (cJSON_IsNull(implementation_notes)) {
        implementation_notes = NULL;
    }
    if (implementation_notes) { 
    if(!cJSON_IsString(implementation_notes) && !cJSON_IsNull(implementation_notes))
    {
    goto end; //String
    }
    }


    export_cdashig_domain_variables_row_local_var = export_cdashig_domain_variables_row_create_internal (
        version && !cJSON_IsNull(version) ? strdup(version->valuestring) : NULL,
        _class && !cJSON_IsNull(_class) ? strdup(_class->valuestring) : NULL,
        domain && !cJSON_IsNull(domain) ? strdup(domain->valuestring) : NULL,
        data_collection_scenario && !cJSON_IsNull(data_collection_scenario) ? strdup(data_collection_scenario->valuestring) : NULL,
        variable_order && !cJSON_IsNull(variable_order) ? strdup(variable_order->valuestring) : NULL,
        cdashig_variable && !cJSON_IsNull(cdashig_variable) ? strdup(cdashig_variable->valuestring) : NULL,
        cdashig_variable_label && !cJSON_IsNull(cdashig_variable_label) ? strdup(cdashig_variable_label->valuestring) : NULL,
        draft_cdashig_definition && !cJSON_IsNull(draft_cdashig_definition) ? strdup(draft_cdashig_definition->valuestring) : NULL,
        question_text && !cJSON_IsNull(question_text) ? strdup(question_text->valuestring) : NULL,
        prompt && !cJSON_IsNull(prompt) ? strdup(prompt->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        cdashig_core && !cJSON_IsNull(cdashig_core) ? strdup(cdashig_core->valuestring) : NULL,
        case_report_form_completion_instructions && !cJSON_IsNull(case_report_form_completion_instructions) ? strdup(case_report_form_completion_instructions->valuestring) : NULL,
        sdtmig_target ? sdtmig_targetList : NULL,
        mapping_instructions && !cJSON_IsNull(mapping_instructions) ? strdup(mapping_instructions->valuestring) : NULL,
        controlled_terminology_codelist_name && !cJSON_IsNull(controlled_terminology_codelist_name) ? strdup(controlled_terminology_codelist_name->valuestring) : NULL,
        implementation_notes && !cJSON_IsNull(implementation_notes) ? strdup(implementation_notes->valuestring) : NULL
        );

    return export_cdashig_domain_variables_row_local_var;
end:
    if (sdtmig_targetList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, sdtmig_targetList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(sdtmig_targetList);
        sdtmig_targetList = NULL;
    }
    return NULL;

}
