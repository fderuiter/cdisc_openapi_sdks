#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain_field.h"



static cdashig_domain_field_t *cdashig_domain_field_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *question_text,
    char *prompt,
    char *completion_instructions,
    char *implementation_notes,
    char *simple_datatype,
    char *mapping_instructions,
    char *core,
    cdashig_domain_field_links_t *_links
    ) {
    cdashig_domain_field_t *cdashig_domain_field_local_var = malloc(sizeof(cdashig_domain_field_t));
    if (!cdashig_domain_field_local_var) {
        return NULL;
    }
    cdashig_domain_field_local_var->ordinal = ordinal;
    cdashig_domain_field_local_var->name = name;
    cdashig_domain_field_local_var->label = label;
    cdashig_domain_field_local_var->definition = definition;
    cdashig_domain_field_local_var->question_text = question_text;
    cdashig_domain_field_local_var->prompt = prompt;
    cdashig_domain_field_local_var->completion_instructions = completion_instructions;
    cdashig_domain_field_local_var->implementation_notes = implementation_notes;
    cdashig_domain_field_local_var->simple_datatype = simple_datatype;
    cdashig_domain_field_local_var->mapping_instructions = mapping_instructions;
    cdashig_domain_field_local_var->core = core;
    cdashig_domain_field_local_var->_links = _links;

    cdashig_domain_field_local_var->_library_owned = 1;
    return cdashig_domain_field_local_var;
}

__attribute__((deprecated)) cdashig_domain_field_t *cdashig_domain_field_create(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *question_text,
    char *prompt,
    char *completion_instructions,
    char *implementation_notes,
    char *simple_datatype,
    char *mapping_instructions,
    char *core,
    cdashig_domain_field_links_t *_links
    ) {
    return cdashig_domain_field_create_internal (
        ordinal,
        name,
        label,
        definition,
        question_text,
        prompt,
        completion_instructions,
        implementation_notes,
        simple_datatype,
        mapping_instructions,
        core,
        _links
        );
}

void cdashig_domain_field_free(cdashig_domain_field_t *cdashig_domain_field) {
    if(NULL == cdashig_domain_field){
        return ;
    }
    if(cdashig_domain_field->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_field_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain_field->ordinal) {
        free(cdashig_domain_field->ordinal);
        cdashig_domain_field->ordinal = NULL;
    }
    if (cdashig_domain_field->name) {
        free(cdashig_domain_field->name);
        cdashig_domain_field->name = NULL;
    }
    if (cdashig_domain_field->label) {
        free(cdashig_domain_field->label);
        cdashig_domain_field->label = NULL;
    }
    if (cdashig_domain_field->definition) {
        free(cdashig_domain_field->definition);
        cdashig_domain_field->definition = NULL;
    }
    if (cdashig_domain_field->question_text) {
        free(cdashig_domain_field->question_text);
        cdashig_domain_field->question_text = NULL;
    }
    if (cdashig_domain_field->prompt) {
        free(cdashig_domain_field->prompt);
        cdashig_domain_field->prompt = NULL;
    }
    if (cdashig_domain_field->completion_instructions) {
        free(cdashig_domain_field->completion_instructions);
        cdashig_domain_field->completion_instructions = NULL;
    }
    if (cdashig_domain_field->implementation_notes) {
        free(cdashig_domain_field->implementation_notes);
        cdashig_domain_field->implementation_notes = NULL;
    }
    if (cdashig_domain_field->simple_datatype) {
        free(cdashig_domain_field->simple_datatype);
        cdashig_domain_field->simple_datatype = NULL;
    }
    if (cdashig_domain_field->mapping_instructions) {
        free(cdashig_domain_field->mapping_instructions);
        cdashig_domain_field->mapping_instructions = NULL;
    }
    if (cdashig_domain_field->core) {
        free(cdashig_domain_field->core);
        cdashig_domain_field->core = NULL;
    }
    if (cdashig_domain_field->_links) {
        cdashig_domain_field_links_free(cdashig_domain_field->_links);
        cdashig_domain_field->_links = NULL;
    }
    free(cdashig_domain_field);
}

cJSON *cdashig_domain_field_convertToJSON(cdashig_domain_field_t *cdashig_domain_field) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain_field->ordinal
    if(cdashig_domain_field->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_domain_field->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->name
    if(cdashig_domain_field->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_domain_field->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->label
    if(cdashig_domain_field->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_domain_field->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->definition
    if(cdashig_domain_field->definition) {
    if(cJSON_AddStringToObject(item, "definition", cdashig_domain_field->definition) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->question_text
    if(cdashig_domain_field->question_text) {
    if(cJSON_AddStringToObject(item, "questionText", cdashig_domain_field->question_text) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->prompt
    if(cdashig_domain_field->prompt) {
    if(cJSON_AddStringToObject(item, "prompt", cdashig_domain_field->prompt) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->completion_instructions
    if(cdashig_domain_field->completion_instructions) {
    if(cJSON_AddStringToObject(item, "completionInstructions", cdashig_domain_field->completion_instructions) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->implementation_notes
    if(cdashig_domain_field->implementation_notes) {
    if(cJSON_AddStringToObject(item, "implementationNotes", cdashig_domain_field->implementation_notes) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->simple_datatype
    if(cdashig_domain_field->simple_datatype) {
    if(cJSON_AddStringToObject(item, "simpleDatatype", cdashig_domain_field->simple_datatype) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->mapping_instructions
    if(cdashig_domain_field->mapping_instructions) {
    if(cJSON_AddStringToObject(item, "mappingInstructions", cdashig_domain_field->mapping_instructions) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->core
    if(cdashig_domain_field->core) {
    if(cJSON_AddStringToObject(item, "core", cdashig_domain_field->core) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain_field->_links
    if(cdashig_domain_field->_links) {
    cJSON *_links_local_JSON = cdashig_domain_field_links_convertToJSON(cdashig_domain_field->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cdashig_domain_field_t *cdashig_domain_field_parseFromJSON(cJSON *cdashig_domain_fieldJSON){

    cdashig_domain_field_t *cdashig_domain_field_local_var = NULL;

    // define the local variable for cdashig_domain_field->_links
    cdashig_domain_field_links_t *_links_local_nonprim = NULL;

    // cdashig_domain_field->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->question_text
    cJSON *question_text = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "questionText");
    if (cJSON_IsNull(question_text)) {
        question_text = NULL;
    }
    if (question_text) { 
    if(!cJSON_IsString(question_text) && !cJSON_IsNull(question_text))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->prompt
    cJSON *prompt = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "prompt");
    if (cJSON_IsNull(prompt)) {
        prompt = NULL;
    }
    if (prompt) { 
    if(!cJSON_IsString(prompt) && !cJSON_IsNull(prompt))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->completion_instructions
    cJSON *completion_instructions = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "completionInstructions");
    if (cJSON_IsNull(completion_instructions)) {
        completion_instructions = NULL;
    }
    if (completion_instructions) { 
    if(!cJSON_IsString(completion_instructions) && !cJSON_IsNull(completion_instructions))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->implementation_notes
    cJSON *implementation_notes = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "implementationNotes");
    if (cJSON_IsNull(implementation_notes)) {
        implementation_notes = NULL;
    }
    if (implementation_notes) { 
    if(!cJSON_IsString(implementation_notes) && !cJSON_IsNull(implementation_notes))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->simple_datatype
    cJSON *simple_datatype = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "simpleDatatype");
    if (cJSON_IsNull(simple_datatype)) {
        simple_datatype = NULL;
    }
    if (simple_datatype) { 
    if(!cJSON_IsString(simple_datatype) && !cJSON_IsNull(simple_datatype))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->mapping_instructions
    cJSON *mapping_instructions = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "mappingInstructions");
    if (cJSON_IsNull(mapping_instructions)) {
        mapping_instructions = NULL;
    }
    if (mapping_instructions) { 
    if(!cJSON_IsString(mapping_instructions) && !cJSON_IsNull(mapping_instructions))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->core
    cJSON *core = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "core");
    if (cJSON_IsNull(core)) {
        core = NULL;
    }
    if (core) { 
    if(!cJSON_IsString(core) && !cJSON_IsNull(core))
    {
    goto end; //String
    }
    }

    // cdashig_domain_field->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_domain_fieldJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_domain_field_links_parseFromJSON(_links); //nonprimitive
    }


    cdashig_domain_field_local_var = cdashig_domain_field_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        question_text && !cJSON_IsNull(question_text) ? strdup(question_text->valuestring) : NULL,
        prompt && !cJSON_IsNull(prompt) ? strdup(prompt->valuestring) : NULL,
        completion_instructions && !cJSON_IsNull(completion_instructions) ? strdup(completion_instructions->valuestring) : NULL,
        implementation_notes && !cJSON_IsNull(implementation_notes) ? strdup(implementation_notes->valuestring) : NULL,
        simple_datatype && !cJSON_IsNull(simple_datatype) ? strdup(simple_datatype->valuestring) : NULL,
        mapping_instructions && !cJSON_IsNull(mapping_instructions) ? strdup(mapping_instructions->valuestring) : NULL,
        core && !cJSON_IsNull(core) ? strdup(core->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdashig_domain_field_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_domain_field_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
