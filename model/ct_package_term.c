#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_package_term.h"



static ct_package_term_t *ct_package_term_create_internal(
    char *concept_id,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms
    ) {
    ct_package_term_t *ct_package_term_local_var = malloc(sizeof(ct_package_term_t));
    if (!ct_package_term_local_var) {
        return NULL;
    }
    ct_package_term_local_var->concept_id = concept_id;
    ct_package_term_local_var->submission_value = submission_value;
    ct_package_term_local_var->definition = definition;
    ct_package_term_local_var->preferred_term = preferred_term;
    ct_package_term_local_var->synonyms = synonyms;

    ct_package_term_local_var->_library_owned = 1;
    return ct_package_term_local_var;
}

__attribute__((deprecated)) ct_package_term_t *ct_package_term_create(
    char *concept_id,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms
    ) {
    return ct_package_term_create_internal (
        concept_id,
        submission_value,
        definition,
        preferred_term,
        synonyms
        );
}

void ct_package_term_free(ct_package_term_t *ct_package_term) {
    if(NULL == ct_package_term){
        return ;
    }
    if(ct_package_term->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_package_term_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_package_term->concept_id) {
        free(ct_package_term->concept_id);
        ct_package_term->concept_id = NULL;
    }
    if (ct_package_term->submission_value) {
        free(ct_package_term->submission_value);
        ct_package_term->submission_value = NULL;
    }
    if (ct_package_term->definition) {
        free(ct_package_term->definition);
        ct_package_term->definition = NULL;
    }
    if (ct_package_term->preferred_term) {
        free(ct_package_term->preferred_term);
        ct_package_term->preferred_term = NULL;
    }
    if (ct_package_term->synonyms) {
        list_ForEach(listEntry, ct_package_term->synonyms) {
            free(listEntry->data);
        }
        list_freeList(ct_package_term->synonyms);
        ct_package_term->synonyms = NULL;
    }
    free(ct_package_term);
}

cJSON *ct_package_term_convertToJSON(ct_package_term_t *ct_package_term) {
    cJSON *item = cJSON_CreateObject();

    // ct_package_term->concept_id
    if(ct_package_term->concept_id) {
    if(cJSON_AddStringToObject(item, "conceptId", ct_package_term->concept_id) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_term->submission_value
    if(ct_package_term->submission_value) {
    if(cJSON_AddStringToObject(item, "submissionValue", ct_package_term->submission_value) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_term->definition
    if(ct_package_term->definition) {
    if(cJSON_AddStringToObject(item, "definition", ct_package_term->definition) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_term->preferred_term
    if(ct_package_term->preferred_term) {
    if(cJSON_AddStringToObject(item, "preferredTerm", ct_package_term->preferred_term) == NULL) {
    goto fail; //String
    }
    }


    // ct_package_term->synonyms
    if(ct_package_term->synonyms) {
    cJSON *synonyms = cJSON_AddArrayToObject(item, "synonyms");
    if(synonyms == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *synonymsListEntry;
    list_ForEach(synonymsListEntry, ct_package_term->synonyms) {
    if(cJSON_AddStringToObject(synonyms, "", synonymsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

ct_package_term_t *ct_package_term_parseFromJSON(cJSON *ct_package_termJSON){

    ct_package_term_t *ct_package_term_local_var = NULL;

    // define the local list for ct_package_term->synonyms
    list_t *synonymsList = NULL;

    // ct_package_term->concept_id
    cJSON *concept_id = cJSON_GetObjectItemCaseSensitive(ct_package_termJSON, "conceptId");
    if (cJSON_IsNull(concept_id)) {
        concept_id = NULL;
    }
    if (concept_id) { 
    if(!cJSON_IsString(concept_id) && !cJSON_IsNull(concept_id))
    {
    goto end; //String
    }
    }

    // ct_package_term->submission_value
    cJSON *submission_value = cJSON_GetObjectItemCaseSensitive(ct_package_termJSON, "submissionValue");
    if (cJSON_IsNull(submission_value)) {
        submission_value = NULL;
    }
    if (submission_value) { 
    if(!cJSON_IsString(submission_value) && !cJSON_IsNull(submission_value))
    {
    goto end; //String
    }
    }

    // ct_package_term->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(ct_package_termJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // ct_package_term->preferred_term
    cJSON *preferred_term = cJSON_GetObjectItemCaseSensitive(ct_package_termJSON, "preferredTerm");
    if (cJSON_IsNull(preferred_term)) {
        preferred_term = NULL;
    }
    if (preferred_term) { 
    if(!cJSON_IsString(preferred_term) && !cJSON_IsNull(preferred_term))
    {
    goto end; //String
    }
    }

    // ct_package_term->synonyms
    cJSON *synonyms = cJSON_GetObjectItemCaseSensitive(ct_package_termJSON, "synonyms");
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


    ct_package_term_local_var = ct_package_term_create_internal (
        concept_id && !cJSON_IsNull(concept_id) ? strdup(concept_id->valuestring) : NULL,
        submission_value && !cJSON_IsNull(submission_value) ? strdup(submission_value->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        preferred_term && !cJSON_IsNull(preferred_term) ? strdup(preferred_term->valuestring) : NULL,
        synonyms ? synonymsList : NULL
        );

    return ct_package_term_local_var;
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
    return NULL;

}
