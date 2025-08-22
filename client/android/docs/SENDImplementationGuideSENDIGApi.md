# SENDImplementationGuideSENDIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 



## mdrRootSendigDatasetsDatasetVariablesVarGet

> RootSendigDatasetVariable mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SENDIG Dataset Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String dataset = VS; // String | SENDIG Dataset Identifier
String var = VSTEST; // String | SENDIG Variable Identifier
try {
    RootSendigDatasetVariable result = apiInstance.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrRootSendigDatasetsDatasetVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SENDIG Dataset Identifier | [default to null]
 **var** | **String**| SENDIG Variable Identifier | [default to null]

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionClassesClassDatasetsGet

> SendigClassDatasets mdrSendigVersionClassesClassDatasetsGet(version, _class)



Get SENDIG Class Dataset List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
String _class = Findings; // String | SENDIG Class Identifier
try {
    SendigClassDatasets result = apiInstance.mdrSendigVersionClassesClassDatasetsGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassDatasetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SENDIG Class Identifier | [default to null]

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionClassesClassGet

> SendigClass mdrSendigVersionClassesClassGet(version, _class)



Get SENDIG Class

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
String _class = Findings; // String | SENDIG Class Identifier
try {
    SendigClass result = apiInstance.mdrSendigVersionClassesClassGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesClassGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SENDIG Class Identifier | [default to null]

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionClassesGet

> SendigClasses mdrSendigVersionClassesGet(version)



Get SENDIG Class List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
try {
    SendigClasses result = apiInstance.mdrSendigVersionClassesGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionClassesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsDatasetGet

> SendigDataset mdrSendigVersionDatasetsDatasetGet(version, dataset)



Get SENDIG Dataset

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
String dataset = VS; // String | SENDIG Class Identifier
try {
    SendigDataset result = apiInstance.mdrSendigVersionDatasetsDatasetGet(version, dataset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SENDIG Class Identifier | [default to null]

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsDatasetVariablesGet

> SendigDatasetVariables mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SENDIG Dataset Variable List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
String dataset = VS; // String | SENDIG Class Identifier
try {
    SendigDatasetVariables result = apiInstance.mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SENDIG Class Identifier | [default to null]

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsDatasetVariablesVarGet

> SendigDatasetVariable mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SENDIG Dataset Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
String dataset = VS; // String | SENDIG Class Identifier
String var = VSTEST; // String | SENDIG Variable Identifier
try {
    SendigDatasetVariable result = apiInstance.mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsDatasetVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SENDIG Class Identifier | [default to null]
 **var** | **String**| SENDIG Variable Identifier | [default to null]

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSendigVersionDatasetsGet

> SendigDatasets mdrSendigVersionDatasetsGet(version)



Get SENDIG Dataset List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
try {
    SendigDatasets result = apiInstance.mdrSendigVersionDatasetsGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionDatasetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrSendigVersionGet

> SendigProduct mdrSendigVersionGet(version)



Get SENDIG product

### Example

```java
// Import classes:
//import org.openapitools.client.api.SENDImplementationGuideSENDIGApi;

SENDImplementationGuideSENDIGApi apiInstance = new SENDImplementationGuideSENDIGApi();
String version = 3-1; // String | CDISC Library Product Version
try {
    SendigProduct result = apiInstance.mdrSendigVersionGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SENDImplementationGuideSENDIGApi#mdrSendigVersionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

