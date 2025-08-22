#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_term.h"



static ct_term_t *ct_term_create_internal(
    char *concept_id,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_term_links_t *_links
    ) {
    ct_term_t *ct_term_local_var = malloc(sizeof(ct_term_t));
    if (!ct_term_local_var) {
        return NULL;
    }
    ct_term_local_var->concept_id = concept_id;
    ct_term_local_var->submission_value = submission_value;
    ct_term_local_var->definition = definition;
    ct_term_local_var->preferred_term = preferred_term;
    ct_term_local_var->synonyms = synonyms;
    ct_term_local_var->_links = _links;

    ct_term_local_var->_library_owned = 1;
    return ct_term_local_var;
}

__attribute__((deprecated)) ct_term_t *ct_term_create(
    char *concept_id,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_term_links_t *_links
    ) {
    return ct_term_create_internal (
        concept_id,
        submission_value,
        definition,
        preferred_term,
        synonyms,
        _links
        );
}

void ct_term_free(ct_term_t *ct_term) {
    if(NULL == ct_term){
        return ;
    }
    if(ct_term->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_term_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_term->concept_id) {
        free(ct_term->concept_id);
        ct_term->concept_id = NULL;
    }
    if (ct_term->submission_value) {
        free(ct_term->submission_value);
        ct_term->submission_value = NULL;
    }
    if (ct_term->definition) {
        free(ct_term->definition);
        ct_term->definition = NULL;
    }
    if (ct_term->preferred_term) {
        free(ct_term->preferred_term);
        ct_term->preferred_term = NULL;
    }
    if (ct_term->synonyms) {
        list_ForEach(listEntry, ct_term->synonyms) {
            free(listEntry->data);
        }
        list_freeList(ct_term->synonyms);
        ct_term->synonyms = NULL;
    }
    if (ct_term->_links) {
        ct_term_links_free(ct_term->_links);
        ct_term->_links = NULL;
    }
    free(ct_term);
}

cJSON *ct_term_convertToJSON(ct_term_t *ct_term) {
    cJSON *item = cJSON_CreateObject();

    // ct_term->concept_id
    if(ct_term->concept_id) {
    if(cJSON_AddStringToObject(item, "conceptId", ct_term->concept_id) == NULL) {
    goto fail; //String
    }
    }


    // ct_term->submission_value
    if(ct_term->submission_value) {
    if(cJSON_AddStringToObject(item, "submissionValue", ct_term->submission_value) == NULL) {
    goto fail; //String
    }
    }


    // ct_term->definition
    if(ct_term->definition) {
    if(cJSON_AddStringToObject(item, "definition", ct_term->definition) == NULL) {
    goto fail; //String
    }
    }


    // ct_term->preferred_term
    if(ct_term->preferred_term) {
    if(cJSON_AddStringToObject(item, "preferredTerm", ct_term->preferred_term) == NULL) {
    goto fail; //String
    }
    }


    // ct_term->synonyms
    if(ct_term->synonyms) {
    cJSON *synonyms = cJSON_AddArrayToObject(item, "synonyms");
    if(synonyms == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *synonymsListEntry;
    list_ForEach(synonymsListEntry, ct_term->synonyms) {
    if(cJSON_AddStringToObject(synonyms, "", synonymsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // ct_term->_links
    if(ct_term->_links) {
    cJSON *_links_local_JSON = ct_term_links_convertToJSON(ct_term->_links);
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

ct_term_t *ct_term_parseFromJSON(cJSON *ct_termJSON){

    ct_term_t *ct_term_local_var = NULL;

    // define the local list for ct_term->synonyms
    list_t *synonymsList = NULL;

    // define the local variable for ct_term->_links
    ct_term_links_t *_links_local_nonprim = NULL;

    // ct_term->concept_id
    cJSON *concept_id = cJSON_GetObjectItemCaseSensitive(ct_termJSON, "conceptId");
    if (cJSON_IsNull(concept_id)) {
        concept_id = NULL;
    }
    if (concept_id) { 
    if(!cJSON_IsString(concept_id) && !cJSON_IsNull(concept_id))
    {
    goto end; //String
    }
    }

    // ct_term->submission_value
    cJSON *submission_value = cJSON_GetObjectItemCaseSensitive(ct_termJSON, "submissionValue");
    if (cJSON_IsNull(submission_value)) {
        submission_value = NULL;
    }
    if (submission_value) { 
    if(!cJSON_IsString(submission_value) && !cJSON_IsNull(submission_value))
    {
    goto end; //String
    }
    }

    // ct_term->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(ct_termJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // ct_term->preferred_term
    cJSON *preferred_term = cJSON_GetObjectItemCaseSensitive(ct_termJSON, "preferredTerm");
    if (cJSON_IsNull(preferred_term)) {
        preferred_term = NULL;
    }
    if (preferred_term) { 
    if(!cJSON_IsString(preferred_term) && !cJSON_IsNull(preferred_term))
    {
    goto end; //String
    }
    }

    // ct_term->synonyms
    cJSON *synonyms = cJSON_GetObjectItemCaseSensitive(ct_termJSON, "synonyms");
    if (cJSON_IsNull(synonyms)) {
        synonyms = NULL;
    }
    if (synonyms) { 
    cJSON *synonyms_local = NULL;
    if(!cJSON_IsArray(synonyms)) {
        goto end;//primitive container
    }
    synonymsList = list_createList();

    cJSON_ArrayForEach(synonyms_local, synonyms)
    {
        if(!cJSON_IsString(synonyms_local))
        {
            goto end;
        }
        list_addElement(synonymsList , strdup(synonyms_local->valuestring));
    }
    }

    // ct_term->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(ct_termJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = ct_term_links_parseFromJSON(_links); //nonprimitive
    }


    ct_term_local_var = ct_term_create_internal (
        concept_id && !cJSON_IsNull(concept_id) ? strdup(concept_id->valuestring) : NULL,
        submission_value && !cJSON_IsNull(submission_value) ? strdup(submission_value->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        preferred_term && !cJSON_IsNull(preferred_term) ? strdup(preferred_term->valuestring) : NULL,
        synonyms ? synonymsList : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return ct_term_local_var;
end:
    if (synonymsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, synonymsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(synonymsList);
        synonymsList = NULL;
    }
    if (_links_local_nonprim) {
        ct_term_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
