#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ct_codelist.h"



static ct_codelist_t *ct_codelist_create_internal(
    char *concept_id,
    char *extensible,
    char *name,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_codelist_links_t *_links,
    list_t *terms
    ) {
    ct_codelist_t *ct_codelist_local_var = malloc(sizeof(ct_codelist_t));
    if (!ct_codelist_local_var) {
        return NULL;
    }
    ct_codelist_local_var->concept_id = concept_id;
    ct_codelist_local_var->extensible = extensible;
    ct_codelist_local_var->name = name;
    ct_codelist_local_var->submission_value = submission_value;
    ct_codelist_local_var->definition = definition;
    ct_codelist_local_var->preferred_term = preferred_term;
    ct_codelist_local_var->synonyms = synonyms;
    ct_codelist_local_var->_links = _links;
    ct_codelist_local_var->terms = terms;

    ct_codelist_local_var->_library_owned = 1;
    return ct_codelist_local_var;
}

__attribute__((deprecated)) ct_codelist_t *ct_codelist_create(
    char *concept_id,
    char *extensible,
    char *name,
    char *submission_value,
    char *definition,
    char *preferred_term,
    list_t *synonyms,
    ct_codelist_links_t *_links,
    list_t *terms
    ) {
    return ct_codelist_create_internal (
        concept_id,
        extensible,
        name,
        submission_value,
        definition,
        preferred_term,
        synonyms,
        _links,
        terms
        );
}

void ct_codelist_free(ct_codelist_t *ct_codelist) {
    if(NULL == ct_codelist){
        return ;
    }
    if(ct_codelist->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ct_codelist_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ct_codelist->concept_id) {
        free(ct_codelist->concept_id);
        ct_codelist->concept_id = NULL;
    }
    if (ct_codelist->extensible) {
        free(ct_codelist->extensible);
        ct_codelist->extensible = NULL;
    }
    if (ct_codelist->name) {
        free(ct_codelist->name);
        ct_codelist->name = NULL;
    }
    if (ct_codelist->submission_value) {
        free(ct_codelist->submission_value);
        ct_codelist->submission_value = NULL;
    }
    if (ct_codelist->definition) {
        free(ct_codelist->definition);
        ct_codelist->definition = NULL;
    }
    if (ct_codelist->preferred_term) {
        free(ct_codelist->preferred_term);
        ct_codelist->preferred_term = NULL;
    }
    if (ct_codelist->synonyms) {
        list_ForEach(listEntry, ct_codelist->synonyms) {
            free(listEntry->data);
        }
        list_freeList(ct_codelist->synonyms);
        ct_codelist->synonyms = NULL;
    }
    if (ct_codelist->_links) {
        ct_codelist_links_free(ct_codelist->_links);
        ct_codelist->_links = NULL;
    }
    if (ct_codelist->terms) {
        list_ForEach(listEntry, ct_codelist->terms) {
            ct_package_term_free(listEntry->data);
        }
        list_freeList(ct_codelist->terms);
        ct_codelist->terms = NULL;
    }
    free(ct_codelist);
}

cJSON *ct_codelist_convertToJSON(ct_codelist_t *ct_codelist) {
    cJSON *item = cJSON_CreateObject();

    // ct_codelist->concept_id
    if(ct_codelist->concept_id) {
    if(cJSON_AddStringToObject(item, "conceptId", ct_codelist->concept_id) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist->extensible
    if(ct_codelist->extensible) {
    if(cJSON_AddStringToObject(item, "extensible", ct_codelist->extensible) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist->name
    if(ct_codelist->name) {
    if(cJSON_AddStringToObject(item, "name", ct_codelist->name) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist->submission_value
    if(ct_codelist->submission_value) {
    if(cJSON_AddStringToObject(item, "submissionValue", ct_codelist->submission_value) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist->definition
    if(ct_codelist->definition) {
    if(cJSON_AddStringToObject(item, "definition", ct_codelist->definition) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist->preferred_term
    if(ct_codelist->preferred_term) {
    if(cJSON_AddStringToObject(item, "preferredTerm", ct_codelist->preferred_term) == NULL) {
    goto fail; //String
    }
    }


    // ct_codelist->synonyms
    if(ct_codelist->synonyms) {
    cJSON *synonyms = cJSON_AddArrayToObject(item, "synonyms");
    if(synonyms == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *synonymsListEntry;
    list_ForEach(synonymsListEntry, ct_codelist->synonyms) {
    if(cJSON_AddStringToObject(synonyms, "", synonymsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // ct_codelist->_links
    if(ct_codelist->_links) {
    cJSON *_links_local_JSON = ct_codelist_links_convertToJSON(ct_codelist->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ct_codelist->terms
    if(ct_codelist->terms) {
    cJSON *terms = cJSON_AddArrayToObject(item, "terms");
    if(terms == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *termsListEntry;
    if (ct_codelist->terms) {
    list_ForEach(termsListEntry, ct_codelist->terms) {
    cJSON *itemLocal = ct_package_term_convertToJSON(termsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(terms, itemLocal);
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

ct_codelist_t *ct_codelist_parseFromJSON(cJSON *ct_codelistJSON){

    ct_codelist_t *ct_codelist_local_var = NULL;

    // define the local list for ct_codelist->synonyms
    list_t *synonymsList = NULL;

    // define the local variable for ct_codelist->_links
    ct_codelist_links_t *_links_local_nonprim = NULL;

    // define the local list for ct_codelist->terms
    list_t *termsList = NULL;

    // ct_codelist->concept_id
    cJSON *concept_id = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "conceptId");
    if (cJSON_IsNull(concept_id)) {
        concept_id = NULL;
    }
    if (concept_id) { 
    if(!cJSON_IsString(concept_id) && !cJSON_IsNull(concept_id))
    {
    goto end; //String
    }
    }

    // ct_codelist->extensible
    cJSON *extensible = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "extensible");
    if (cJSON_IsNull(extensible)) {
        extensible = NULL;
    }
    if (extensible) { 
    if(!cJSON_IsString(extensible) && !cJSON_IsNull(extensible))
    {
    goto end; //String
    }
    }

    // ct_codelist->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // ct_codelist->submission_value
    cJSON *submission_value = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "submissionValue");
    if (cJSON_IsNull(submission_value)) {
        submission_value = NULL;
    }
    if (submission_value) { 
    if(!cJSON_IsString(submission_value) && !cJSON_IsNull(submission_value))
    {
    goto end; //String
    }
    }

    // ct_codelist->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // ct_codelist->preferred_term
    cJSON *preferred_term = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "preferredTerm");
    if (cJSON_IsNull(preferred_term)) {
        preferred_term = NULL;
    }
    if (preferred_term) { 
    if(!cJSON_IsString(preferred_term) && !cJSON_IsNull(preferred_term))
    {
    goto end; //String
    }
    }

    // ct_codelist->synonyms
    cJSON *synonyms = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "synonyms");
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

    // ct_codelist->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = ct_codelist_links_parseFromJSON(_links); //nonprimitive
    }

    // ct_codelist->terms
    cJSON *terms = cJSON_GetObjectItemCaseSensitive(ct_codelistJSON, "terms");
    if (cJSON_IsNull(terms)) {
        terms = NULL;
    }
    if (terms) { 
    cJSON *terms_local_nonprimitive = NULL;
    if(!cJSON_IsArray(terms)){
        goto end; //nonprimitive container
    }

    termsList = list_createList();

    cJSON_ArrayForEach(terms_local_nonprimitive,terms )
    {
        if(!cJSON_IsObject(terms_local_nonprimitive)){
            goto end;
        }
        ct_package_term_t *termsItem = ct_package_term_parseFromJSON(terms_local_nonprimitive);

        list_addElement(termsList, termsItem);
    }
    }


    ct_codelist_local_var = ct_codelist_create_internal (
        concept_id && !cJSON_IsNull(concept_id) ? strdup(concept_id->valuestring) : NULL,
        extensible && !cJSON_IsNull(extensible) ? strdup(extensible->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        submission_value && !cJSON_IsNull(submission_value) ? strdup(submission_value->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        preferred_term && !cJSON_IsNull(preferred_term) ? strdup(preferred_term->valuestring) : NULL,
        synonyms ? synonymsList : NULL,
        _links ? _links_local_nonprim : NULL,
        terms ? termsList : NULL
        );

    return ct_codelist_local_var;
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
        ct_codelist_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (termsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, termsList) {
            ct_package_term_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(termsList);
        termsList = NULL;
    }
    return NULL;

}
