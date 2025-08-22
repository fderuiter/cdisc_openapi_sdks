#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_class_field.h"



static cdash_class_field_t *cdash_class_field_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *question_text,
    char *prompt,
    char *simple_datatype,
    char *implementation_notes,
    char *mapping_instructions,
    cdash_class_field_links_t *_links
    ) {
    cdash_class_field_t *cdash_class_field_local_var = malloc(sizeof(cdash_class_field_t));
    if (!cdash_class_field_local_var) {
        return NULL;
    }
    cdash_class_field_local_var->ordinal = ordinal;
    cdash_class_field_local_var->name = name;
    cdash_class_field_local_var->label = label;
    cdash_class_field_local_var->definition = definition;
    cdash_class_field_local_var->question_text = question_text;
    cdash_class_field_local_var->prompt = prompt;
    cdash_class_field_local_var->simple_datatype = simple_datatype;
    cdash_class_field_local_var->implementation_notes = implementation_notes;
    cdash_class_field_local_var->mapping_instructions = mapping_instructions;
    cdash_class_field_local_var->_links = _links;

    cdash_class_field_local_var->_library_owned = 1;
    return cdash_class_field_local_var;
}

__attribute__((deprecated)) cdash_class_field_t *cdash_class_field_create(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *question_text,
    char *prompt,
    char *simple_datatype,
    char *implementation_notes,
    char *mapping_instructions,
    cdash_class_field_links_t *_links
    ) {
    return cdash_class_field_create_internal (
        ordinal,
        name,
        label,
        definition,
        question_text,
        prompt,
        simple_datatype,
        implementation_notes,
        mapping_instructions,
        _links
        );
}

void cdash_class_field_free(cdash_class_field_t *cdash_class_field) {
    if(NULL == cdash_class_field){
        return ;
    }
    if(cdash_class_field->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_class_field_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_class_field->ordinal) {
        free(cdash_class_field->ordinal);
        cdash_class_field->ordinal = NULL;
    }
    if (cdash_class_field->name) {
        free(cdash_class_field->name);
        cdash_class_field->name = NULL;
    }
    if (cdash_class_field->label) {
        free(cdash_class_field->label);
        cdash_class_field->label = NULL;
    }
    if (cdash_class_field->definition) {
        free(cdash_class_field->definition);
        cdash_class_field->definition = NULL;
    }
    if (cdash_class_field->question_text) {
        free(cdash_class_field->question_text);
        cdash_class_field->question_text = NULL;
    }
    if (cdash_class_field->prompt) {
        free(cdash_class_field->prompt);
        cdash_class_field->prompt = NULL;
    }
    if (cdash_class_field->simple_datatype) {
        free(cdash_class_field->simple_datatype);
        cdash_class_field->simple_datatype = NULL;
    }
    if (cdash_class_field->implementation_notes) {
        free(cdash_class_field->implementation_notes);
        cdash_class_field->implementation_notes = NULL;
    }
    if (cdash_class_field->mapping_instructions) {
        free(cdash_class_field->mapping_instructions);
        cdash_class_field->mapping_instructions = NULL;
    }
    if (cdash_class_field->_links) {
        cdash_class_field_links_free(cdash_class_field->_links);
        cdash_class_field->_links = NULL;
    }
    free(cdash_class_field);
}

cJSON *cdash_class_field_convertToJSON(cdash_class_field_t *cdash_class_field) {
    cJSON *item = cJSON_CreateObject();

    // cdash_class_field->ordinal
    if(cdash_class_field->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdash_class_field->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->name
    if(cdash_class_field->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_class_field->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->label
    if(cdash_class_field->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_class_field->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->definition
    if(cdash_class_field->definition) {
    if(cJSON_AddStringToObject(item, "definition", cdash_class_field->definition) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->question_text
    if(cdash_class_field->question_text) {
    if(cJSON_AddStringToObject(item, "questionText", cdash_class_field->question_text) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->prompt
    if(cdash_class_field->prompt) {
    if(cJSON_AddStringToObject(item, "prompt", cdash_class_field->prompt) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->simple_datatype
    if(cdash_class_field->simple_datatype) {
    if(cJSON_AddStringToObject(item, "simpleDatatype", cdash_class_field->simple_datatype) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->implementation_notes
    if(cdash_class_field->implementation_notes) {
    if(cJSON_AddStringToObject(item, "implementationNotes", cdash_class_field->implementation_notes) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->mapping_instructions
    if(cdash_class_field->mapping_instructions) {
    if(cJSON_AddStringToObject(item, "mappingInstructions", cdash_class_field->mapping_instructions) == NULL) {
    goto fail; //String
    }
    }


    // cdash_class_field->_links
    if(cdash_class_field->_links) {
    cJSON *_links_local_JSON = cdash_class_field_links_convertToJSON(cdash_class_field->_links);
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

cdash_class_field_t *cdash_class_field_parseFromJSON(cJSON *cdash_class_fieldJSON){

    cdash_class_field_t *cdash_class_field_local_var = NULL;

    // define the local variable for cdash_class_field->_links
    cdash_class_field_links_t *_links_local_nonprim = NULL;

    // cdash_class_field->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdash_class_field->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_class_field->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_class_field->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // cdash_class_field->question_text
    cJSON *question_text = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "questionText");
    if (cJSON_IsNull(question_text)) {
        question_text = NULL;
    }
    if (question_text) { 
    if(!cJSON_IsString(question_text) && !cJSON_IsNull(question_text))
    {
    goto end; //String
    }
    }

    // cdash_class_field->prompt
    cJSON *prompt = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "prompt");
    if (cJSON_IsNull(prompt)) {
        prompt = NULL;
    }
    if (prompt) { 
    if(!cJSON_IsString(prompt) && !cJSON_IsNull(prompt))
    {
    goto end; //String
    }
    }

    // cdash_class_field->simple_datatype
    cJSON *simple_datatype = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "simpleDatatype");
    if (cJSON_IsNull(simple_datatype)) {
        simple_datatype = NULL;
    }
    if (simple_datatype) { 
    if(!cJSON_IsString(simple_datatype) && !cJSON_IsNull(simple_datatype))
    {
    goto end; //String
    }
    }

    // cdash_class_field->implementation_notes
    cJSON *implementation_notes = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "implementationNotes");
    if (cJSON_IsNull(implementation_notes)) {
        implementation_notes = NULL;
    }
    if (implementation_notes) { 
    if(!cJSON_IsString(implementation_notes) && !cJSON_IsNull(implementation_notes))
    {
    goto end; //String
    }
    }

    // cdash_class_field->mapping_instructions
    cJSON *mapping_instructions = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "mappingInstructions");
    if (cJSON_IsNull(mapping_instructions)) {
        mapping_instructions = NULL;
    }
    if (mapping_instructions) { 
    if(!cJSON_IsString(mapping_instructions) && !cJSON_IsNull(mapping_instructions))
    {
    goto end; //String
    }
    }

    // cdash_class_field->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_class_fieldJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_class_field_links_parseFromJSON(_links); //nonprimitive
    }


    cdash_class_field_local_var = cdash_class_field_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        question_text && !cJSON_IsNull(question_text) ? strdup(question_text->valuestring) : NULL,
        prompt && !cJSON_IsNull(prompt) ? strdup(prompt->valuestring) : NULL,
        simple_datatype && !cJSON_IsNull(simple_datatype) ? strdup(simple_datatype->valuestring) : NULL,
        implementation_notes && !cJSON_IsNull(implementation_notes) ? strdup(implementation_notes->valuestring) : NULL,
        mapping_instructions && !cJSON_IsNull(mapping_instructions) ? strdup(mapping_instructions->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdash_class_field_local_var;
end:
    if (_links_local_nonprim) {
        cdash_class_field_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
