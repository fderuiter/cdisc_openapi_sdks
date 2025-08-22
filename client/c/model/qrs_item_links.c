#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_item_links.h"



static qrs_item_links_t *qrs_item_links_create_internal(
    root_ct_term_ref_t *qrs_item_test,
    root_ct_term_ref_t *qrs_item_testcd,
    root_ct_term_ref_t *qrs_item_eval,
    root_ct_term_ref_t *qrs_item_scat,
    qrs_responsegroup_t *responsegroup
    ) {
    qrs_item_links_t *qrs_item_links_local_var = malloc(sizeof(qrs_item_links_t));
    if (!qrs_item_links_local_var) {
        return NULL;
    }
    qrs_item_links_local_var->qrs_item_test = qrs_item_test;
    qrs_item_links_local_var->qrs_item_testcd = qrs_item_testcd;
    qrs_item_links_local_var->qrs_item_eval = qrs_item_eval;
    qrs_item_links_local_var->qrs_item_scat = qrs_item_scat;
    qrs_item_links_local_var->responsegroup = responsegroup;

    qrs_item_links_local_var->_library_owned = 1;
    return qrs_item_links_local_var;
}

__attribute__((deprecated)) qrs_item_links_t *qrs_item_links_create(
    root_ct_term_ref_t *qrs_item_test,
    root_ct_term_ref_t *qrs_item_testcd,
    root_ct_term_ref_t *qrs_item_eval,
    root_ct_term_ref_t *qrs_item_scat,
    qrs_responsegroup_t *responsegroup
    ) {
    return qrs_item_links_create_internal (
        qrs_item_test,
        qrs_item_testcd,
        qrs_item_eval,
        qrs_item_scat,
        responsegroup
        );
}

void qrs_item_links_free(qrs_item_links_t *qrs_item_links) {
    if(NULL == qrs_item_links){
        return ;
    }
    if(qrs_item_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_item_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_item_links->qrs_item_test) {
        root_ct_term_ref_free(qrs_item_links->qrs_item_test);
        qrs_item_links->qrs_item_test = NULL;
    }
    if (qrs_item_links->qrs_item_testcd) {
        root_ct_term_ref_free(qrs_item_links->qrs_item_testcd);
        qrs_item_links->qrs_item_testcd = NULL;
    }
    if (qrs_item_links->qrs_item_eval) {
        root_ct_term_ref_free(qrs_item_links->qrs_item_eval);
        qrs_item_links->qrs_item_eval = NULL;
    }
    if (qrs_item_links->qrs_item_scat) {
        root_ct_term_ref_free(qrs_item_links->qrs_item_scat);
        qrs_item_links->qrs_item_scat = NULL;
    }
    if (qrs_item_links->responsegroup) {
        qrs_responsegroup_free(qrs_item_links->responsegroup);
        qrs_item_links->responsegroup = NULL;
    }
    free(qrs_item_links);
}

cJSON *qrs_item_links_convertToJSON(qrs_item_links_t *qrs_item_links) {
    cJSON *item = cJSON_CreateObject();

    // qrs_item_links->qrs_item_test
    if(qrs_item_links->qrs_item_test) {
    cJSON *qrs_item_test_local_JSON = root_ct_term_ref_convertToJSON(qrs_item_links->qrs_item_test);
    if(qrs_item_test_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsItemTEST", qrs_item_test_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_item_links->qrs_item_testcd
    if(qrs_item_links->qrs_item_testcd) {
    cJSON *qrs_item_testcd_local_JSON = root_ct_term_ref_convertToJSON(qrs_item_links->qrs_item_testcd);
    if(qrs_item_testcd_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsItemTESTCD", qrs_item_testcd_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_item_links->qrs_item_eval
    if(qrs_item_links->qrs_item_eval) {
    cJSON *qrs_item_eval_local_JSON = root_ct_term_ref_convertToJSON(qrs_item_links->qrs_item_eval);
    if(qrs_item_eval_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsItemEVAL", qrs_item_eval_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_item_links->qrs_item_scat
    if(qrs_item_links->qrs_item_scat) {
    cJSON *qrs_item_scat_local_JSON = root_ct_term_ref_convertToJSON(qrs_item_links->qrs_item_scat);
    if(qrs_item_scat_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsItemSCAT", qrs_item_scat_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_item_links->responsegroup
    if(qrs_item_links->responsegroup) {
    cJSON *responsegroup_local_JSON = qrs_responsegroup_convertToJSON(qrs_item_links->responsegroup);
    if(responsegroup_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsegroup", responsegroup_local_JSON);
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

qrs_item_links_t *qrs_item_links_parseFromJSON(cJSON *qrs_item_linksJSON){

    qrs_item_links_t *qrs_item_links_local_var = NULL;

    // define the local variable for qrs_item_links->qrs_item_test
    root_ct_term_ref_t *qrs_item_test_local_nonprim = NULL;

    // define the local variable for qrs_item_links->qrs_item_testcd
    root_ct_term_ref_t *qrs_item_testcd_local_nonprim = NULL;

    // define the local variable for qrs_item_links->qrs_item_eval
    root_ct_term_ref_t *qrs_item_eval_local_nonprim = NULL;

    // define the local variable for qrs_item_links->qrs_item_scat
    root_ct_term_ref_t *qrs_item_scat_local_nonprim = NULL;

    // define the local variable for qrs_item_links->responsegroup
    qrs_responsegroup_t *responsegroup_local_nonprim = NULL;

    // qrs_item_links->qrs_item_test
    cJSON *qrs_item_test = cJSON_GetObjectItemCaseSensitive(qrs_item_linksJSON, "qrsItemTEST");
    if (cJSON_IsNull(qrs_item_test)) {
        qrs_item_test = NULL;
    }
    if (qrs_item_test) { 
    qrs_item_test_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_item_test); //nonprimitive
    }

    // qrs_item_links->qrs_item_testcd
    cJSON *qrs_item_testcd = cJSON_GetObjectItemCaseSensitive(qrs_item_linksJSON, "qrsItemTESTCD");
    if (cJSON_IsNull(qrs_item_testcd)) {
        qrs_item_testcd = NULL;
    }
    if (qrs_item_testcd) { 
    qrs_item_testcd_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_item_testcd); //nonprimitive
    }

    // qrs_item_links->qrs_item_eval
    cJSON *qrs_item_eval = cJSON_GetObjectItemCaseSensitive(qrs_item_linksJSON, "qrsItemEVAL");
    if (cJSON_IsNull(qrs_item_eval)) {
        qrs_item_eval = NULL;
    }
    if (qrs_item_eval) { 
    qrs_item_eval_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_item_eval); //nonprimitive
    }

    // qrs_item_links->qrs_item_scat
    cJSON *qrs_item_scat = cJSON_GetObjectItemCaseSensitive(qrs_item_linksJSON, "qrsItemSCAT");
    if (cJSON_IsNull(qrs_item_scat)) {
        qrs_item_scat = NULL;
    }
    if (qrs_item_scat) { 
    qrs_item_scat_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_item_scat); //nonprimitive
    }

    // qrs_item_links->responsegroup
    cJSON *responsegroup = cJSON_GetObjectItemCaseSensitive(qrs_item_linksJSON, "responsegroup");
    if (cJSON_IsNull(responsegroup)) {
        responsegroup = NULL;
    }
    if (responsegroup) { 
    responsegroup_local_nonprim = qrs_responsegroup_parseFromJSON(responsegroup); //nonprimitive
    }


    qrs_item_links_local_var = qrs_item_links_create_internal (
        qrs_item_test ? qrs_item_test_local_nonprim : NULL,
        qrs_item_testcd ? qrs_item_testcd_local_nonprim : NULL,
        qrs_item_eval ? qrs_item_eval_local_nonprim : NULL,
        qrs_item_scat ? qrs_item_scat_local_nonprim : NULL,
        responsegroup ? responsegroup_local_nonprim : NULL
        );

    return qrs_item_links_local_var;
end:
    if (qrs_item_test_local_nonprim) {
        root_ct_term_ref_free(qrs_item_test_local_nonprim);
        qrs_item_test_local_nonprim = NULL;
    }
    if (qrs_item_testcd_local_nonprim) {
        root_ct_term_ref_free(qrs_item_testcd_local_nonprim);
        qrs_item_testcd_local_nonprim = NULL;
    }
    if (qrs_item_eval_local_nonprim) {
        root_ct_term_ref_free(qrs_item_eval_local_nonprim);
        qrs_item_eval_local_nonprim = NULL;
    }
    if (qrs_item_scat_local_nonprim) {
        root_ct_term_ref_free(qrs_item_scat_local_nonprim);
        qrs_item_scat_local_nonprim = NULL;
    }
    if (responsegroup_local_nonprim) {
        qrs_responsegroup_free(responsegroup_local_nonprim);
        responsegroup_local_nonprim = NULL;
    }
    return NULL;

}
