#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "SearchesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096

// Functions for enum  for SearchesAPI_mdrSearchScopesScopeGet

static char* mdrSearchScopesScopeGet__ToString(cdisc_library_api_mdrSearchScopesScopeGet_scope_e ){
    char *Array[] =  { "NULL", "class", "codelist", "conceptId", "core", "dataStructure", "datasetStructure", "definition", "description", "domain", "effectiveDate", "extensible", "href", "label", "measureType", "name", "preferredTerm", "product", "productGroup", "registrationStatus", "roleDescription", "sdtmTarget", "simpleDatatype", "submissionValue", "synonyms", "type", "uiHref", "valueDomain", "variableSet", "version" };
    return Array[];
}

static cdisc_library_api_mdrSearchScopesScopeGet_scope_e mdrSearchScopesScopeGet__FromString(char* ){
    int stringToReturn = 0;
    char *Array[] =  { "NULL", "class", "codelist", "conceptId", "core", "dataStructure", "datasetStructure", "definition", "description", "domain", "effectiveDate", "extensible", "href", "label", "measureType", "name", "preferredTerm", "product", "productGroup", "registrationStatus", "roleDescription", "sdtmTarget", "simpleDatatype", "submissionValue", "synonyms", "type", "uiHref", "valueDomain", "variableSet", "version" };
    size_t sizeofArray = sizeof(Array) / sizeof(Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(, Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function mdrSearchScopesScopeGet__convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *mdrSearchScopesScopeGet__convertToJSON(cdisc_library_api_mdrSearchScopesScopeGet_scope_e ) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function mdrSearchScopesScopeGet__parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cdisc_library_api_mdrSearchScopesScopeGet_scope_e mdrSearchScopesScopeGet__parseFromJSON(cJSON* JSON) {
    cdisc_library_api_mdrSearchScopesScopeGet_scope_e Variable = 0;
    return Variable;
end:
    return 0;
}
*/


// Get Search Results Across CDISC Library
//
default_search_response_t*
SearchesAPI_mdrSearchGet(apiClient_t *apiClient, char *q, char *highlight, double start, double pageSize, char *_class, char *codelist, char *conceptId, char *core, char *dataStructure, char *datasetStructure, char *definition, char *description, char *domain, char *effectiveDate, char *extensible, char *href, char *label, char *measureType, char *name, char *preferredTerm, char *product, char *productGroup, char *registrationStatus, char *roleDescription, char *sdtmTarget, char *simpleDatatype, char *submissionValue, char *synonyms, char *type, char *uiHref, char *valueDomain, char *variableSet, char *version)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/mdr/search");





    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
    }

    // query parameters
    char *keyQuery_highlight = NULL;
    char * valueQuery_highlight = NULL;
    keyValuePair_t *keyPairQuery_highlight = 0;
    if (highlight)
    {
        keyQuery_highlight = strdup("highlight");
        valueQuery_highlight = strdup((highlight));
        keyPairQuery_highlight = keyValuePair_create(keyQuery_highlight, valueQuery_highlight);
        list_addElement(localVarQueryParameters,keyPairQuery_highlight);
    }

    // query parameters
    char *keyQuery_start = NULL;
    double valueQuery_start ;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = (start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, &valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_pageSize = NULL;
    double valueQuery_pageSize ;
    keyValuePair_t *keyPairQuery_pageSize = 0;
    if (pageSize)
    {
        keyQuery_pageSize = strdup("pageSize");
        valueQuery_pageSize = (pageSize);
        keyPairQuery_pageSize = keyValuePair_create(keyQuery_pageSize, &valueQuery_pageSize);
        list_addElement(localVarQueryParameters,keyPairQuery_pageSize);
    }

    // query parameters
    char *keyQuery__class = NULL;
    char * valueQuery__class = NULL;
    keyValuePair_t *keyPairQuery__class = 0;
    if (_class)
    {
        keyQuery__class = strdup("class");
        valueQuery__class = strdup((_class));
        keyPairQuery__class = keyValuePair_create(keyQuery__class, valueQuery__class);
        list_addElement(localVarQueryParameters,keyPairQuery__class);
    }

    // query parameters
    char *keyQuery_codelist = NULL;
    char * valueQuery_codelist = NULL;
    keyValuePair_t *keyPairQuery_codelist = 0;
    if (codelist)
    {
        keyQuery_codelist = strdup("codelist");
        valueQuery_codelist = strdup((codelist));
        keyPairQuery_codelist = keyValuePair_create(keyQuery_codelist, valueQuery_codelist);
        list_addElement(localVarQueryParameters,keyPairQuery_codelist);
    }

    // query parameters
    char *keyQuery_conceptId = NULL;
    char * valueQuery_conceptId = NULL;
    keyValuePair_t *keyPairQuery_conceptId = 0;
    if (conceptId)
    {
        keyQuery_conceptId = strdup("conceptId");
        valueQuery_conceptId = strdup((conceptId));
        keyPairQuery_conceptId = keyValuePair_create(keyQuery_conceptId, valueQuery_conceptId);
        list_addElement(localVarQueryParameters,keyPairQuery_conceptId);
    }

    // query parameters
    char *keyQuery_core = NULL;
    char * valueQuery_core = NULL;
    keyValuePair_t *keyPairQuery_core = 0;
    if (core)
    {
        keyQuery_core = strdup("core");
        valueQuery_core = strdup((core));
        keyPairQuery_core = keyValuePair_create(keyQuery_core, valueQuery_core);
        list_addElement(localVarQueryParameters,keyPairQuery_core);
    }

    // query parameters
    char *keyQuery_dataStructure = NULL;
    char * valueQuery_dataStructure = NULL;
    keyValuePair_t *keyPairQuery_dataStructure = 0;
    if (dataStructure)
    {
        keyQuery_dataStructure = strdup("dataStructure");
        valueQuery_dataStructure = strdup((dataStructure));
        keyPairQuery_dataStructure = keyValuePair_create(keyQuery_dataStructure, valueQuery_dataStructure);
        list_addElement(localVarQueryParameters,keyPairQuery_dataStructure);
    }

    // query parameters
    char *keyQuery_datasetStructure = NULL;
    char * valueQuery_datasetStructure = NULL;
    keyValuePair_t *keyPairQuery_datasetStructure = 0;
    if (datasetStructure)
    {
        keyQuery_datasetStructure = strdup("datasetStructure");
        valueQuery_datasetStructure = strdup((datasetStructure));
        keyPairQuery_datasetStructure = keyValuePair_create(keyQuery_datasetStructure, valueQuery_datasetStructure);
        list_addElement(localVarQueryParameters,keyPairQuery_datasetStructure);
    }

    // query parameters
    char *keyQuery_definition = NULL;
    char * valueQuery_definition = NULL;
    keyValuePair_t *keyPairQuery_definition = 0;
    if (definition)
    {
        keyQuery_definition = strdup("definition");
        valueQuery_definition = strdup((definition));
        keyPairQuery_definition = keyValuePair_create(keyQuery_definition, valueQuery_definition);
        list_addElement(localVarQueryParameters,keyPairQuery_definition);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_domain = NULL;
    char * valueQuery_domain = NULL;
    keyValuePair_t *keyPairQuery_domain = 0;
    if (domain)
    {
        keyQuery_domain = strdup("domain");
        valueQuery_domain = strdup((domain));
        keyPairQuery_domain = keyValuePair_create(keyQuery_domain, valueQuery_domain);
        list_addElement(localVarQueryParameters,keyPairQuery_domain);
    }

    // query parameters
    char *keyQuery_effectiveDate = NULL;
    char * valueQuery_effectiveDate = NULL;
    keyValuePair_t *keyPairQuery_effectiveDate = 0;
    if (effectiveDate)
    {
        keyQuery_effectiveDate = strdup("effectiveDate");
        valueQuery_effectiveDate = strdup((effectiveDate));
        keyPairQuery_effectiveDate = keyValuePair_create(keyQuery_effectiveDate, valueQuery_effectiveDate);
        list_addElement(localVarQueryParameters,keyPairQuery_effectiveDate);
    }

    // query parameters
    char *keyQuery_extensible = NULL;
    char * valueQuery_extensible = NULL;
    keyValuePair_t *keyPairQuery_extensible = 0;
    if (extensible)
    {
        keyQuery_extensible = strdup("extensible");
        valueQuery_extensible = strdup((extensible));
        keyPairQuery_extensible = keyValuePair_create(keyQuery_extensible, valueQuery_extensible);
        list_addElement(localVarQueryParameters,keyPairQuery_extensible);
    }

    // query parameters
    char *keyQuery_href = NULL;
    char * valueQuery_href = NULL;
    keyValuePair_t *keyPairQuery_href = 0;
    if (href)
    {
        keyQuery_href = strdup("href");
        valueQuery_href = strdup((href));
        keyPairQuery_href = keyValuePair_create(keyQuery_href, valueQuery_href);
        list_addElement(localVarQueryParameters,keyPairQuery_href);
    }

    // query parameters
    char *keyQuery_label = NULL;
    char * valueQuery_label = NULL;
    keyValuePair_t *keyPairQuery_label = 0;
    if (label)
    {
        keyQuery_label = strdup("label");
        valueQuery_label = strdup((label));
        keyPairQuery_label = keyValuePair_create(keyQuery_label, valueQuery_label);
        list_addElement(localVarQueryParameters,keyPairQuery_label);
    }

    // query parameters
    char *keyQuery_measureType = NULL;
    char * valueQuery_measureType = NULL;
    keyValuePair_t *keyPairQuery_measureType = 0;
    if (measureType)
    {
        keyQuery_measureType = strdup("measureType");
        valueQuery_measureType = strdup((measureType));
        keyPairQuery_measureType = keyValuePair_create(keyQuery_measureType, valueQuery_measureType);
        list_addElement(localVarQueryParameters,keyPairQuery_measureType);
    }

    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_preferredTerm = NULL;
    char * valueQuery_preferredTerm = NULL;
    keyValuePair_t *keyPairQuery_preferredTerm = 0;
    if (preferredTerm)
    {
        keyQuery_preferredTerm = strdup("preferredTerm");
        valueQuery_preferredTerm = strdup((preferredTerm));
        keyPairQuery_preferredTerm = keyValuePair_create(keyQuery_preferredTerm, valueQuery_preferredTerm);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredTerm);
    }

    // query parameters
    char *keyQuery_product = NULL;
    char * valueQuery_product = NULL;
    keyValuePair_t *keyPairQuery_product = 0;
    if (product)
    {
        keyQuery_product = strdup("product");
        valueQuery_product = strdup((product));
        keyPairQuery_product = keyValuePair_create(keyQuery_product, valueQuery_product);
        list_addElement(localVarQueryParameters,keyPairQuery_product);
    }

    // query parameters
    char *keyQuery_productGroup = NULL;
    char * valueQuery_productGroup = NULL;
    keyValuePair_t *keyPairQuery_productGroup = 0;
    if (productGroup)
    {
        keyQuery_productGroup = strdup("productGroup");
        valueQuery_productGroup = strdup((productGroup));
        keyPairQuery_productGroup = keyValuePair_create(keyQuery_productGroup, valueQuery_productGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_productGroup);
    }

    // query parameters
    char *keyQuery_registrationStatus = NULL;
    char * valueQuery_registrationStatus = NULL;
    keyValuePair_t *keyPairQuery_registrationStatus = 0;
    if (registrationStatus)
    {
        keyQuery_registrationStatus = strdup("registrationStatus");
        valueQuery_registrationStatus = strdup((registrationStatus));
        keyPairQuery_registrationStatus = keyValuePair_create(keyQuery_registrationStatus, valueQuery_registrationStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_registrationStatus);
    }

    // query parameters
    char *keyQuery_roleDescription = NULL;
    char * valueQuery_roleDescription = NULL;
    keyValuePair_t *keyPairQuery_roleDescription = 0;
    if (roleDescription)
    {
        keyQuery_roleDescription = strdup("roleDescription");
        valueQuery_roleDescription = strdup((roleDescription));
        keyPairQuery_roleDescription = keyValuePair_create(keyQuery_roleDescription, valueQuery_roleDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_roleDescription);
    }

    // query parameters
    char *keyQuery_sdtmTarget = NULL;
    char * valueQuery_sdtmTarget = NULL;
    keyValuePair_t *keyPairQuery_sdtmTarget = 0;
    if (sdtmTarget)
    {
        keyQuery_sdtmTarget = strdup("sdtmTarget");
        valueQuery_sdtmTarget = strdup((sdtmTarget));
        keyPairQuery_sdtmTarget = keyValuePair_create(keyQuery_sdtmTarget, valueQuery_sdtmTarget);
        list_addElement(localVarQueryParameters,keyPairQuery_sdtmTarget);
    }

    // query parameters
    char *keyQuery_simpleDatatype = NULL;
    char * valueQuery_simpleDatatype = NULL;
    keyValuePair_t *keyPairQuery_simpleDatatype = 0;
    if (simpleDatatype)
    {
        keyQuery_simpleDatatype = strdup("simpleDatatype");
        valueQuery_simpleDatatype = strdup((simpleDatatype));
        keyPairQuery_simpleDatatype = keyValuePair_create(keyQuery_simpleDatatype, valueQuery_simpleDatatype);
        list_addElement(localVarQueryParameters,keyPairQuery_simpleDatatype);
    }

    // query parameters
    char *keyQuery_submissionValue = NULL;
    char * valueQuery_submissionValue = NULL;
    keyValuePair_t *keyPairQuery_submissionValue = 0;
    if (submissionValue)
    {
        keyQuery_submissionValue = strdup("submissionValue");
        valueQuery_submissionValue = strdup((submissionValue));
        keyPairQuery_submissionValue = keyValuePair_create(keyQuery_submissionValue, valueQuery_submissionValue);
        list_addElement(localVarQueryParameters,keyPairQuery_submissionValue);
    }

    // query parameters
    char *keyQuery_synonyms = NULL;
    char * valueQuery_synonyms = NULL;
    keyValuePair_t *keyPairQuery_synonyms = 0;
    if (synonyms)
    {
        keyQuery_synonyms = strdup("synonyms");
        valueQuery_synonyms = strdup((synonyms));
        keyPairQuery_synonyms = keyValuePair_create(keyQuery_synonyms, valueQuery_synonyms);
        list_addElement(localVarQueryParameters,keyPairQuery_synonyms);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_uiHref = NULL;
    char * valueQuery_uiHref = NULL;
    keyValuePair_t *keyPairQuery_uiHref = 0;
    if (uiHref)
    {
        keyQuery_uiHref = strdup("uiHref");
        valueQuery_uiHref = strdup((uiHref));
        keyPairQuery_uiHref = keyValuePair_create(keyQuery_uiHref, valueQuery_uiHref);
        list_addElement(localVarQueryParameters,keyPairQuery_uiHref);
    }

    // query parameters
    char *keyQuery_valueDomain = NULL;
    char * valueQuery_valueDomain = NULL;
    keyValuePair_t *keyPairQuery_valueDomain = 0;
    if (valueDomain)
    {
        keyQuery_valueDomain = strdup("valueDomain");
        valueQuery_valueDomain = strdup((valueDomain));
        keyPairQuery_valueDomain = keyValuePair_create(keyQuery_valueDomain, valueQuery_valueDomain);
        list_addElement(localVarQueryParameters,keyPairQuery_valueDomain);
    }

    // query parameters
    char *keyQuery_variableSet = NULL;
    char * valueQuery_variableSet = NULL;
    keyValuePair_t *keyPairQuery_variableSet = 0;
    if (variableSet)
    {
        keyQuery_variableSet = strdup("variableSet");
        valueQuery_variableSet = strdup((variableSet));
        keyPairQuery_variableSet = keyValuePair_create(keyQuery_variableSet, valueQuery_variableSet);
        list_addElement(localVarQueryParameters,keyPairQuery_variableSet);
    }

    // query parameters
    char *keyQuery_version = NULL;
    char * valueQuery_version = NULL;
    keyValuePair_t *keyPairQuery_version = 0;
    if (version)
    {
        keyQuery_version = strdup("version");
        valueQuery_version = strdup((version));
        keyPairQuery_version = keyValuePair_create(keyQuery_version, valueQuery_version);
        list_addElement(localVarQueryParameters,keyPairQuery_version);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","OK");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Bad Request");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","Forbidden");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","Not Found");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 405) {
    //    printf("%s\n","Method Not Allowed");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 406) {
    //    printf("%s\n","Not Acceptable");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","Internal Server Error");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 503) {
    //    printf("%s\n","Service Unavailable");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 504) {
    //    printf("%s\n","Gateway Timeout Error");
    //}
    //nonprimitive not container
    default_search_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SearchesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = default_search_response_parseFromJSON(SearchesAPIlocalVarJSON);
        cJSON_Delete(SearchesAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
    }
    if(keyQuery_highlight){
        free(keyQuery_highlight);
        keyQuery_highlight = NULL;
    }
    if(valueQuery_highlight){
        free(valueQuery_highlight);
        valueQuery_highlight = NULL;
    }
    if(keyPairQuery_highlight){
        keyValuePair_free(keyPairQuery_highlight);
        keyPairQuery_highlight = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_pageSize){
        free(keyQuery_pageSize);
        keyQuery_pageSize = NULL;
    }
    if(keyPairQuery_pageSize){
        keyValuePair_free(keyPairQuery_pageSize);
        keyPairQuery_pageSize = NULL;
    }
    if(keyQuery__class){
        free(keyQuery__class);
        keyQuery__class = NULL;
    }
    if(valueQuery__class){
        free(valueQuery__class);
        valueQuery__class = NULL;
    }
    if(keyPairQuery__class){
        keyValuePair_free(keyPairQuery__class);
        keyPairQuery__class = NULL;
    }
    if(keyQuery_codelist){
        free(keyQuery_codelist);
        keyQuery_codelist = NULL;
    }
    if(valueQuery_codelist){
        free(valueQuery_codelist);
        valueQuery_codelist = NULL;
    }
    if(keyPairQuery_codelist){
        keyValuePair_free(keyPairQuery_codelist);
        keyPairQuery_codelist = NULL;
    }
    if(keyQuery_conceptId){
        free(keyQuery_conceptId);
        keyQuery_conceptId = NULL;
    }
    if(valueQuery_conceptId){
        free(valueQuery_conceptId);
        valueQuery_conceptId = NULL;
    }
    if(keyPairQuery_conceptId){
        keyValuePair_free(keyPairQuery_conceptId);
        keyPairQuery_conceptId = NULL;
    }
    if(keyQuery_core){
        free(keyQuery_core);
        keyQuery_core = NULL;
    }
    if(valueQuery_core){
        free(valueQuery_core);
        valueQuery_core = NULL;
    }
    if(keyPairQuery_core){
        keyValuePair_free(keyPairQuery_core);
        keyPairQuery_core = NULL;
    }
    if(keyQuery_dataStructure){
        free(keyQuery_dataStructure);
        keyQuery_dataStructure = NULL;
    }
    if(valueQuery_dataStructure){
        free(valueQuery_dataStructure);
        valueQuery_dataStructure = NULL;
    }
    if(keyPairQuery_dataStructure){
        keyValuePair_free(keyPairQuery_dataStructure);
        keyPairQuery_dataStructure = NULL;
    }
    if(keyQuery_datasetStructure){
        free(keyQuery_datasetStructure);
        keyQuery_datasetStructure = NULL;
    }
    if(valueQuery_datasetStructure){
        free(valueQuery_datasetStructure);
        valueQuery_datasetStructure = NULL;
    }
    if(keyPairQuery_datasetStructure){
        keyValuePair_free(keyPairQuery_datasetStructure);
        keyPairQuery_datasetStructure = NULL;
    }
    if(keyQuery_definition){
        free(keyQuery_definition);
        keyQuery_definition = NULL;
    }
    if(valueQuery_definition){
        free(valueQuery_definition);
        valueQuery_definition = NULL;
    }
    if(keyPairQuery_definition){
        keyValuePair_free(keyPairQuery_definition);
        keyPairQuery_definition = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_domain){
        free(keyQuery_domain);
        keyQuery_domain = NULL;
    }
    if(valueQuery_domain){
        free(valueQuery_domain);
        valueQuery_domain = NULL;
    }
    if(keyPairQuery_domain){
        keyValuePair_free(keyPairQuery_domain);
        keyPairQuery_domain = NULL;
    }
    if(keyQuery_effectiveDate){
        free(keyQuery_effectiveDate);
        keyQuery_effectiveDate = NULL;
    }
    if(valueQuery_effectiveDate){
        free(valueQuery_effectiveDate);
        valueQuery_effectiveDate = NULL;
    }
    if(keyPairQuery_effectiveDate){
        keyValuePair_free(keyPairQuery_effectiveDate);
        keyPairQuery_effectiveDate = NULL;
    }
    if(keyQuery_extensible){
        free(keyQuery_extensible);
        keyQuery_extensible = NULL;
    }
    if(valueQuery_extensible){
        free(valueQuery_extensible);
        valueQuery_extensible = NULL;
    }
    if(keyPairQuery_extensible){
        keyValuePair_free(keyPairQuery_extensible);
        keyPairQuery_extensible = NULL;
    }
    if(keyQuery_href){
        free(keyQuery_href);
        keyQuery_href = NULL;
    }
    if(valueQuery_href){
        free(valueQuery_href);
        valueQuery_href = NULL;
    }
    if(keyPairQuery_href){
        keyValuePair_free(keyPairQuery_href);
        keyPairQuery_href = NULL;
    }
    if(keyQuery_label){
        free(keyQuery_label);
        keyQuery_label = NULL;
    }
    if(valueQuery_label){
        free(valueQuery_label);
        valueQuery_label = NULL;
    }
    if(keyPairQuery_label){
        keyValuePair_free(keyPairQuery_label);
        keyPairQuery_label = NULL;
    }
    if(keyQuery_measureType){
        free(keyQuery_measureType);
        keyQuery_measureType = NULL;
    }
    if(valueQuery_measureType){
        free(valueQuery_measureType);
        valueQuery_measureType = NULL;
    }
    if(keyPairQuery_measureType){
        keyValuePair_free(keyPairQuery_measureType);
        keyPairQuery_measureType = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_preferredTerm){
        free(keyQuery_preferredTerm);
        keyQuery_preferredTerm = NULL;
    }
    if(valueQuery_preferredTerm){
        free(valueQuery_preferredTerm);
        valueQuery_preferredTerm = NULL;
    }
    if(keyPairQuery_preferredTerm){
        keyValuePair_free(keyPairQuery_preferredTerm);
        keyPairQuery_preferredTerm = NULL;
    }
    if(keyQuery_product){
        free(keyQuery_product);
        keyQuery_product = NULL;
    }
    if(valueQuery_product){
        free(valueQuery_product);
        valueQuery_product = NULL;
    }
    if(keyPairQuery_product){
        keyValuePair_free(keyPairQuery_product);
        keyPairQuery_product = NULL;
    }
    if(keyQuery_productGroup){
        free(keyQuery_productGroup);
        keyQuery_productGroup = NULL;
    }
    if(valueQuery_productGroup){
        free(valueQuery_productGroup);
        valueQuery_productGroup = NULL;
    }
    if(keyPairQuery_productGroup){
        keyValuePair_free(keyPairQuery_productGroup);
        keyPairQuery_productGroup = NULL;
    }
    if(keyQuery_registrationStatus){
        free(keyQuery_registrationStatus);
        keyQuery_registrationStatus = NULL;
    }
    if(valueQuery_registrationStatus){
        free(valueQuery_registrationStatus);
        valueQuery_registrationStatus = NULL;
    }
    if(keyPairQuery_registrationStatus){
        keyValuePair_free(keyPairQuery_registrationStatus);
        keyPairQuery_registrationStatus = NULL;
    }
    if(keyQuery_roleDescription){
        free(keyQuery_roleDescription);
        keyQuery_roleDescription = NULL;
    }
    if(valueQuery_roleDescription){
        free(valueQuery_roleDescription);
        valueQuery_roleDescription = NULL;
    }
    if(keyPairQuery_roleDescription){
        keyValuePair_free(keyPairQuery_roleDescription);
        keyPairQuery_roleDescription = NULL;
    }
    if(keyQuery_sdtmTarget){
        free(keyQuery_sdtmTarget);
        keyQuery_sdtmTarget = NULL;
    }
    if(valueQuery_sdtmTarget){
        free(valueQuery_sdtmTarget);
        valueQuery_sdtmTarget = NULL;
    }
    if(keyPairQuery_sdtmTarget){
        keyValuePair_free(keyPairQuery_sdtmTarget);
        keyPairQuery_sdtmTarget = NULL;
    }
    if(keyQuery_simpleDatatype){
        free(keyQuery_simpleDatatype);
        keyQuery_simpleDatatype = NULL;
    }
    if(valueQuery_simpleDatatype){
        free(valueQuery_simpleDatatype);
        valueQuery_simpleDatatype = NULL;
    }
    if(keyPairQuery_simpleDatatype){
        keyValuePair_free(keyPairQuery_simpleDatatype);
        keyPairQuery_simpleDatatype = NULL;
    }
    if(keyQuery_submissionValue){
        free(keyQuery_submissionValue);
        keyQuery_submissionValue = NULL;
    }
    if(valueQuery_submissionValue){
        free(valueQuery_submissionValue);
        valueQuery_submissionValue = NULL;
    }
    if(keyPairQuery_submissionValue){
        keyValuePair_free(keyPairQuery_submissionValue);
        keyPairQuery_submissionValue = NULL;
    }
    if(keyQuery_synonyms){
        free(keyQuery_synonyms);
        keyQuery_synonyms = NULL;
    }
    if(valueQuery_synonyms){
        free(valueQuery_synonyms);
        valueQuery_synonyms = NULL;
    }
    if(keyPairQuery_synonyms){
        keyValuePair_free(keyPairQuery_synonyms);
        keyPairQuery_synonyms = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_uiHref){
        free(keyQuery_uiHref);
        keyQuery_uiHref = NULL;
    }
    if(valueQuery_uiHref){
        free(valueQuery_uiHref);
        valueQuery_uiHref = NULL;
    }
    if(keyPairQuery_uiHref){
        keyValuePair_free(keyPairQuery_uiHref);
        keyPairQuery_uiHref = NULL;
    }
    if(keyQuery_valueDomain){
        free(keyQuery_valueDomain);
        keyQuery_valueDomain = NULL;
    }
    if(valueQuery_valueDomain){
        free(valueQuery_valueDomain);
        valueQuery_valueDomain = NULL;
    }
    if(keyPairQuery_valueDomain){
        keyValuePair_free(keyPairQuery_valueDomain);
        keyPairQuery_valueDomain = NULL;
    }
    if(keyQuery_variableSet){
        free(keyQuery_variableSet);
        keyQuery_variableSet = NULL;
    }
    if(valueQuery_variableSet){
        free(valueQuery_variableSet);
        valueQuery_variableSet = NULL;
    }
    if(keyPairQuery_variableSet){
        keyValuePair_free(keyPairQuery_variableSet);
        keyPairQuery_variableSet = NULL;
    }
    if(keyQuery_version){
        free(keyQuery_version);
        keyQuery_version = NULL;
    }
    if(valueQuery_version){
        free(valueQuery_version);
        valueQuery_version = NULL;
    }
    if(keyPairQuery_version){
        keyValuePair_free(keyPairQuery_version);
        keyPairQuery_version = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Search Results Across CDISC Library
//
_mdr_search_scopes_get_200_response_t*
SearchesAPI_mdrSearchScopesGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/mdr/search/scopes");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","OK");
    //}
    //nonprimitive not container
    _mdr_search_scopes_get_200_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SearchesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = _mdr_search_scopes_get_200_response_parseFromJSON(SearchesAPIlocalVarJSON);
        cJSON_Delete(SearchesAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Search Results Limited to Scope
//
scope_values_t*
SearchesAPI_mdrSearchScopesScopeGet(apiClient_t *apiClient, default_search_scopes_e scope)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/mdr/search/scopes/{scope}");



    // Path Params
    long sizeOfPathParams_scope =  + sizeof("{ scope }") - 1;


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","OK");
    //}
    //nonprimitive not container
    scope_values_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SearchesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = scope_values_parseFromJSON(SearchesAPIlocalVarJSON);
        cJSON_Delete(SearchesAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_scope);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

