# AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures | 
[**MdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**MdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**MdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**MdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**MdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**MdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#MdrAdamProductGet) | **GET** /mdr/adam/{product} | 


# **MdrAdamProductDatastructuresGet**
> AdamProductDatastructures MdrAdamProductDatastructuresGet(product)



Get ADaM Data Structure List

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductDatastructuresGet(var_productdata_file = "result.txt")
result <- api_instance$MdrAdamProductDatastructuresGet(var_product)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrAdamProductDatastructuresStructureGet**
> AdamDatastructure MdrAdamProductDatastructuresStructureGet(product, structure)



Get ADaM Data Structure

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product
var_structure <- "ADSL" # character | Data structure Identifier

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductDatastructuresStructureGet(var_product, var_structuredata_file = "result.txt")
result <- api_instance$MdrAdamProductDatastructuresStructureGet(var_product, var_structure)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 
 **structure** | **character**| Data structure Identifier | 

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrAdamProductDatastructuresStructureVariablesGet**
> AdamDatastructureVariables MdrAdamProductDatastructuresStructureVariablesGet(product, structure)



Get ADaM Variable List

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product
var_structure <- "ADSL" # character | ADaM Data Structure Identifier

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductDatastructuresStructureVariablesGet(var_product, var_structuredata_file = "result.txt")
result <- api_instance$MdrAdamProductDatastructuresStructureVariablesGet(var_product, var_structure)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 
 **structure** | **character**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrAdamProductDatastructuresStructureVariablesVarGet**
> AdamVariable MdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var)



Get ADaM Variable

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product
var_structure <- "ADSL" # character | ADaM Data Structure Identifier
var_var <- "SITEGRy" # character | ADaM Variable Identifier

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductDatastructuresStructureVariablesVarGet(var_product, var_structure, var_vardata_file = "result.txt")
result <- api_instance$MdrAdamProductDatastructuresStructureVariablesVarGet(var_product, var_structure, var_var)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 
 **structure** | **character**| ADaM Data Structure Identifier | 
 **var** | **character**| ADaM Variable Identifier | 

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrAdamProductDatastructuresStructureVarsetsGet**
> AdamDatastructureVarsets MdrAdamProductDatastructuresStructureVarsetsGet(product, structure)



Get ADaM Variable Set List

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product
var_structure <- "ADSL" # character | ADaM Data Structure Identifier

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductDatastructuresStructureVarsetsGet(var_product, var_structuredata_file = "result.txt")
result <- api_instance$MdrAdamProductDatastructuresStructureVarsetsGet(var_product, var_structure)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 
 **structure** | **character**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrAdamProductDatastructuresStructureVarsetsVarsetGet**
> AdamVarset MdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)



Get ADaM Variable Set

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product
var_structure <- "ADSL" # character | ADaM Data Structure Identifier
var_varset <- "Identifier" # character | ADaM Variable Set Identifier

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductDatastructuresStructureVarsetsVarsetGet(var_product, var_structure, var_varsetdata_file = "result.txt")
result <- api_instance$MdrAdamProductDatastructuresStructureVarsetsVarsetGet(var_product, var_structure, var_varset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 
 **structure** | **character**| ADaM Data Structure Identifier | 
 **varset** | **character**| ADaM Variable Set Identifier | 

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

# **MdrAdamProductGet**
> AdamProduct MdrAdamProductGet(product)



Get ADaM Product

### Example
```R
library(openapi)

# prepare function argument(s)
var_product <- "adamig-1-1" # character | CDISC Library Product

api_instance <- AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi$new()
# Configure HTTP basic authorization: basicAuth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MdrAdamProductGet(var_productdata_file = "result.txt")
result <- api_instance$MdrAdamProductGet(var_product)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **character**| CDISC Library Product | 

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **405** | Method Not Allowed |  -  |
| **406** | Not Acceptable |  -  |
| **500** | Internal Server Error |  -  |
| **503** | Service Unavailable |  -  |
| **504** | Gateway Timeout Error |  -  |

