#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get CDASH Class Domain List
//
cdash_class_domains_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassDomainsGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/classes/{class}/domains");

    if(!version)
        goto end;
    if(!_class)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(_class)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams__class = strlen(version)+3 + strlen(_class)+3 + sizeof("{ class }") - 1;
    if(_class == NULL) {
        goto end;
    }
    char* localVarToReplace__class = malloc(sizeOfPathParams__class);
    sprintf(localVarToReplace__class, "{%s}", "class");

    localVarPath = strReplace(localVarPath, localVarToReplace__class, _class);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_class_domains_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_class_domains_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    free(localVarToReplace__class);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Class Field
//
cdash_class_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassFieldsFieldGet(apiClient_t *apiClient, char *version, char *_class, char *field)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/classes/{class}/fields/{field}");

    if(!version)
        goto end;
    if(!_class)
        goto end;
    if(!field)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(_class)+3 + strlen(field)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams__class = strlen(version)+3 + strlen(_class)+3 + strlen(field)+3 + sizeof("{ class }") - 1;
    if(_class == NULL) {
        goto end;
    }
    char* localVarToReplace__class = malloc(sizeOfPathParams__class);
    sprintf(localVarToReplace__class, "{%s}", "class");

    localVarPath = strReplace(localVarPath, localVarToReplace__class, _class);

    // Path Params
    long sizeOfPathParams_field = strlen(version)+3 + strlen(_class)+3 + strlen(field)+3 + sizeof("{ field }") - 1;
    if(field == NULL) {
        goto end;
    }
    char* localVarToReplace_field = malloc(sizeOfPathParams_field);
    sprintf(localVarToReplace_field, "{%s}", "field");

    localVarPath = strReplace(localVarPath, localVarToReplace_field, field);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_class_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_class_field_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    free(localVarToReplace__class);
    free(localVarToReplace_field);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Class
//
cdash_class_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/classes/{class}");

    if(!version)
        goto end;
    if(!_class)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(_class)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams__class = strlen(version)+3 + strlen(_class)+3 + sizeof("{ class }") - 1;
    if(_class == NULL) {
        goto end;
    }
    char* localVarToReplace__class = malloc(sizeOfPathParams__class);
    sprintf(localVarToReplace__class, "{%s}", "class");

    localVarPath = strReplace(localVarPath, localVarToReplace__class, _class);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_class_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_class_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    free(localVarToReplace__class);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Class List
//
cdash_product_classes_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionClassesGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/classes");

    if(!version)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_product_classes_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_product_classes_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Domain Field
//
cdash_domain_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *field)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/domains/{domain}/fields/{field}");

    if(!version)
        goto end;
    if(!domain)
        goto end;
    if(!field)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(domain)+3 + strlen(field)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_domain = strlen(version)+3 + strlen(domain)+3 + strlen(field)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);

    // Path Params
    long sizeOfPathParams_field = strlen(version)+3 + strlen(domain)+3 + strlen(field)+3 + sizeof("{ field }") - 1;
    if(field == NULL) {
        goto end;
    }
    char* localVarToReplace_field = malloc(sizeOfPathParams_field);
    sprintf(localVarToReplace_field, "{%s}", "field");

    localVarPath = strReplace(localVarPath, localVarToReplace_field, field);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_domain_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_domain_field_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    free(localVarToReplace_domain);
    free(localVarToReplace_field);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Domain Field List
//
cdash_domain_fields_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainFieldsGet(apiClient_t *apiClient, char *version, char *domain)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/domains/{domain}/fields");

    if(!version)
        goto end;
    if(!domain)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(domain)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_domain = strlen(version)+3 + strlen(domain)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_domain_fields_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_domain_fields_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    free(localVarToReplace_domain);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Domain
//
cdash_domain_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsDomainGet(apiClient_t *apiClient, char *version, char *domain)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/domains/{domain}");

    if(!version)
        goto end;
    if(!domain)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(domain)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_domain = strlen(version)+3 + strlen(domain)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_domain_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_domain_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    free(localVarToReplace_domain);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Domain List
//
cdash_product_domains_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionDomainsGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdash/{version}/domains");

    if(!version)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    cdash_product_domains_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_product_domains_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASH Product
//
cdash_product_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrCdashVersionGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdash/{version}");

    if(!version)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
    list_addElement(localVarHeaderType,"text/csv"); //produces
    list_addElement(localVarHeaderType,"application/vnd.ms-excel"); //produces
    list_addElement(localVarHeaderType,"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"); //produces
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
    cdash_product_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdash_product_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Root CDASH Class Field
//
root_cdash_class_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashClassesClassFieldsFieldGet(apiClient_t *apiClient, char *_class, char *field)
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
    char *localVarPath = strdup("/mdr/root/cdash/classes/{class}/fields/{field}");

    if(!_class)
        goto end;
    if(!field)
        goto end;


    // Path Params
    long sizeOfPathParams__class = strlen(_class)+3 + strlen(field)+3 + sizeof("{ class }") - 1;
    if(_class == NULL) {
        goto end;
    }
    char* localVarToReplace__class = malloc(sizeOfPathParams__class);
    sprintf(localVarToReplace__class, "{%s}", "class");

    localVarPath = strReplace(localVarPath, localVarToReplace__class, _class);

    // Path Params
    long sizeOfPathParams_field = strlen(_class)+3 + strlen(field)+3 + sizeof("{ field }") - 1;
    if(field == NULL) {
        goto end;
    }
    char* localVarToReplace_field = malloc(sizeOfPathParams_field);
    sprintf(localVarToReplace_field, "{%s}", "field");

    localVarPath = strReplace(localVarPath, localVarToReplace_field, field);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    root_cdash_class_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_cdash_class_field_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace__class);
    free(localVarToReplace_field);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Root CDASH Domain Field
//
root_cdash_domain_field_t*
ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI_mdrRootCdashDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *domain, char *field)
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
    char *localVarPath = strdup("/mdr/root/cdash/domains/{domain}/fields/{field}");

    if(!domain)
        goto end;
    if(!field)
        goto end;


    // Path Params
    long sizeOfPathParams_domain = strlen(domain)+3 + strlen(field)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);

    // Path Params
    long sizeOfPathParams_field = strlen(domain)+3 + strlen(field)+3 + sizeof("{ field }") - 1;
    if(field == NULL) {
        goto end;
    }
    char* localVarToReplace_field = malloc(sizeOfPathParams_field);
    sprintf(localVarToReplace_field, "{%s}", "field");

    localVarPath = strReplace(localVarPath, localVarToReplace_field, field);


    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    root_cdash_domain_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_cdash_domain_field_parseFromJSON(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
        cJSON_Delete(ClinicalDataAcquisitionStandardsHarmonizationCDASHAPIlocalVarJSON);
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
    free(localVarToReplace_domain);
    free(localVarToReplace_field);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

