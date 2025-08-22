#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "products_links.h"



static products_links_t *products_links_create_internal(
    products_ref_t *self,
    productgroup_data_collection_t *data_collection,
    productgroup_data_tabulation_t *data_tabulation,
    productgroup_data_analysis_t *data_analysis,
    productgroup_terminology_t *terminology,
    productgroup_qrs_t *measure
    ) {
    products_links_t *products_links_local_var = malloc(sizeof(products_links_t));
    if (!products_links_local_var) {
        return NULL;
    }
    products_links_local_var->self = self;
    products_links_local_var->data_collection = data_collection;
    products_links_local_var->data_tabulation = data_tabulation;
    products_links_local_var->data_analysis = data_analysis;
    products_links_local_var->terminology = terminology;
    products_links_local_var->measure = measure;

    products_links_local_var->_library_owned = 1;
    return products_links_local_var;
}

__attribute__((deprecated)) products_links_t *products_links_create(
    products_ref_t *self,
    productgroup_data_collection_t *data_collection,
    productgroup_data_tabulation_t *data_tabulation,
    productgroup_data_analysis_t *data_analysis,
    productgroup_terminology_t *terminology,
    productgroup_qrs_t *measure
    ) {
    return products_links_create_internal (
        self,
        data_collection,
        data_tabulation,
        data_analysis,
        terminology,
        measure
        );
}

void products_links_free(products_links_t *products_links) {
    if(NULL == products_links){
        return ;
    }
    if(products_links->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "products_links_free");
        return ;
    }
    listEntry_t *listEntry;
    if (products_links->self) {
        products_ref_free(products_links->self);
        products_links->self = NULL;
    }
    if (products_links->data_collection) {
        productgroup_data_collection_free(products_links->data_collection);
        products_links->data_collection = NULL;
    }
    if (products_links->data_tabulation) {
        productgroup_data_tabulation_free(products_links->data_tabulation);
        products_links->data_tabulation = NULL;
    }
    if (products_links->data_analysis) {
        productgroup_data_analysis_free(products_links->data_analysis);
        products_links->data_analysis = NULL;
    }
    if (products_links->terminology) {
        productgroup_terminology_free(products_links->terminology);
        products_links->terminology = NULL;
    }
    if (products_links->measure) {
        productgroup_qrs_free(products_links->measure);
        products_links->measure = NULL;
    }
    free(products_links);
}

cJSON *products_links_convertToJSON(products_links_t *products_links) {
    cJSON *item = cJSON_CreateObject();

    // products_links->self
    if(products_links->self) {
    cJSON *self_local_JSON = products_ref_convertToJSON(products_links->self);
    if(self_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "self", self_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // products_links->data_collection
    if(products_links->data_collection) {
    cJSON *data_collection_local_JSON = productgroup_data_collection_convertToJSON(products_links->data_collection);
    if(data_collection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "data-collection", data_collection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // products_links->data_tabulation
    if(products_links->data_tabulation) {
    cJSON *data_tabulation_local_JSON = productgroup_data_tabulation_convertToJSON(products_links->data_tabulation);
    if(data_tabulation_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "data-tabulation", data_tabulation_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // products_links->data_analysis
    if(products_links->data_analysis) {
    cJSON *data_analysis_local_JSON = productgroup_data_analysis_convertToJSON(products_links->data_analysis);
    if(data_analysis_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "data-analysis", data_analysis_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // products_links->terminology
    if(products_links->terminology) {
    cJSON *terminology_local_JSON = productgroup_terminology_convertToJSON(products_links->terminology);
    if(terminology_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "terminology", terminology_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // products_links->measure
    if(products_links->measure) {
    cJSON *measure_local_JSON = productgroup_qrs_convertToJSON(products_links->measure);
    if(measure_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "measure", measure_local_JSON);
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

products_links_t *products_links_parseFromJSON(cJSON *products_linksJSON){

    products_links_t *products_links_local_var = NULL;

    // define the local variable for products_links->self
    products_ref_t *self_local_nonprim = NULL;

    // define the local variable for products_links->data_collection
    productgroup_data_collection_t *data_collection_local_nonprim = NULL;

    // define the local variable for products_links->data_tabulation
    productgroup_data_tabulation_t *data_tabulation_local_nonprim = NULL;

    // define the local variable for products_links->data_analysis
    productgroup_data_analysis_t *data_analysis_local_nonprim = NULL;

    // define the local variable for products_links->terminology
    productgroup_terminology_t *terminology_local_nonprim = NULL;

    // define the local variable for products_links->measure
    productgroup_qrs_t *measure_local_nonprim = NULL;

    // products_links->self
    cJSON *self = cJSON_GetObjectItemCaseSensitive(products_linksJSON, "self");
    if (cJSON_IsNull(self)) {
        self = NULL;
    }
    if (self) { 
    self_local_nonprim = products_ref_parseFromJSON(self); //nonprimitive
    }

    // products_links->data_collection
    cJSON *data_collection = cJSON_GetObjectItemCaseSensitive(products_linksJSON, "data-collection");
    if (cJSON_IsNull(data_collection)) {
        data_collection = NULL;
    }
    if (data_collection) { 
    data_collection_local_nonprim = productgroup_data_collection_parseFromJSON(data_collection); //nonprimitive
    }

    // products_links->data_tabulation
    cJSON *data_tabulation = cJSON_GetObjectItemCaseSensitive(products_linksJSON, "data-tabulation");
    if (cJSON_IsNull(data_tabulation)) {
        data_tabulation = NULL;
    }
    if (data_tabulation) { 
    data_tabulation_local_nonprim = productgroup_data_tabulation_parseFromJSON(data_tabulation); //nonprimitive
    }

    // products_links->data_analysis
    cJSON *data_analysis = cJSON_GetObjectItemCaseSensitive(products_linksJSON, "data-analysis");
    if (cJSON_IsNull(data_analysis)) {
        data_analysis = NULL;
    }
    if (data_analysis) { 
    data_analysis_local_nonprim = productgroup_data_analysis_parseFromJSON(data_analysis); //nonprimitive
    }

    // products_links->terminology
    cJSON *terminology = cJSON_GetObjectItemCaseSensitive(products_linksJSON, "terminology");
    if (cJSON_IsNull(terminology)) {
        terminology = NULL;
    }
    if (terminology) { 
    terminology_local_nonprim = productgroup_terminology_parseFromJSON(terminology); //nonprimitive
    }

    // products_links->measure
    cJSON *measure = cJSON_GetObjectItemCaseSensitive(products_linksJSON, "measure");
    if (cJSON_IsNull(measure)) {
        measure = NULL;
    }
    if (measure) { 
    measure_local_nonprim = productgroup_qrs_parseFromJSON(measure); //nonprimitive
    }


    products_links_local_var = products_links_create_internal (
        self ? self_local_nonprim : NULL,
        data_collection ? data_collection_local_nonprim : NULL,
        data_tabulation ? data_tabulation_local_nonprim : NULL,
        data_analysis ? data_analysis_local_nonprim : NULL,
        terminology ? terminology_local_nonprim : NULL,
        measure ? measure_local_nonprim : NULL
        );

    return products_links_local_var;
end:
    if (self_local_nonprim) {
        products_ref_free(self_local_nonprim);
        self_local_nonprim = NULL;
    }
    if (data_collection_local_nonprim) {
        productgroup_data_collection_free(data_collection_local_nonprim);
        data_collection_local_nonprim = NULL;
    }
    if (data_tabulation_local_nonprim) {
        productgroup_data_tabulation_free(data_tabulation_local_nonprim);
        data_tabulation_local_nonprim = NULL;
    }
    if (data_analysis_local_nonprim) {
        productgroup_data_analysis_free(data_analysis_local_nonprim);
        data_analysis_local_nonprim = NULL;
    }
    if (terminology_local_nonprim) {
        productgroup_terminology_free(terminology_local_nonprim);
        terminology_local_nonprim = NULL;
    }
    if (measure_local_nonprim) {
        productgroup_qrs_free(measure_local_nonprim);
        measure_local_nonprim = NULL;
    }
    return NULL;

}
