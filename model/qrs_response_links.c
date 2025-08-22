#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_response_links.h"



static qrs_response_links_t *qrs_response_links_create_internal(
    root_ct_term_ref_t *qrs_response_orres,
    root_ct_term_ref_t *qrs_response_orresu,
    root_ct_term_ref_t *qrs_response_stresc,
    root_ct_term_ref_t *qrs_response_strescu
    ) {
    qrs_response_links_t *qrs_response_links_local_var = malloc(sizeof(qrs_response_links_t));
    if (!qrs_response_links_local_var) {
        return NULL;
    }
    qrs_response_links_local_var->qrs_response_orres = qrs_response_orres;
    qrs_response_links_local_var->qrs_response_orresu = qrs_response_orresu;
    qrs_response_links_local_var->qrs_response_stresc = qrs_response_stresc;
    qrs_response_links_local_var->qrs_response_strescu = qrs_response_strescu;

    qrs_response_links_local_var->_library_owned = 1;
    return qrs_response_links_local_var;
}

__attribute__((deprecated)) qrs_response_links_t *qrs_response_links_create(
    root_ct_term_ref_t *qrs_response_orres,
    root_ct_term_ref_t *qrs_response_orresu,
    root_ct_term_ref_t *qrs_response_stresc,
    root_ct_term_ref_t *qrs_response_strescu
    ) {
    return qrs_response_links_create_internal (
        qrs_response_orres,
        qrs_response_orresu,
        qrs_response_stresc,
        qrs_response_strescu
        );
}

void qrs_response_links_free(qrs_response_links_t *qrs_response_links) {
    if(NULL == qrs_response_links){
        return ;
    }
    if(qrs_response_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_response_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_response_links->qrs_response_orres) {
        root_ct_term_ref_free(qrs_response_links->qrs_response_orres);
        qrs_response_links->qrs_response_orres = NULL;
    }
    if (qrs_response_links->qrs_response_orresu) {
        root_ct_term_ref_free(qrs_response_links->qrs_response_orresu);
        qrs_response_links->qrs_response_orresu = NULL;
    }
    if (qrs_response_links->qrs_response_stresc) {
        root_ct_term_ref_free(qrs_response_links->qrs_response_stresc);
        qrs_response_links->qrs_response_stresc = NULL;
    }
    if (qrs_response_links->qrs_response_strescu) {
        root_ct_term_ref_free(qrs_response_links->qrs_response_strescu);
        qrs_response_links->qrs_response_strescu = NULL;
    }
    free(qrs_response_links);
}

cJSON *qrs_response_links_convertToJSON(qrs_response_links_t *qrs_response_links) {
    cJSON *item = cJSON_CreateObject();

    // qrs_response_links->qrs_response_orres
    if(qrs_response_links->qrs_response_orres) {
    cJSON *qrs_response_orres_local_JSON = root_ct_term_ref_convertToJSON(qrs_response_links->qrs_response_orres);
    if(qrs_response_orres_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsResponseORRES", qrs_response_orres_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_response_links->qrs_response_orresu
    if(qrs_response_links->qrs_response_orresu) {
    cJSON *qrs_response_orresu_local_JSON = root_ct_term_ref_convertToJSON(qrs_response_links->qrs_response_orresu);
    if(qrs_response_orresu_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsResponseORRESU", qrs_response_orresu_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_response_links->qrs_response_stresc
    if(qrs_response_links->qrs_response_stresc) {
    cJSON *qrs_response_stresc_local_JSON = root_ct_term_ref_convertToJSON(qrs_response_links->qrs_response_stresc);
    if(qrs_response_stresc_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsResponseSTRESC", qrs_response_stresc_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_response_links->qrs_response_strescu
    if(qrs_response_links->qrs_response_strescu) {
    cJSON *qrs_response_strescu_local_JSON = root_ct_term_ref_convertToJSON(qrs_response_links->qrs_response_strescu);
    if(qrs_response_strescu_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsResponseSTRESCU", qrs_response_strescu_local_JSON);
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

qrs_response_links_t *qrs_response_links_parseFromJSON(cJSON *qrs_response_linksJSON){

    qrs_response_links_t *qrs_response_links_local_var = NULL;

    // define the local variable for qrs_response_links->qrs_response_orres
    root_ct_term_ref_t *qrs_response_orres_local_nonprim = NULL;

    // define the local variable for qrs_response_links->qrs_response_orresu
    root_ct_term_ref_t *qrs_response_orresu_local_nonprim = NULL;

    // define the local variable for qrs_response_links->qrs_response_stresc
    root_ct_term_ref_t *qrs_response_stresc_local_nonprim = NULL;

    // define the local variable for qrs_response_links->qrs_response_strescu
    root_ct_term_ref_t *qrs_response_strescu_local_nonprim = NULL;

    // qrs_response_links->qrs_response_orres
    cJSON *qrs_response_orres = cJSON_GetObjectItemCaseSensitive(qrs_response_linksJSON, "qrsResponseORRES");
    if (cJSON_IsNull(qrs_response_orres)) {
        qrs_response_orres = NULL;
    }
    if (qrs_response_orres) { 
    qrs_response_orres_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_response_orres); //nonprimitive
    }

    // qrs_response_links->qrs_response_orresu
    cJSON *qrs_response_orresu = cJSON_GetObjectItemCaseSensitive(qrs_response_linksJSON, "qrsResponseORRESU");
    if (cJSON_IsNull(qrs_response_orresu)) {
        qrs_response_orresu = NULL;
    }
    if (qrs_response_orresu) { 
    qrs_response_orresu_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_response_orresu); //nonprimitive
    }

    // qrs_response_links->qrs_response_stresc
    cJSON *qrs_response_stresc = cJSON_GetObjectItemCaseSensitive(qrs_response_linksJSON, "qrsResponseSTRESC");
    if (cJSON_IsNull(qrs_response_stresc)) {
        qrs_response_stresc = NULL;
    }
    if (qrs_response_stresc) { 
    qrs_response_stresc_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_response_stresc); //nonprimitive
    }

    // qrs_response_links->qrs_response_strescu
    cJSON *qrs_response_strescu = cJSON_GetObjectItemCaseSensitive(qrs_response_linksJSON, "qrsResponseSTRESCU");
    if (cJSON_IsNull(qrs_response_strescu)) {
        qrs_response_strescu = NULL;
    }
    if (qrs_response_strescu) { 
    qrs_response_strescu_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_response_strescu); //nonprimitive
    }


    qrs_response_links_local_var = qrs_response_links_create_internal (
        qrs_response_orres ? qrs_response_orres_local_nonprim : NULL,
        qrs_response_orresu ? qrs_response_orresu_local_nonprim : NULL,
        qrs_response_stresc ? qrs_response_stresc_local_nonprim : NULL,
        qrs_response_strescu ? qrs_response_strescu_local_nonprim : NULL
        );

    return qrs_response_links_local_var;
end:
    if (qrs_response_orres_local_nonprim) {
        root_ct_term_ref_free(qrs_response_orres_local_nonprim);
        qrs_response_orres_local_nonprim = NULL;
    }
    if (qrs_response_orresu_local_nonprim) {
        root_ct_term_ref_free(qrs_response_orresu_local_nonprim);
        qrs_response_orresu_local_nonprim = NULL;
    }
    if (qrs_response_stresc_local_nonprim) {
        root_ct_term_ref_free(qrs_response_stresc_local_nonprim);
        qrs_response_stresc_local_nonprim = NULL;
    }
    if (qrs_response_strescu_local_nonprim) {
        root_ct_term_ref_free(qrs_response_strescu_local_nonprim);
        qrs_response_strescu_local_nonprim = NULL;
    }
    return NULL;

}
