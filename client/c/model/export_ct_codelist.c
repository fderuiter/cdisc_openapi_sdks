#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_ct_codelist.h"



static export_ct_codelist_t *export_ct_codelist_create_internal(
    char *code,
    char *codelist_code,
    char *codelist_extensible__yes_no,
    char *codelist_name,
    char *cdisc_submission_value,
    list_t *cdisc_synonym_s,
    char *cdisc_definition,
    char *nci_preferred_term,
    char *standard_and_date,
    list_t *
    ) {
    export_ct_codelist_t *export_ct_codelist_local_var = malloc(sizeof(export_ct_codelist_t));
    if (!export_ct_codelist_local_var) {
        return NULL;
    }
    export_ct_codelist_local_var->code = code;
    export_ct_codelist_local_var->codelist_code = codelist_code;
    export_ct_codelist_local_var->codelist_extensible__yes_no = codelist_extensible__yes_no;
    export_ct_codelist_local_var->codelist_name = codelist_name;
    export_ct_codelist_local_var->cdisc_submission_value = cdisc_submission_value;
    export_ct_codelist_local_var->cdisc_synonym_s = cdisc_synonym_s;
    export_ct_codelist_local_var->cdisc_definition = cdisc_definition;
    export_ct_codelist_local_var->nci_preferred_term = nci_preferred_term;
    export_ct_codelist_local_var->standard_and_date = standard_and_date;
    export_ct_codelist_local_var-> = ;

    export_ct_codelist_local_var->_library_owned = 1;
    return export_ct_codelist_local_var;
}

__attribute__((deprecated)) export_ct_codelist_t *export_ct_codelist_create(
    char *code,
    char *codelist_code,
    char *codelist_extensible__yes_no,
    char *codelist_name,
    char *cdisc_submission_value,
    list_t *cdisc_synonym_s,
    char *cdisc_definition,
    char *nci_preferred_term,
    char *standard_and_date,
    list_t *
    ) {
    return export_ct_codelist_create_internal (
        code,
        codelist_code,
        codelist_extensible__yes_no,
        codelist_name,
        cdisc_submission_value,
        cdisc_synonym_s,
        cdisc_definition,
        nci_preferred_term,
        standard_and_date,
        
        );
}

void export_ct_codelist_free(export_ct_codelist_t *export_ct_codelist) {
    if(NULL == export_ct_codelist){
        return ;
    }
    if(export_ct_codelist->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_ct_codelist_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_ct_codelist->code) {
        free(export_ct_codelist->code);
        export_ct_codelist->code = NULL;
    }
    if (export_ct_codelist->codelist_code) {
        free(export_ct_codelist->codelist_code);
        export_ct_codelist->codelist_code = NULL;
    }
    if (export_ct_codelist->codelist_extensible__yes_no) {
        free(export_ct_codelist->codelist_extensible__yes_no);
        export_ct_codelist->codelist_extensible__yes_no = NULL;
    }
    if (export_ct_codelist->codelist_name) {
        free(export_ct_codelist->codelist_name);
        export_ct_codelist->codelist_name = NULL;
    }
    if (export_ct_codelist->cdisc_submission_value) {
        free(export_ct_codelist->cdisc_submission_value);
        export_ct_codelist->cdisc_submission_value = NULL;
    }
    if (export_ct_codelist->cdisc_synonym_s) {
        list_ForEach(listEntry, export_ct_codelist->cdisc_synonym_s) {
            free(listEntry->data);
        }
        list_freeList(export_ct_codelist->cdisc_synonym_s);
        export_ct_codelist->cdisc_synonym_s = NULL;
    }
    if (export_ct_codelist->cdisc_definition) {
        free(export_ct_codelist->cdisc_definition);
        export_ct_codelist->cdisc_definition = NULL;
    }
    if (export_ct_codelist->nci_preferred_term) {
        free(export_ct_codelist->nci_preferred_term);
        export_ct_codelist->nci_preferred_term = NULL;
    }
    if (export_ct_codelist->standard_and_date) {
        free(export_ct_codelist->standard_and_date);
        export_ct_codelist->standard_and_date = NULL;
    }
    if (export_ct_codelist->) {
        list_ForEach(listEntry, export_ct_codelist->) {
            export_ct_term_free(listEntry->data);
        }
        list_freeList(export_ct_codelist->);
        export_ct_codelist-> = NULL;
    }
    free(export_ct_codelist);
}

cJSON *export_ct_codelist_convertToJSON(export_ct_codelist_t *export_ct_codelist) {
    cJSON *item = cJSON_CreateObject();

    // export_ct_codelist->code
    if(export_ct_codelist->code) {
    if(cJSON_AddStringToObject(item, "Code", export_ct_codelist->code) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->codelist_code
    if(export_ct_codelist->codelist_code) {
    if(cJSON_AddStringToObject(item, "Codelist Code", export_ct_codelist->codelist_code) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->codelist_extensible__yes_no
    if(export_ct_codelist->codelist_extensible__yes_no) {
    if(cJSON_AddStringToObject(item, "Codelist Extensible (Yes/No)", export_ct_codelist->codelist_extensible__yes_no) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->codelist_name
    if(export_ct_codelist->codelist_name) {
    if(cJSON_AddStringToObject(item, "Codelist Name", export_ct_codelist->codelist_name) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->cdisc_submission_value
    if(export_ct_codelist->cdisc_submission_value) {
    if(cJSON_AddStringToObject(item, "CDISC Submission Value", export_ct_codelist->cdisc_submission_value) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->cdisc_synonym_s
    if(export_ct_codelist->cdisc_synonym_s) {
    cJSON *cdisc_synonym_s = cJSON_AddArrayToObject(item, "CDISC Synonym(s)");
    if(cdisc_synonym_s == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *cdisc_synonym_sListEntry;
    list_ForEach(cdisc_synonym_sListEntry, export_ct_codelist->cdisc_synonym_s) {
    if(cJSON_AddStringToObject(cdisc_synonym_s, "", cdisc_synonym_sListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // export_ct_codelist->cdisc_definition
    if(export_ct_codelist->cdisc_definition) {
    if(cJSON_AddStringToObject(item, "CDISC Definition", export_ct_codelist->cdisc_definition) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->nci_preferred_term
    if(export_ct_codelist->nci_preferred_term) {
    if(cJSON_AddStringToObject(item, "NCI Preferred Term", export_ct_codelist->nci_preferred_term) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->standard_and_date
    if(export_ct_codelist->standard_and_date) {
    if(cJSON_AddStringToObject(item, "Standard and Date", export_ct_codelist->standard_and_date) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_codelist->
    if(export_ct_codelist->) {
    cJSON * = cJSON_AddArrayToObject(item, "");
    if( == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *ListEntry;
    if (export_ct_codelist->) {
    list_ForEach(ListEntry, export_ct_codelist->) {
    cJSON *itemLocal = export_ct_term_convertToJSON(ListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(, itemLocal);
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

export_ct_codelist_t *export_ct_codelist_parseFromJSON(cJSON *export_ct_codelistJSON){

    export_ct_codelist_t *export_ct_codelist_local_var = NULL;

    // define the local list for export_ct_codelist->cdisc_synonym_s
    list_t *cdisc_synonym_sList = NULL;

    // define the local list for export_ct_codelist->
    list_t *List = NULL;

    // export_ct_codelist->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "Code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsString(code) && !cJSON_IsNull(code))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->codelist_code
    cJSON *codelist_code = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "Codelist Code");
    if (cJSON_IsNull(codelist_code)) {
        codelist_code = NULL;
    }
    if (codelist_code) { 
    if(!cJSON_IsString(codelist_code) && !cJSON_IsNull(codelist_code))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->codelist_extensible__yes_no
    cJSON *codelist_extensible__yes_no = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "Codelist Extensible (Yes/No)");
    if (cJSON_IsNull(codelist_extensible__yes_no)) {
        codelist_extensible__yes_no = NULL;
    }
    if (codelist_extensible__yes_no) { 
    if(!cJSON_IsString(codelist_extensible__yes_no) && !cJSON_IsNull(codelist_extensible__yes_no))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->codelist_name
    cJSON *codelist_name = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "Codelist Name");
    if (cJSON_IsNull(codelist_name)) {
        codelist_name = NULL;
    }
    if (codelist_name) { 
    if(!cJSON_IsString(codelist_name) && !cJSON_IsNull(codelist_name))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->cdisc_submission_value
    cJSON *cdisc_submission_value = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "CDISC Submission Value");
    if (cJSON_IsNull(cdisc_submission_value)) {
        cdisc_submission_value = NULL;
    }
    if (cdisc_submission_value) { 
    if(!cJSON_IsString(cdisc_submission_value) && !cJSON_IsNull(cdisc_submission_value))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->cdisc_synonym_s
    cJSON *cdisc_synonym_s = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "CDISC Synonym(s)");
    if (cJSON_IsNull(cdisc_synonym_s)) {
        cdisc_synonym_s = NULL;
    }
    if (cdisc_synonym_s) { 
    cJSON *cdisc_synonym_s_local = NULL;
    if(!cJSON_IsArray(cdisc_synonym_s)) {
        goto end;//primitive container
    }
    cdisc_synonym_sList = list_createList();

    cJSON_ArrayForEach(cdisc_synonym_s_local, cdisc_synonym_s)
    {
        if(!cJSON_IsString(cdisc_synonym_s_local))
        {
            goto end;
        }
        list_addElement(cdisc_synonym_sList , strdup(cdisc_synonym_s_local->valuestring));
    }
    }

    // export_ct_codelist->cdisc_definition
    cJSON *cdisc_definition = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "CDISC Definition");
    if (cJSON_IsNull(cdisc_definition)) {
        cdisc_definition = NULL;
    }
    if (cdisc_definition) { 
    if(!cJSON_IsString(cdisc_definition) && !cJSON_IsNull(cdisc_definition))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->nci_preferred_term
    cJSON *nci_preferred_term = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "NCI Preferred Term");
    if (cJSON_IsNull(nci_preferred_term)) {
        nci_preferred_term = NULL;
    }
    if (nci_preferred_term) { 
    if(!cJSON_IsString(nci_preferred_term) && !cJSON_IsNull(nci_preferred_term))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->standard_and_date
    cJSON *standard_and_date = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "Standard and Date");
    if (cJSON_IsNull(standard_and_date)) {
        standard_and_date = NULL;
    }
    if (standard_and_date) { 
    if(!cJSON_IsString(standard_and_date) && !cJSON_IsNull(standard_and_date))
    {
    goto end; //String
    }
    }

    // export_ct_codelist->
    cJSON * = cJSON_GetObjectItemCaseSensitive(export_ct_codelistJSON, "");
    if (cJSON_IsNull()) {
         = NULL;
    }
    if () { 
    cJSON *_local_nonprimitive = NULL;
    if(!cJSON_IsArray()){
        goto end; //nonprimitive container
    }

    List = list_createList();

    cJSON_ArrayForEach(_local_nonprimitive, )
    {
        if(!cJSON_IsObject(_local_nonprimitive)){
            goto end;
        }
        export_ct_term_t *Item = export_ct_term_parseFromJSON(_local_nonprimitive);

        list_addElement(List, Item);
    }
    }


    export_ct_codelist_local_var = export_ct_codelist_create_internal (
        code && !cJSON_IsNull(code) ? strdup(code->valuestring) : NULL,
        codelist_code && !cJSON_IsNull(codelist_code) ? strdup(codelist_code->valuestring) : NULL,
        codelist_extensible__yes_no && !cJSON_IsNull(codelist_extensible__yes_no) ? strdup(codelist_extensible__yes_no->valuestring) : NULL,
        codelist_name && !cJSON_IsNull(codelist_name) ? strdup(codelist_name->valuestring) : NULL,
        cdisc_submission_value && !cJSON_IsNull(cdisc_submission_value) ? strdup(cdisc_submission_value->valuestring) : NULL,
        cdisc_synonym_s ? cdisc_synonym_sList : NULL,
        cdisc_definition && !cJSON_IsNull(cdisc_definition) ? strdup(cdisc_definition->valuestring) : NULL,
        nci_preferred_term && !cJSON_IsNull(nci_preferred_term) ? strdup(nci_preferred_term->valuestring) : NULL,
        standard_and_date && !cJSON_IsNull(standard_and_date) ? strdup(standard_and_date->valuestring) : NULL,
         ? List : NULL
        );

    return export_ct_codelist_local_var;
end:
    if (cdisc_synonym_sList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, cdisc_synonym_sList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(cdisc_synonym_sList);
        cdisc_synonym_sList = NULL;
    }
    if (List) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, List) {
            export_ct_term_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(List);
        List = NULL;
    }
    return NULL;

}
