#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_ct_term.h"



static export_ct_term_t *export_ct_term_create_internal(
    char *bundle_1,
    list_t *cdisc_synonym_s,
    char *bundle_2
    ) {
    export_ct_term_t *export_ct_term_local_var = malloc(sizeof(export_ct_term_t));
    if (!export_ct_term_local_var) {
        return NULL;
    }
    export_ct_term_local_var->bundle_1 = bundle_1;
    export_ct_term_local_var->cdisc_synonym_s = cdisc_synonym_s;
    export_ct_term_local_var->bundle_2 = bundle_2;

    export_ct_term_local_var->_library_owned = 1;
    return export_ct_term_local_var;
}

__attribute__((deprecated)) export_ct_term_t *export_ct_term_create(
    char *bundle_1,
    list_t *cdisc_synonym_s,
    char *bundle_2
    ) {
    return export_ct_term_create_internal (
        bundle_1,
        cdisc_synonym_s,
        bundle_2
        );
}

void export_ct_term_free(export_ct_term_t *export_ct_term) {
    if(NULL == export_ct_term){
        return ;
    }
    if(export_ct_term->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_ct_term_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_ct_term->bundle_1) {
        free(export_ct_term->bundle_1);
        export_ct_term->bundle_1 = NULL;
    }
    if (export_ct_term->cdisc_synonym_s) {
        list_ForEach(listEntry, export_ct_term->cdisc_synonym_s) {
            free(listEntry->data);
        }
        list_freeList(export_ct_term->cdisc_synonym_s);
        export_ct_term->cdisc_synonym_s = NULL;
    }
    if (export_ct_term->bundle_2) {
        free(export_ct_term->bundle_2);
        export_ct_term->bundle_2 = NULL;
    }
    free(export_ct_term);
}

cJSON *export_ct_term_convertToJSON(export_ct_term_t *export_ct_term) {
    cJSON *item = cJSON_CreateObject();

    // export_ct_term->bundle_1
    if(export_ct_term->bundle_1) {
    if(cJSON_AddStringToObject(item, "bundle-1", export_ct_term->bundle_1) == NULL) {
    goto fail; //String
    }
    }


    // export_ct_term->cdisc_synonym_s
    if(export_ct_term->cdisc_synonym_s) {
    cJSON *cdisc_synonym_s = cJSON_AddArrayToObject(item, "CDISC Synonym(s)");
    if(cdisc_synonym_s == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *cdisc_synonym_sListEntry;
    list_ForEach(cdisc_synonym_sListEntry, export_ct_term->cdisc_synonym_s) {
    if(cJSON_AddStringToObject(cdisc_synonym_s, "", cdisc_synonym_sListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // export_ct_term->bundle_2
    if(export_ct_term->bundle_2) {
    if(cJSON_AddStringToObject(item, "bundle-2", export_ct_term->bundle_2) == NULL) {
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

export_ct_term_t *export_ct_term_parseFromJSON(cJSON *export_ct_termJSON){

    export_ct_term_t *export_ct_term_local_var = NULL;

    // define the local list for export_ct_term->cdisc_synonym_s
    list_t *cdisc_synonym_sList = NULL;

    // export_ct_term->bundle_1
    cJSON *bundle_1 = cJSON_GetObjectItemCaseSensitive(export_ct_termJSON, "bundle-1");
    if (cJSON_IsNull(bundle_1)) {
        bundle_1 = NULL;
    }
    if (bundle_1) { 
    if(!cJSON_IsString(bundle_1) && !cJSON_IsNull(bundle_1))
    {
    goto end; //String
    }
    }

    // export_ct_term->cdisc_synonym_s
    cJSON *cdisc_synonym_s = cJSON_GetObjectItemCaseSensitive(export_ct_termJSON, "CDISC Synonym(s)");
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

    // export_ct_term->bundle_2
    cJSON *bundle_2 = cJSON_GetObjectItemCaseSensitive(export_ct_termJSON, "bundle-2");
    if (cJSON_IsNull(bundle_2)) {
        bundle_2 = NULL;
    }
    if (bundle_2) { 
    if(!cJSON_IsString(bundle_2) && !cJSON_IsNull(bundle_2))
    {
    goto end; //String
    }
    }


    export_ct_term_local_var = export_ct_term_create_internal (
        bundle_1 && !cJSON_IsNull(bundle_1) ? strdup(bundle_1->valuestring) : NULL,
        cdisc_synonym_s ? cdisc_synonym_sList : NULL,
        bundle_2 && !cJSON_IsNull(bundle_2) ? strdup(bundle_2->valuestring) : NULL
        );

    return export_ct_term_local_var;
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
    return NULL;

}
