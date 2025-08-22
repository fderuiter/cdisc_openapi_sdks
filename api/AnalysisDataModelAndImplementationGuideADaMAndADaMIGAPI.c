#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get ADaM Data Structure List
//
adam_product_datastructures_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresGet(apiClient_t *apiClient, char *product)
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
    char *localVarPath = strdup("/mdr/adam/{product}/datastructures");

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
    adam_product_datastructures_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_product_datastructures_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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

// Get ADaM Data Structure
//
adam_datastructure_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureGet(apiClient_t *apiClient, char *product, char *structure)
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
    char *localVarPath = strdup("/mdr/adam/{product}/datastructures/{structure}");

    if(!product)
        goto end;
    if(!structure)
        goto end;


    // Path Params
    long sizeOfPathParams_product = strlen(product)+3 + strlen(structure)+3 + sizeof("{ product }") - 1;
    if(product == NULL) {
        goto end;
    }
    char* localVarToReplace_product = malloc(sizeOfPathParams_product);
    sprintf(localVarToReplace_product, "{%s}", "product");

    localVarPath = strReplace(localVarPath, localVarToReplace_product, product);

    // Path Params
    long sizeOfPathParams_structure = strlen(product)+3 + strlen(structure)+3 + sizeof("{ structure }") - 1;
    if(structure == NULL) {
        goto end;
    }
    char* localVarToReplace_structure = malloc(sizeOfPathParams_structure);
    sprintf(localVarToReplace_structure, "{%s}", "structure");

    localVarPath = strReplace(localVarPath, localVarToReplace_structure, structure);


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
    adam_datastructure_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_datastructure_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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
    free(localVarToReplace_structure);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get ADaM Variable List
//
adam_datastructure_variables_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesGet(apiClient_t *apiClient, char *product, char *structure)
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
    char *localVarPath = strdup("/mdr/adam/{product}/datastructures/{structure}/variables");

    if(!product)
        goto end;
    if(!structure)
        goto end;


    // Path Params
    long sizeOfPathParams_product = strlen(product)+3 + strlen(structure)+3 + sizeof("{ product }") - 1;
    if(product == NULL) {
        goto end;
    }
    char* localVarToReplace_product = malloc(sizeOfPathParams_product);
    sprintf(localVarToReplace_product, "{%s}", "product");

    localVarPath = strReplace(localVarPath, localVarToReplace_product, product);

    // Path Params
    long sizeOfPathParams_structure = strlen(product)+3 + strlen(structure)+3 + sizeof("{ structure }") - 1;
    if(structure == NULL) {
        goto end;
    }
    char* localVarToReplace_structure = malloc(sizeOfPathParams_structure);
    sprintf(localVarToReplace_structure, "{%s}", "structure");

    localVarPath = strReplace(localVarPath, localVarToReplace_structure, structure);


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
    adam_datastructure_variables_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_datastructure_variables_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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
    free(localVarToReplace_structure);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get ADaM Variable
//
adam_variable_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVariablesVarGet(apiClient_t *apiClient, char *product, char *structure, char *var)
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
    char *localVarPath = strdup("/mdr/adam/{product}/datastructures/{structure}/variables/{var}");

    if(!product)
        goto end;
    if(!structure)
        goto end;
    if(!var)
        goto end;


    // Path Params
    long sizeOfPathParams_product = strlen(product)+3 + strlen(structure)+3 + strlen(var)+3 + sizeof("{ product }") - 1;
    if(product == NULL) {
        goto end;
    }
    char* localVarToReplace_product = malloc(sizeOfPathParams_product);
    sprintf(localVarToReplace_product, "{%s}", "product");

    localVarPath = strReplace(localVarPath, localVarToReplace_product, product);

    // Path Params
    long sizeOfPathParams_structure = strlen(product)+3 + strlen(structure)+3 + strlen(var)+3 + sizeof("{ structure }") - 1;
    if(structure == NULL) {
        goto end;
    }
    char* localVarToReplace_structure = malloc(sizeOfPathParams_structure);
    sprintf(localVarToReplace_structure, "{%s}", "structure");

    localVarPath = strReplace(localVarPath, localVarToReplace_structure, structure);

    // Path Params
    long sizeOfPathParams_var = strlen(product)+3 + strlen(structure)+3 + strlen(var)+3 + sizeof("{ var }") - 1;
    if(var == NULL) {
        goto end;
    }
    char* localVarToReplace_var = malloc(sizeOfPathParams_var);
    sprintf(localVarToReplace_var, "{%s}", "var");

    localVarPath = strReplace(localVarPath, localVarToReplace_var, var);


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
    adam_variable_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_variable_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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
    free(localVarToReplace_structure);
    free(localVarToReplace_var);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get ADaM Variable Set List
//
adam_datastructure_varsets_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsGet(apiClient_t *apiClient, char *product, char *structure)
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
    char *localVarPath = strdup("/mdr/adam/{product}/datastructures/{structure}/varsets");

    if(!product)
        goto end;
    if(!structure)
        goto end;


    // Path Params
    long sizeOfPathParams_product = strlen(product)+3 + strlen(structure)+3 + sizeof("{ product }") - 1;
    if(product == NULL) {
        goto end;
    }
    char* localVarToReplace_product = malloc(sizeOfPathParams_product);
    sprintf(localVarToReplace_product, "{%s}", "product");

    localVarPath = strReplace(localVarPath, localVarToReplace_product, product);

    // Path Params
    long sizeOfPathParams_structure = strlen(product)+3 + strlen(structure)+3 + sizeof("{ structure }") - 1;
    if(structure == NULL) {
        goto end;
    }
    char* localVarToReplace_structure = malloc(sizeOfPathParams_structure);
    sprintf(localVarToReplace_structure, "{%s}", "structure");

    localVarPath = strReplace(localVarPath, localVarToReplace_structure, structure);


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
    adam_datastructure_varsets_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_datastructure_varsets_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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
    free(localVarToReplace_structure);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get ADaM Variable Set
//
adam_varset_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductDatastructuresStructureVarsetsVarsetGet(apiClient_t *apiClient, char *product, char *structure, char *varset)
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
    char *localVarPath = strdup("/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}");

    if(!product)
        goto end;
    if(!structure)
        goto end;
    if(!varset)
        goto end;


    // Path Params
    long sizeOfPathParams_product = strlen(product)+3 + strlen(structure)+3 + strlen(varset)+3 + sizeof("{ product }") - 1;
    if(product == NULL) {
        goto end;
    }
    char* localVarToReplace_product = malloc(sizeOfPathParams_product);
    sprintf(localVarToReplace_product, "{%s}", "product");

    localVarPath = strReplace(localVarPath, localVarToReplace_product, product);

    // Path Params
    long sizeOfPathParams_structure = strlen(product)+3 + strlen(structure)+3 + strlen(varset)+3 + sizeof("{ structure }") - 1;
    if(structure == NULL) {
        goto end;
    }
    char* localVarToReplace_structure = malloc(sizeOfPathParams_structure);
    sprintf(localVarToReplace_structure, "{%s}", "structure");

    localVarPath = strReplace(localVarPath, localVarToReplace_structure, structure);

    // Path Params
    long sizeOfPathParams_varset = strlen(product)+3 + strlen(structure)+3 + strlen(varset)+3 + sizeof("{ varset }") - 1;
    if(varset == NULL) {
        goto end;
    }
    char* localVarToReplace_varset = malloc(sizeOfPathParams_varset);
    sprintf(localVarToReplace_varset, "{%s}", "varset");

    localVarPath = strReplace(localVarPath, localVarToReplace_varset, varset);


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
    adam_varset_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_varset_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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
    free(localVarToReplace_structure);
    free(localVarToReplace_varset);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get ADaM Product
//
adam_product_t*
AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI_mdrAdamProductGet(apiClient_t *apiClient, char *product)
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
    char *localVarPath = strdup("/mdr/adam/{product}");

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
    adam_product_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = adam_product_parseFromJSON(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
        cJSON_Delete(AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPIlocalVarJSON);
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

