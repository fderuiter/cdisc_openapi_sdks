#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_codelist_terms.h"



static ct_codelist_terms_t *ct_codelist_terms_create_internal(
    char *concept_id,
    char *extensible,
    char *name,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_codelist_terms_links_t *_links
    ) {
    ct_codelist_terms_t *ct_codelist_terms_local_var = malloc(sizeof(ct_codelist_terms_t));
    if (!ct_codelist_terms_local_var) {
        return NULL;
    }
    ct_codelist_terms_local_var->concept_id = concept_id;
    ct_codelist_terms_local_var->extensible = extensible;
    ct_codelist_terms_local_var->name = name;
    ct_codelist_terms_local_var->submission_value = submission_value;
    ct_codelist_terms_local_var->definition = definition;
    ct_codelist_terms_local_var->preferred_term = preferred_term;
    ct_codelist_terms_local_var->synonyms = synonyms;
    ct_codelist_terms_local_var->_links = _links;

    ct_codelist_terms_local_var->_library_owned = 1;
    return ct_codelist_terms_local_var;
}

__attribute__((deprecated)) ct_codelist_terms_t *ct_codelist_terms_create(
    char *concept_id,
    char *extensible,
    char *name,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_codelist_terms_links_t *_links
    ) {
    return ct_codelist_terms_create_internal (
        concept_id,
        extensible,
        name,
        submission_value,
        definition,
        preferred_term,
        synonyms,
        _links
        );
}

void ct_codelist_terms_free(ct_codelist_terms_t *ct_codelist_terms) {
    if(NULL == ct_codelist_terms){
        return ;
    }
    if(ct_codelist_terms->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_codelist_terms_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_codelist_terms->concept_id) {
        free(ct_codelist_terms->concept_id);
        ct_codelist_terms->concept_id = NULL;
    }
    if (ct_codelist_terms->extensible) {
        free(ct_codelist_terms->extensible);
        ct_codelist_terms->extensible = NULL;
    }
    if (ct_codelist_terms->name) {
        free(ct_codelist_terms->name);
        ct_codelist_terms->name = NULL;
    }
    if (ct_codelist_terms->submission_value) {
        free(ct_codelist_terms->submission_value);
        ct_codelist_terms->submission_value = NULL;
    }
    if (ct_codelist_terms->definition) {
        free(ct_codelist_terms->definition);
        ct_codelist_terms->definition = NULL;
    }
    if (ct_codelist_terms->preferred_term) {
        free(ct_codelist_terms->preferred_term);
        ct_codelist_terms->preferred_term = NULL;
    }
    if (ct_codelist_terms->synonyms) {
        list_ForEach(listEntry, ct_codelist_terms->synonyms) {
            free(listEntry->data);
        }
        list_freeList(ct_codelist_terms->synonyms);
        ct_codelist_terms->synonyms = NULL;
    }
    if (ct_codelist_terms->_links) {
        ct_codelist_terms_links_free(ct_codelist_terms->_links);
        ct_codelist_terms->_links = NULL;
    }
    free(ct_codelist_terms);
}

cJSON *ct_codelist_terms_convertToJSON(ct_codelist_terms_t *ct_codelist_terms) {
    cJSON *item = cJSON_CreateObject();

    // ct_codelist_terms->concept_id
    if(ct_codelist_terms->concept_id) {
    if(cJSON_AddStringToObject(item, "conceptId", ct_codelist_terms->concept_id) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_terms->extensible
    if(ct_codelist_terms->extensible) {
    if(cJSON_AddStringToObject(item, "extensible", ct_codelist_terms->extensible) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_terms->name
    if(ct_codelist_terms->name) {
    if(cJSON_AddStringToObject(item, "name", ct_codelist_terms->name) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_terms->submission_value
    if(ct_codelist_terms->submission_value) {
    if(cJSON_AddStringToObject(item, "submissionValue", ct_codelist_terms->submission_value) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_terms->definition
    if(ct_codelist_terms->definition) {
    if(cJSON_AddStringToObject(item, "definition", ct_codelist_terms->definition) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_terms->preferred_term
    if(ct_codelist_terms->preferred_term) {
    if(cJSON_AddStringToObject(item, "preferredTerm", ct_codelist_terms->preferred_term) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist_terms->synonyms
    if(ct_codelist_terms->synonyms) {
    cJSON *synonyms = cJSON_AddArrayToObject(item, "synonyms");
    if(synonyms == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *synonymsListEntry;
    list_ForEach(synonymsListEntry, ct_codelist_terms->synonyms) {
    if(cJSON_AddStringToObject(synonyms, "", synonymsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // ct_codelist_terms->_links
    if(ct_codelist_terms->_links) {
    cJSON *_links_local_JSON = ct_codelist_terms_links_convertToJSON(ct_codelist_terms->_links);
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

ct_codelist_terms_t *ct_codelist_terms_parseFromJSON(cJSON *ct_codelist_termsJSON){

    ct_codelist_terms_t *ct_codelist_terms_local_var = NULL;

    // define the local list for ct_codelist_terms->synonyms
    list_t *synonymsList = NULL;

    // define the local variable for ct_codelist_terms->_links
    ct_codelist_terms_links_t *_links_local_nonprim = NULL;

    // ct_codelist_terms->concept_id
    cJSON *concept_id = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "conceptId");
    if (cJSON_IsNull(concept_id)) {
        concept_id = NULL;
    }
    if (concept_id) { 
    if(!cJSON_IsString(concept_id) && !cJSON_IsNull(concept_id))
    {
    goto end; //String
    }
    }

    // ct_codelist_terms->extensible
    cJSON *extensible = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "extensible");
    if (cJSON_IsNull(extensible)) {
        extensible = NULL;
    }
    if (extensible) { 
    if(!cJSON_IsString(extensible) && !cJSON_IsNull(extensible))
    {
    goto end; //String
    }
    }

    // ct_codelist_terms->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // ct_codelist_terms->submission_value
    cJSON *submission_value = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "submissionValue");
    if (cJSON_IsNull(submission_value)) {
        submission_value = NULL;
    }
    if (submission_value) { 
    if(!cJSON_IsString(submission_value) && !cJSON_IsNull(submission_value))
    {
    goto end; //String
    }
    }

    // ct_codelist_terms->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // ct_codelist_terms->preferred_term
    cJSON *preferred_term = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "preferredTerm");
    if (cJSON_IsNull(preferred_term)) {
        preferred_term = NULL;
    }
    if (preferred_term) { 
    if(!cJSON_IsString(preferred_term) && !cJSON_IsNull(preferred_term))
    {
    goto end; //String
    }
    }

    // ct_codelist_terms->synonyms
    cJSON *synonyms = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "synonyms");
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

    // ct_codelist_terms->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(ct_codelist_termsJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = ct_codelist_terms_links_parseFromJSON(_links); //nonprimitive
    }


    ct_codelist_terms_local_var = ct_codelist_terms_create_internal (
        concept_id && !cJSON_IsNull(concept_id) ? strdup(concept_id->valuestring) : NULL,
        extensible && !cJSON_IsNull(extensible) ? strdup(extensible->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        submission_value && !cJSON_IsNull(submission_value) ? strdup(submission_value->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        preferred_term && !cJSON_IsNull(preferred_term) ? strdup(preferred_term->valuestring) : NULL,
        synonyms ? synonymsList : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return ct_codelist_terms_local_var;
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
        ct_codelist_terms_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
