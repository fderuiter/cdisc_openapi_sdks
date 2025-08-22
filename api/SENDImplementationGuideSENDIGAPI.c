#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "SENDImplementationGuideSENDIGAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get Root SENDIG Dataset Variable
//
root_sendig_dataset_variable_t*
SENDImplementationGuideSENDIGAPI_mdrRootSendigDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *dataset, char *var)
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
    char *localVarPath = strdup("/mdr/root/sendig/datasets/{dataset}/variables/{var}");

    if(!dataset)
        goto end;
    if(!var)
        goto end;


    // Path Params
    long sizeOfPathParams_dataset = strlen(dataset)+3 + strlen(var)+3 + sizeof("{ dataset }") - 1;
    if(dataset == NULL) {
        goto end;
    }
    char* localVarToReplace_dataset = malloc(sizeOfPathParams_dataset);
    sprintf(localVarToReplace_dataset, "{%s}", "dataset");

    localVarPath = strReplace(localVarPath, localVarToReplace_dataset, dataset);

    // Path Params
    long sizeOfPathParams_var = strlen(dataset)+3 + strlen(var)+3 + sizeof("{ var }") - 1;
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
    root_sendig_dataset_variable_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = root_sendig_dataset_variable_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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
    free(localVarToReplace_dataset);
    free(localVarToReplace_var);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get SENDIG Class Dataset List
//
sendig_class_datasets_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassDatasetsGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/classes/{class}/datasets");

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
    sendig_class_datasets_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_class_datasets_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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

// Get SENDIG Class
//
sendig_class_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesClassGet(apiClient_t *apiClient, char *version, char *_class)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/classes/{class}");

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
    sendig_class_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_class_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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

// Get SENDIG Class List
//
sendig_classes_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionClassesGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/classes");

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
    sendig_classes_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_classes_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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

// Get SENDIG Dataset
//
sendig_dataset_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetGet(apiClient_t *apiClient, char *version, char *dataset)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/datasets/{dataset}");

    if(!version)
        goto end;
    if(!dataset)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(dataset)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_dataset = strlen(version)+3 + strlen(dataset)+3 + sizeof("{ dataset }") - 1;
    if(dataset == NULL) {
        goto end;
    }
    char* localVarToReplace_dataset = malloc(sizeOfPathParams_dataset);
    sprintf(localVarToReplace_dataset, "{%s}", "dataset");

    localVarPath = strReplace(localVarPath, localVarToReplace_dataset, dataset);


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
    sendig_dataset_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_dataset_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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
    free(localVarToReplace_dataset);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get SENDIG Dataset Variable List
//
sendig_dataset_variables_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesGet(apiClient_t *apiClient, char *version, char *dataset)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/datasets/{dataset}/variables");

    if(!version)
        goto end;
    if(!dataset)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(dataset)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_dataset = strlen(version)+3 + strlen(dataset)+3 + sizeof("{ dataset }") - 1;
    if(dataset == NULL) {
        goto end;
    }
    char* localVarToReplace_dataset = malloc(sizeOfPathParams_dataset);
    sprintf(localVarToReplace_dataset, "{%s}", "dataset");

    localVarPath = strReplace(localVarPath, localVarToReplace_dataset, dataset);


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
    sendig_dataset_variables_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_dataset_variables_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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
    free(localVarToReplace_dataset);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get SENDIG Dataset Variable
//
sendig_dataset_variable_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsDatasetVariablesVarGet(apiClient_t *apiClient, char *version, char *dataset, char *var)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/datasets/{dataset}/variables/{var}");

    if(!version)
        goto end;
    if(!dataset)
        goto end;
    if(!var)
        goto end;


    // Path Params
    long sizeOfPathParams_version = strlen(version)+3 + strlen(dataset)+3 + strlen(var)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_dataset = strlen(version)+3 + strlen(dataset)+3 + strlen(var)+3 + sizeof("{ dataset }") - 1;
    if(dataset == NULL) {
        goto end;
    }
    char* localVarToReplace_dataset = malloc(sizeOfPathParams_dataset);
    sprintf(localVarToReplace_dataset, "{%s}", "dataset");

    localVarPath = strReplace(localVarPath, localVarToReplace_dataset, dataset);

    // Path Params
    long sizeOfPathParams_var = strlen(version)+3 + strlen(dataset)+3 + strlen(var)+3 + sizeof("{ var }") - 1;
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
    sendig_dataset_variable_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_dataset_variable_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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
    free(localVarToReplace_dataset);
    free(localVarToReplace_var);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get SENDIG Dataset List
//
sendig_datasets_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionDatasetsGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/sendig/{version}/datasets");

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
    sendig_datasets_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_datasets_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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

// Get SENDIG product
//
sendig_product_t*
SENDImplementationGuideSENDIGAPI_mdrSendigVersionGet(apiClient_t *apiClient, char *version)
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
    char *localVarPath = strdup("/mdr/sendig/{version}");

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
    sendig_product_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SENDImplementationGuideSENDIGAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sendig_product_parseFromJSON(SENDImplementationGuideSENDIGAPIlocalVarJSON);
        cJSON_Delete(SENDImplementationGuideSENDIGAPIlocalVarJSON);
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

