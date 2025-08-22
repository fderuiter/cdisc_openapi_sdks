#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "qrs_product_links.h"



static qrs_product_links_t *qrs_product_links_create_internal(
    qrs_product_ref_t *self,
    qrs_product_ref_t *prior_version,
    root_ct_term_ref_t *qrs_term_cat,
    qrs_items_ref_t *qrs_items
    ) {
    qrs_product_links_t *qrs_product_links_local_var = malloc(sizeof(qrs_product_links_t));
    if (!qrs_product_links_local_var) {
        return NULL;
    }
    qrs_product_links_local_var->self = self;
    qrs_product_links_local_var->prior_version = prior_version;
    qrs_product_links_local_var->qrs_term_cat = qrs_term_cat;
    qrs_product_links_local_var->qrs_items = qrs_items;

    qrs_product_links_local_var->_library_owned = 1;
    return qrs_product_links_local_var;
}

__attribute__((deprecated)) qrs_product_links_t *qrs_product_links_create(
    qrs_product_ref_t *self,
    qrs_product_ref_t *prior_version,
    root_ct_term_ref_t *qrs_term_cat,
    qrs_items_ref_t *qrs_items
    ) {
    return qrs_product_links_create_internal (
        self,
        prior_version,
        qrs_term_cat,
        qrs_items
        );
}

void qrs_product_links_free(qrs_product_links_t *qrs_product_links) {
    if(NULL == qrs_product_links){
        return ;
    }
    if(qrs_product_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "qrs_product_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (qrs_product_links->self) {
        qrs_product_ref_free(qrs_product_links->self);
        qrs_product_links->self = NULL;
    }
    if (qrs_product_links->prior_version) {
        qrs_product_ref_free(qrs_product_links->prior_version);
        qrs_product_links->prior_version = NULL;
    }
    if (qrs_product_links->qrs_term_cat) {
        root_ct_term_ref_free(qrs_product_links->qrs_term_cat);
        qrs_product_links->qrs_term_cat = NULL;
    }
    if (qrs_product_links->qrs_items) {
        qrs_items_ref_free(qrs_product_links->qrs_items);
        qrs_product_links->qrs_items = NULL;
    }
    free(qrs_product_links);
}

cJSON *qrs_product_links_convertToJSON(qrs_product_links_t *qrs_product_links) {
    cJSON *item = cJSON_CreateObject();

    // qrs_product_links->self
    if(qrs_product_links->self) {
    cJSON *self_local_JSON = qrs_product_ref_convertToJSON(qrs_product_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_product_links->prior_version
    if(qrs_product_links->prior_version) {
    cJSON *prior_version_local_JSON = qrs_product_ref_convertToJSON(qrs_product_links->prior_version);
    if(prior_version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "priorVersion", prior_version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_product_links->qrs_term_cat
    if(qrs_product_links->qrs_term_cat) {
    cJSON *qrs_term_cat_local_JSON = root_ct_term_ref_convertToJSON(qrs_product_links->qrs_term_cat);
    if(qrs_term_cat_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsTermCAT", qrs_term_cat_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // qrs_product_links->qrs_items
    if(qrs_product_links->qrs_items) {
    cJSON *qrs_items_local_JSON = qrs_items_ref_convertToJSON(qrs_product_links->qrs_items);
    if(qrs_items_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "qrsItems", qrs_items_local_JSON);
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

qrs_product_links_t *qrs_product_links_parseFromJSON(cJSON *qrs_product_linksJSON){

    qrs_product_links_t *qrs_product_links_local_var = NULL;

    // define the local variable for qrs_product_links->self
    qrs_product_ref_t *self_local_nonprim = NULL;

    // define the local variable for qrs_product_links->prior_version
    qrs_product_ref_t *prior_version_local_nonprim = NULL;

    // define the local variable for qrs_product_links->qrs_term_cat
    root_ct_term_ref_t *qrs_term_cat_local_nonprim = NULL;

    // define the local variable for qrs_product_links->qrs_items
    qrs_items_ref_t *qrs_items_local_nonprim = NULL;

    // qrs_product_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(qrs_product_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = qrs_product_ref_parseFromJSON(self); //nonprimitive
    }

    // qrs_product_links->prior_version
    cJSON *prior_version = cJSON_GetObjectItemCaseSensitive(qrs_product_linksJSON, "priorVersion");
    if (cJSON_IsNull(prior_version)) {
        prior_version = NULL;
    }
    if (prior_version) { 
    prior_version_local_nonprim = qrs_product_ref_parseFromJSON(prior_version); //nonprimitive
    }

    // qrs_product_links->qrs_term_cat
    cJSON *qrs_term_cat = cJSON_GetObjectItemCaseSensitive(qrs_product_linksJSON, "qrsTermCAT");
    if (cJSON_IsNull(qrs_term_cat)) {
        qrs_term_cat = NULL;
    }
    if (qrs_term_cat) { 
    qrs_term_cat_local_nonprim = root_ct_term_ref_parseFromJSON(qrs_term_cat); //nonprimitive
    }

    // qrs_product_links->qrs_items
    cJSON *qrs_items = cJSON_GetObjectItemCaseSensitive(qrs_product_linksJSON, "qrsItems");
    if (cJSON_IsNull(qrs_items)) {
        qrs_items = NULL;
    }
    if (qrs_items) { 
    qrs_items_local_nonprim = qrs_items_ref_parseFromJSON(qrs_items); //nonprimitive
    }


    qrs_product_links_local_var = qrs_product_links_create_internal (
        self ? self_local_nonprim : NULL,
        prior_version ? prior_version_local_nonprim : NULL,
        qrs_term_cat ? qrs_term_cat_local_nonprim : NULL,
        qrs_items ? qrs_items_local_nonprim : NULL
        );

    return qrs_product_links_local_var;
end:
    if (self_local_nonprim) {
        qrs_product_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (prior_version_local_nonprim) {
        qrs_product_ref_free(prior_version_local_nonprim);
        prior_version_local_nonprim = NULL;
    }
    if (qrs_term_cat_local_nonprim) {
        root_ct_term_ref_free(qrs_term_cat_local_nonprim);
        qrs_term_cat_local_nonprim = NULL;
    }
    if (qrs_items_local_nonprim) {
        qrs_items_ref_free(qrs_items_local_nonprim);
        qrs_items_local_nonprim = NULL;
    }
    return NULL;

}
