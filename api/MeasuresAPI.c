#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "MeasuresAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get QRS Product
//
qrs_product_t*
MeasuresAPI_mdrQrsMeasureVersionGet(apiClient_t *apiClient, char *measure, char *version)
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
    char *localVarPath = strdup("/mdr/qrs/{measure}/{version}");

    if(!measure)
        goto end;
    if(!version)
        goto end;


    // Path Params
    long sizeOfPathParams_measure = strlen(measure)+3 + strlen(version)+3 + sizeof("{ measure }") - 1;
    if(measure == NULL) {
        goto end;
    }
    char* localVarToReplace_measure = malloc(sizeOfPathParams_measure);
    sprintf(localVarToReplace_measure, "{%s}", "measure");

    localVarPath = strReplace(localVarPath, localVarToReplace_measure, measure);

    // Path Params
    long sizeOfPathParams_version = strlen(measure)+3 + strlen(version)+3 + sizeof("{ version }") - 1;
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
    qrs_product_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MeasuresAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = qrs_product_parseFromJSON(MeasuresAPIlocalVarJSON);
        cJSON_Delete(MeasuresAPIlocalVarJSON);
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
    free(localVarToReplace_measure);
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get QRS Item List
//
qrs_items_t*
MeasuresAPI_mdrQrsMeasureVersionItemsGet(apiClient_t *apiClient, char *measure, char *version)
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
    char *localVarPath = strdup("/mdr/qrs/{measure}/{version}/items");

    if(!measure)
        goto end;
    if(!version)
        goto end;


    // Path Params
    long sizeOfPathParams_measure = strlen(measure)+3 + strlen(version)+3 + sizeof("{ measure }") - 1;
    if(measure == NULL) {
        goto end;
    }
    char* localVarToReplace_measure = malloc(sizeOfPathParams_measure);
    sprintf(localVarToReplace_measure, "{%s}", "measure");

    localVarPath = strReplace(localVarPath, localVarToReplace_measure, measure);

    // Path Params
    long sizeOfPathParams_version = strlen(measure)+3 + strlen(version)+3 + sizeof("{ version }") - 1;
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
    qrs_items_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MeasuresAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = qrs_items_parseFromJSON(MeasuresAPIlocalVarJSON);
        cJSON_Delete(MeasuresAPIlocalVarJSON);
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
    free(localVarToReplace_measure);
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get QRS Item
//
qrs_item_t*
MeasuresAPI_mdrQrsMeasureVersionItemsItemGet(apiClient_t *apiClient, char *measure, char *version, char *item)
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
    char *localVarPath = strdup("/mdr/qrs/{measure}/{version}/items/{item}");

    if(!measure)
        goto end;
    if(!version)
        goto end;
    if(!item)
        goto end;


    // Path Params
    long sizeOfPathParams_measure = strlen(measure)+3 + strlen(version)+3 + strlen(item)+3 + sizeof("{ measure }") - 1;
    if(measure == NULL) {
        goto end;
    }
    char* localVarToReplace_measure = malloc(sizeOfPathParams_measure);
    sprintf(localVarToReplace_measure, "{%s}", "measure");

    localVarPath = strReplace(localVarPath, localVarToReplace_measure, measure);

    // Path Params
    long sizeOfPathParams_version = strlen(measure)+3 + strlen(version)+3 + strlen(item)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_item = strlen(measure)+3 + strlen(version)+3 + strlen(item)+3 + sizeof("{ item }") - 1;
    if(item == NULL) {
        goto end;
    }
    char* localVarToReplace_item = malloc(sizeOfPathParams_item);
    sprintf(localVarToReplace_item, "{%s}", "item");

    localVarPath = strReplace(localVarPath, localVarToReplace_item, item);


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
    qrs_item_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MeasuresAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = qrs_item_parseFromJSON(MeasuresAPIlocalVarJSON);
        cJSON_Delete(MeasuresAPIlocalVarJSON);
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
    free(localVarToReplace_measure);
    free(localVarToReplace_version);
    free(localVarToReplace_item);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get QRS Response Group List
//
qrs_responsegroups_t*
MeasuresAPI_mdrQrsMeasureVersionResponsegroupsGet(apiClient_t *apiClient, char *measure, char *version)
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
    char *localVarPath = strdup("/mdr/qrs/{measure}/{version}/responsegroups");

    if(!measure)
        goto end;
    if(!version)
        goto end;


    // Path Params
    long sizeOfPathParams_measure = strlen(measure)+3 + strlen(version)+3 + sizeof("{ measure }") - 1;
    if(measure == NULL) {
        goto end;
    }
    char* localVarToReplace_measure = malloc(sizeOfPathParams_measure);
    sprintf(localVarToReplace_measure, "{%s}", "measure");

    localVarPath = strReplace(localVarPath, localVarToReplace_measure, measure);

    // Path Params
    long sizeOfPathParams_version = strlen(measure)+3 + strlen(version)+3 + sizeof("{ version }") - 1;
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
    qrs_responsegroups_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MeasuresAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = qrs_responsegroups_parseFromJSON(MeasuresAPIlocalVarJSON);
        cJSON_Delete(MeasuresAPIlocalVarJSON);
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
    free(localVarToReplace_measure);
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get QRS Response Group
//
qrs_responsegroup_t*
MeasuresAPI_mdrQrsMeasureVersionResponsegroupsResponsegroupGet(apiClient_t *apiClient, char *measure, char *version, char *responsegroup)
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
    char *localVarPath = strdup("/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}");

    if(!measure)
        goto end;
    if(!version)
        goto end;
    if(!responsegroup)
        goto end;


    // Path Params
    long sizeOfPathParams_measure = strlen(measure)+3 + strlen(version)+3 + strlen(responsegroup)+3 + sizeof("{ measure }") - 1;
    if(measure == NULL) {
        goto end;
    }
    char* localVarToReplace_measure = malloc(sizeOfPathParams_measure);
    sprintf(localVarToReplace_measure, "{%s}", "measure");

    localVarPath = strReplace(localVarPath, localVarToReplace_measure, measure);

    // Path Params
    long sizeOfPathParams_version = strlen(measure)+3 + strlen(version)+3 + strlen(responsegroup)+3 + sizeof("{ version }") - 1;
    if(version == NULL) {
        goto end;
    }
    char* localVarToReplace_version = malloc(sizeOfPathParams_version);
    sprintf(localVarToReplace_version, "{%s}", "version");

    localVarPath = strReplace(localVarPath, localVarToReplace_version, version);

    // Path Params
    long sizeOfPathParams_responsegroup = strlen(measure)+3 + strlen(version)+3 + strlen(responsegroup)+3 + sizeof("{ responsegroup }") - 1;
    if(responsegroup == NULL) {
        goto end;
    }
    char* localVarToReplace_responsegroup = malloc(sizeOfPathParams_responsegroup);
    sprintf(localVarToReplace_responsegroup, "{%s}", "responsegroup");

    localVarPath = strReplace(localVarPath, localVarToReplace_responsegroup, responsegroup);


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
    qrs_responsegroup_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MeasuresAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = qrs_responsegroup_parseFromJSON(MeasuresAPIlocalVarJSON);
        cJSON_Delete(MeasuresAPIlocalVarJSON);
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
    free(localVarToReplace_measure);
    free(localVarToReplace_version);
    free(localVarToReplace_responsegroup);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

