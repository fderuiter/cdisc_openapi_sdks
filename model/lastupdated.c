#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "lastupdated.h"



static lastupdated_t *lastupdated_create_internal(
    lastupdated_links_t *_links,
    char *overall,
    char *data_analysis,
    char *data_collection,
    char *data_tabulation,
    char *measure,
    char *terminology
    ) {
    lastupdated_t *lastupdated_local_var = malloc(sizeof(lastupdated_t));
    if (!lastupdated_local_var) {
        return NULL;
    }
    lastupdated_local_var->_links = _links;
    lastupdated_local_var->overall = overall;
    lastupdated_local_var->data_analysis = data_analysis;
    lastupdated_local_var->data_collection = data_collection;
    lastupdated_local_var->data_tabulation = data_tabulation;
    lastupdated_local_var->measure = measure;
    lastupdated_local_var->terminology = terminology;

    lastupdated_local_var->_library_owned = 1;
    return lastupdated_local_var;
}

__attribute__((deprecated)) lastupdated_t *lastupdated_create(
    lastupdated_links_t *_links,
    char *overall,
    char *data_analysis,
    char *data_collection,
    char *data_tabulation,
    char *measure,
    char *terminology
    ) {
    return lastupdated_create_internal (
        _links,
        overall,
        data_analysis,
        data_collection,
        data_tabulation,
        measure,
        terminology
        );
}

void lastupdated_free(lastupdated_t *lastupdated) {
    if(NULL == lastupdated){
        return ;
    }
    if(lastupdated->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "lastupdated_free");
        return ;
    }
    listEntry_t *listEntry;
    if (lastupdated->_links) {
        lastupdated_links_free(lastupdated->_links);
        lastupdated->_links = NULL;
    }
    if (lastupdated->overall) {
        free(lastupdated->overall);
        lastupdated->overall = NULL;
    }
    if (lastupdated->data_analysis) {
        free(lastupdated->data_analysis);
        lastupdated->data_analysis = NULL;
    }
    if (lastupdated->data_collection) {
        free(lastupdated->data_collection);
        lastupdated->data_collection = NULL;
    }
    if (lastupdated->data_tabulation) {
        free(lastupdated->data_tabulation);
        lastupdated->data_tabulation = NULL;
    }
    if (lastupdated->measure) {
        free(lastupdated->measure);
        lastupdated->measure = NULL;
    }
    if (lastupdated->terminology) {
        free(lastupdated->terminology);
        lastupdated->terminology = NULL;
    }
    free(lastupdated);
}

cJSON *lastupdated_convertToJSON(lastupdated_t *lastupdated) {
    cJSON *item = cJSON_CreateObject();

    // lastupdated->_links
    if(lastupdated->_links) {
    cJSON *_links_local_JSON = lastupdated_links_convertToJSON(lastupdated->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // lastupdated->overall
    if(lastupdated->overall) {
    if(cJSON_AddStringToObject(item, "overall", lastupdated->overall) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated->data_analysis
    if(lastupdated->data_analysis) {
    if(cJSON_AddStringToObject(item, "data-analysis", lastupdated->data_analysis) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated->data_collection
    if(lastupdated->data_collection) {
    if(cJSON_AddStringToObject(item, "data-collection", lastupdated->data_collection) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated->data_tabulation
    if(lastupdated->data_tabulation) {
    if(cJSON_AddStringToObject(item, "data-tabulation", lastupdated->data_tabulation) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated->measure
    if(lastupdated->measure) {
    if(cJSON_AddStringToObject(item, "measure", lastupdated->measure) == NULL) {
    goto fail; //String
    }
    }


    // lastupdated->terminology
    if(lastupdated->terminology) {
    if(cJSON_AddStringToObject(item, "terminology", lastupdated->terminology) == NULL) {
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

lastupdated_t *lastupdated_parseFromJSON(cJSON *lastupdatedJSON){

    lastupdated_t *lastupdated_local_var = NULL;

    // define the local variable for lastupdated->_links
    lastupdated_links_t *_links_local_nonprim = NULL;

    // lastupdated->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = lastupdated_links_parseFromJSON(_links); //nonprimitive
    }

    // lastupdated->overall
    cJSON *overall = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "overall");
    if (cJSON_IsNull(overall)) {
        overall = NULL;
    }
    if (overall) { 
    if(!cJSON_IsString(overall) && !cJSON_IsNull(overall))
    {
    goto end; //String
    }
    }

    // lastupdated->data_analysis
    cJSON *data_analysis = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "data-analysis");
    if (cJSON_IsNull(data_analysis)) {
        data_analysis = NULL;
    }
    if (data_analysis) { 
    if(!cJSON_IsString(data_analysis) && !cJSON_IsNull(data_analysis))
    {
    goto end; //String
    }
    }

    // lastupdated->data_collection
    cJSON *data_collection = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "data-collection");
    if (cJSON_IsNull(data_collection)) {
        data_collection = NULL;
    }
    if (data_collection) { 
    if(!cJSON_IsString(data_collection) && !cJSON_IsNull(data_collection))
    {
    goto end; //String
    }
    }

    // lastupdated->data_tabulation
    cJSON *data_tabulation = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "data-tabulation");
    if (cJSON_IsNull(data_tabulation)) {
        data_tabulation = NULL;
    }
    if (data_tabulation) { 
    if(!cJSON_IsString(data_tabulation) && !cJSON_IsNull(data_tabulation))
    {
    goto end; //String
    }
    }

    // lastupdated->measure
    cJSON *measure = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "measure");
    if (cJSON_IsNull(measure)) {
        measure = NULL;
    }
    if (measure) { 
    if(!cJSON_IsString(measure) && !cJSON_IsNull(measure))
    {
    goto end; //String
    }
    }

    // lastupdated->terminology
    cJSON *terminology = cJSON_GetObjectItemCaseSensitive(lastupdatedJSON, "terminology");
    if (cJSON_IsNull(terminology)) {
        terminology = NULL;
    }
    if (terminology) { 
    if(!cJSON_IsString(terminology) && !cJSON_IsNull(terminology))
    {
    goto end; //String
    }
    }


    lastupdated_local_var = lastupdated_create_internal (
        _links ? _links_local_nonprim : NULL,
        overall && !cJSON_IsNull(overall) ? strdup(overall->valuestring) : NULL,
        data_analysis && !cJSON_IsNull(data_analysis) ? strdup(data_analysis->valuestring) : NULL,
        data_collection && !cJSON_IsNull(data_collection) ? strdup(data_collection->valuestring) : NULL,
        data_tabulation && !cJSON_IsNull(data_tabulation) ? strdup(data_tabulation->valuestring) : NULL,
        measure && !cJSON_IsNull(measure) ? strdup(measure->valuestring) : NULL,
        terminology && !cJSON_IsNull(terminology) ? strdup(terminology->valuestring) : NULL
        );

    return lastupdated_local_var;
end:
    if (_links_local_nonprim) {
        lastupdated_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
