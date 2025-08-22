#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "CDASHImplementationGuideCDASHIGAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get CDASHIG Class Domain List
//
cdashig_class_domains_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassDomainsGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/classes/{class}/domains");

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
    cdashig_class_domains_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_class_domains_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Class
//
cdashig_class_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/classes/{class}");

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
    cdashig_class_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_class_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Class Scenario List
//
cdashig_class_scenarios_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesClassScenariosGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/classes/{class}/scenarios");

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
    cdashig_class_scenarios_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_class_scenarios_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Class List
//
cdashig_product_classes_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionClassesGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/classes");

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
    cdashig_product_classes_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_product_classes_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Domain Field
//
cdashig_domain_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *field)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/domains/{domain}/fields/{field}");

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
    cdashig_domain_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_domain_field_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Domain Field List
//
cdashig_domain_fields_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainFieldsGet(apiClient_t *apiClient, char *version, char *domain)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/domains/{domain}/fields");

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
    cdashig_domain_fields_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_domain_fields_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Domain
//
cdashig_domain_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsDomainGet(apiClient_t *apiClient, char *version, char *domain)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/domains/{domain}");

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
    cdashig_domain_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_domain_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Domain List
//
cdashig_product_domains_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionDomainsGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/domains");

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
    cdashig_product_domains_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_product_domains_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Product
//
cdashig_product_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}");

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
    cdashig_product_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_product_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get CDASHIG Scenario Field
//
cdashig_scenario_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(apiClient_t *apiClient, char *version, char *domain, char *scenario, char *field)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}");

    if(!version)
        goto end;
    if(!domain)
        goto end;
    if(!scenario)
        goto end;
    if(!field)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_domain = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);

    // Path Params
    long sizeOfPathParams_scenario = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ scenario }") - 1;
    if(scenario == NULL) {
        goto end;
    }
    char* localVarToReplace_scenario = malloc(sizeOfPathParams_scenario);
    sprintf(localVarToReplace_scenario, "{%s}", "scenario");

    localVarPath = strReplace(localVarPath, localVarToReplace_scenario, scenario);

    // Path Params
    long sizeOfPathParams_field = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ field }") - 1;
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
    cdashig_scenario_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_scenario_field_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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
    free(localVarToReplace_scenario);
    free(localVarToReplace_field);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASHIG Scenario Field List
//
cdashig_scenario_fields_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioFieldsGet(apiClient_t *apiClient, char *version, char *domain, char *scenario)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields");

    if(!version)
        goto end;
    if(!domain)
        goto end;
    if(!scenario)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_domain = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);

    // Path Params
    long sizeOfPathParams_scenario = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + sizeof("{ scenario }") - 1;
    if(scenario == NULL) {
        goto end;
    }
    char* localVarToReplace_scenario = malloc(sizeOfPathParams_scenario);
    sprintf(localVarToReplace_scenario, "{%s}", "scenario");

    localVarPath = strReplace(localVarPath, localVarToReplace_scenario, scenario);


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
    cdashig_scenario_fields_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_scenario_fields_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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
    free(localVarToReplace_scenario);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASHIG Scenario
//
cdashig_scenario_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosDomainScenarioGet(apiClient_t *apiClient, char *version, char *domain, char *scenario)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/scenarios/{domain}.{scenario}");

    if(!version)
        goto end;
    if(!domain)
        goto end;
    if(!scenario)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_domain = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);

    // Path Params
    long sizeOfPathParams_scenario = strlen(version)+3 + strlen(domain)+3 + strlen(scenario)+3 + sizeof("{ scenario }") - 1;
    if(scenario == NULL) {
        goto end;
    }
    char* localVarToReplace_scenario = malloc(sizeOfPathParams_scenario);
    sprintf(localVarToReplace_scenario, "{%s}", "scenario");

    localVarPath = strReplace(localVarPath, localVarToReplace_scenario, scenario);


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
    cdashig_scenario_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_scenario_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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
    free(localVarToReplace_scenario);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDASHIG Scenario List
//
cdashig_product_scenarios_t*
CDASHImplementationGuideCDASHIGAPI_mdrCdashigVersionScenariosGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/cdashig/{version}/scenarios");

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
    cdashig_product_scenarios_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = cdashig_product_scenarios_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get Root CDASHIG Domain Field
//
root_cdashig_domain_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigDomainsDomainFieldsFieldGet(apiClient_t *apiClient, char *domain, char *field)
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
    char *localVarPath = strdup("/mdr/root/cdashig/domains/{domain}/fields/{field}");

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
    root_cdashig_domain_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_cdashig_domain_field_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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

// Get Root CDASHIG Scenario Field
//
root_cdashig_scenario_field_t*
CDASHImplementationGuideCDASHIGAPI_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(apiClient_t *apiClient, char *domain, char *scenario, char *field)
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
    char *localVarPath = strdup("/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}");

    if(!domain)
        goto end;
    if(!scenario)
        goto end;
    if(!field)
        goto end;


    // Path Params
    long sizeOfPathParams_domain = strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ domain }") - 1;
    if(domain == NULL) {
        goto end;
    }
    char* localVarToReplace_domain = malloc(sizeOfPathParams_domain);
    sprintf(localVarToReplace_domain, "{%s}", "domain");

    localVarPath = strReplace(localVarPath, localVarToReplace_domain, domain);

    // Path Params
    long sizeOfPathParams_scenario = strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ scenario }") - 1;
    if(scenario == NULL) {
        goto end;
    }
    char* localVarToReplace_scenario = malloc(sizeOfPathParams_scenario);
    sprintf(localVarToReplace_scenario, "{%s}", "scenario");

    localVarPath = strReplace(localVarPath, localVarToReplace_scenario, scenario);

    // Path Params
    long sizeOfPathParams_field = strlen(domain)+3 + strlen(scenario)+3 + strlen(field)+3 + sizeof("{ field }") - 1;
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
    root_cdashig_scenario_field_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CDASHImplementationGuideCDASHIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_cdashig_scenario_field_parseFromJSON(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
        cJSON_Delete(CDASHImplementationGuideCDASHIGAPIlocalVarJSON);
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
    free(localVarToReplace_scenario);
    free(localVarToReplace_field);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

