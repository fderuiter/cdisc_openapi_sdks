#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ControlledTerminologyCTAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get CDISC Library CT Package List
//
ct_packages_t*
ControlledTerminologyCTAPI_mdrCtPackagesGet(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/mdr/ct/packages");




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
    ct_packages_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ct_packages_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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

// Get CDISC Library CT Package Codelist
//
ct_codelist_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistGet(apiClient_t *apiClient, char *package, char *codelist)
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
    char *localVarPath = strdup("/mdr/ct/packages/{package}/codelists/{codelist}");

    if(!package)
        goto end;
    if(!codelist)
        goto end;


    // Path Params
    long sizeOfPathParams_package = strlen(package)+3 + strlen(codelist)+3 + sizeof("{ package }") - 1;
    if(package == NULL) {
        goto end;
    }
    char* localVarToReplace_package = malloc(sizeOfPathParams_package);
    sprintf(localVarToReplace_package, "{%s}", "package");

    localVarPath = strReplace(localVarPath, localVarToReplace_package, package);

    // Path Params
    long sizeOfPathParams_codelist = strlen(package)+3 + strlen(codelist)+3 + sizeof("{ codelist }") - 1;
    if(codelist == NULL) {
        goto end;
    }
    char* localVarToReplace_codelist = malloc(sizeOfPathParams_codelist);
    sprintf(localVarToReplace_codelist, "{%s}", "codelist");

    localVarPath = strReplace(localVarPath, localVarToReplace_codelist, codelist);


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
    ct_codelist_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ct_codelist_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_package);
    free(localVarToReplace_codelist);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDISC Library CT Package Codelist Term List
//
ct_codelist_terms_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsGet(apiClient_t *apiClient, char *package, char *codelist)
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
    char *localVarPath = strdup("/mdr/ct/packages/{package}/codelists/{codelist}/terms");

    if(!package)
        goto end;
    if(!codelist)
        goto end;


    // Path Params
    long sizeOfPathParams_package = strlen(package)+3 + strlen(codelist)+3 + sizeof("{ package }") - 1;
    if(package == NULL) {
        goto end;
    }
    char* localVarToReplace_package = malloc(sizeOfPathParams_package);
    sprintf(localVarToReplace_package, "{%s}", "package");

    localVarPath = strReplace(localVarPath, localVarToReplace_package, package);

    // Path Params
    long sizeOfPathParams_codelist = strlen(package)+3 + strlen(codelist)+3 + sizeof("{ codelist }") - 1;
    if(codelist == NULL) {
        goto end;
    }
    char* localVarToReplace_codelist = malloc(sizeOfPathParams_codelist);
    sprintf(localVarToReplace_codelist, "{%s}", "codelist");

    localVarPath = strReplace(localVarPath, localVarToReplace_codelist, codelist);


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
    ct_codelist_terms_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ct_codelist_terms_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_package);
    free(localVarToReplace_codelist);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDISC Library CT Package Codelist Term
//
ct_term_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsCodelistTermsTermGet(apiClient_t *apiClient, char *package, char *codelist, char *term)
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
    char *localVarPath = strdup("/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}");

    if(!package)
        goto end;
    if(!codelist)
        goto end;
    if(!term)
        goto end;


    // Path Params
    long sizeOfPathParams_package = strlen(package)+3 + strlen(codelist)+3 + strlen(term)+3 + sizeof("{ package }") - 1;
    if(package == NULL) {
        goto end;
    }
    char* localVarToReplace_package = malloc(sizeOfPathParams_package);
    sprintf(localVarToReplace_package, "{%s}", "package");

    localVarPath = strReplace(localVarPath, localVarToReplace_package, package);

    // Path Params
    long sizeOfPathParams_codelist = strlen(package)+3 + strlen(codelist)+3 + strlen(term)+3 + sizeof("{ codelist }") - 1;
    if(codelist == NULL) {
        goto end;
    }
    char* localVarToReplace_codelist = malloc(sizeOfPathParams_codelist);
    sprintf(localVarToReplace_codelist, "{%s}", "codelist");

    localVarPath = strReplace(localVarPath, localVarToReplace_codelist, codelist);

    // Path Params
    long sizeOfPathParams_term = strlen(package)+3 + strlen(codelist)+3 + strlen(term)+3 + sizeof("{ term }") - 1;
    if(term == NULL) {
        goto end;
    }
    char* localVarToReplace_term = malloc(sizeOfPathParams_term);
    sprintf(localVarToReplace_term, "{%s}", "term");

    localVarPath = strReplace(localVarPath, localVarToReplace_term, term);


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
    ct_term_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ct_term_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_package);
    free(localVarToReplace_codelist);
    free(localVarToReplace_term);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDISC Library CT Package Codelist List
//
ct_package_codelists_t*
ControlledTerminologyCTAPI_mdrCtPackagesPackageCodelistsGet(apiClient_t *apiClient, char *package)
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
    char *localVarPath = strdup("/mdr/ct/packages/{package}/codelists");

    if(!package)
        goto end;


    // Path Params
    long sizeOfPathParams_package = strlen(package)+3 + sizeof("{ package }") - 1;
    if(package == NULL) {
        goto end;
    }
    char* localVarToReplace_package = malloc(sizeOfPathParams_package);
    sprintf(localVarToReplace_package, "{%s}", "package");

    localVarPath = strReplace(localVarPath, localVarToReplace_package, package);


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
    ct_package_codelists_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ct_package_codelists_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_package);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDISC Library CT Package
//
ct_package_t*
ControlledTerminologyCTAPI_mdrCtPackagesProductGet(apiClient_t *apiClient, char *product)
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
    char *localVarPath = strdup("/mdr/ct/packages/{product}");

    if(!product)
        goto end;


    // Path Params
    long sizeOfPathParams_product = strlen(product)+3 + sizeof("{ product }") - 1;
    if(product == NULL) {
        goto end;
    }
    char* localVarToReplace_product = malloc(sizeOfPathParams_product);
    sprintf(localVarToReplace_product, "{%s}", "product");

    localVarPath = strReplace(localVarPath, localVarToReplace_product, product);


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
    ct_package_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ct_package_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_product);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDISC Library Root CT Codelist
//
root_ct_codelist_t*
ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistGet(apiClient_t *apiClient, char *productGroup, char *codelist)
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
    char *localVarPath = strdup("/mdr/root/ct/{productGroup}/codelists/{codelist}");

    if(!productGroup)
        goto end;
    if(!codelist)
        goto end;


    // Path Params
    long sizeOfPathParams_productGroup = strlen(productGroup)+3 + strlen(codelist)+3 + sizeof("{ productGroup }") - 1;
    if(productGroup == NULL) {
        goto end;
    }
    char* localVarToReplace_productGroup = malloc(sizeOfPathParams_productGroup);
    sprintf(localVarToReplace_productGroup, "{%s}", "productGroup");

    localVarPath = strReplace(localVarPath, localVarToReplace_productGroup, productGroup);

    // Path Params
    long sizeOfPathParams_codelist = strlen(productGroup)+3 + strlen(codelist)+3 + sizeof("{ codelist }") - 1;
    if(codelist == NULL) {
        goto end;
    }
    char* localVarToReplace_codelist = malloc(sizeOfPathParams_codelist);
    sprintf(localVarToReplace_codelist, "{%s}", "codelist");

    localVarPath = strReplace(localVarPath, localVarToReplace_codelist, codelist);


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
    root_ct_codelist_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_ct_codelist_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_productGroup);
    free(localVarToReplace_codelist);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get CDISC Library Root CT Term
//
root_ct_term_t*
ControlledTerminologyCTAPI_mdrRootCtProductGroupCodelistsCodelistTermsTermGet(apiClient_t *apiClient, char *productGroup, char *codelist, char *term)
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
    char *localVarPath = strdup("/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}");

    if(!productGroup)
        goto end;
    if(!codelist)
        goto end;
    if(!term)
        goto end;


    // Path Params
    long sizeOfPathParams_productGroup = strlen(productGroup)+3 + strlen(codelist)+3 + strlen(term)+3 + sizeof("{ productGroup }") - 1;
    if(productGroup == NULL) {
        goto end;
    }
    char* localVarToReplace_productGroup = malloc(sizeOfPathParams_productGroup);
    sprintf(localVarToReplace_productGroup, "{%s}", "productGroup");

    localVarPath = strReplace(localVarPath, localVarToReplace_productGroup, productGroup);

    // Path Params
    long sizeOfPathParams_codelist = strlen(productGroup)+3 + strlen(codelist)+3 + strlen(term)+3 + sizeof("{ codelist }") - 1;
    if(codelist == NULL) {
        goto end;
    }
    char* localVarToReplace_codelist = malloc(sizeOfPathParams_codelist);
    sprintf(localVarToReplace_codelist, "{%s}", "codelist");

    localVarPath = strReplace(localVarPath, localVarToReplace_codelist, codelist);

    // Path Params
    long sizeOfPathParams_term = strlen(productGroup)+3 + strlen(codelist)+3 + strlen(term)+3 + sizeof("{ term }") - 1;
    if(term == NULL) {
        goto end;
    }
    char* localVarToReplace_term = malloc(sizeOfPathParams_term);
    sprintf(localVarToReplace_term, "{%s}", "term");

    localVarPath = strReplace(localVarPath, localVarToReplace_term, term);


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
    root_ct_term_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ControlledTerminologyCTAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_ct_term_parseFromJSON(ControlledTerminologyCTAPIlocalVarJSON);
        cJSON_Delete(ControlledTerminologyCTAPIlocalVarJSON);
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
    free(localVarToReplace_productGroup);
    free(localVarToReplace_codelist);
    free(localVarToReplace_term);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

