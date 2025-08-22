# AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures | 
[**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} | 



## mdrAdamProductDatastructuresGet

> AdamProductDatastructures mdrAdamProductDatastructuresGet(product)



Get ADaM Data Structure List

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
try {
    AdamProductDatastructures result = apiInstance.mdrAdamProductDatastructuresGet(product);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrAdamProductDatastructuresStructureGet

> AdamDatastructure mdrAdamProductDatastructuresStructureGet(product, structure)



Get ADaM Data Structure

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
String structure = ADSL; // String | Data structure Identifier
try {
    AdamDatastructure result = apiInstance.mdrAdamProductDatastructuresStructureGet(product, structure);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]
 **structure** | **String**| Data structure Identifier | [default to null]

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVariablesGet

> AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet(product, structure)



Get ADaM Variable List

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
String structure = ADSL; // String | ADaM Data Structure Identifier
try {
    AdamDatastructureVariables result = apiInstance.mdrAdamProductDatastructuresStructureVariablesGet(product, structure);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVariablesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]
 **structure** | **String**| ADaM Data Structure Identifier | [default to null]

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVariablesVarGet

> AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var)



Get ADaM Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
String structure = ADSL; // String | ADaM Data Structure Identifier
String var = SITEGRy; // String | ADaM Variable Identifier
try {
    AdamVariable result = apiInstance.mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]
 **structure** | **String**| ADaM Data Structure Identifier | [default to null]
 **var** | **String**| ADaM Variable Identifier | [default to null]

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVarsetsGet

> AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet(product, structure)



Get ADaM Variable Set List

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
String structure = ADSL; // String | ADaM Data Structure Identifier
try {
    AdamDatastructureVarsets result = apiInstance.mdrAdamProductDatastructuresStructureVarsetsGet(product, structure);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVarsetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]
 **structure** | **String**| ADaM Data Structure Identifier | [default to null]

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductDatastructuresStructureVarsetsVarsetGet

> AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)



Get ADaM Variable Set

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
String structure = ADSL; // String | ADaM Data Structure Identifier
String varset = Identifier; // String | ADaM Variable Set Identifier
try {
    AdamVarset result = apiInstance.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductDatastructuresStructureVarsetsVarsetGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]
 **structure** | **String**| ADaM Data Structure Identifier | [default to null]
 **varset** | **String**| ADaM Variable Set Identifier | [default to null]

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrAdamProductGet

> AdamProduct mdrAdamProductGet(product)



Get ADaM Product

### Example

```java
// Import classes:
//import org.openapitools.client.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi;

AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi apiInstance = new AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
String product = adamig-1-1; // String | CDISC Library Product
try {
    AdamProduct result = apiInstance.mdrAdamProductGet(product);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi#mdrAdamProductGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | [default to null]

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

