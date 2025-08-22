# SDTMImplementationGuideSDTMIGApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} | 



## mdrRootSdtmigDatasetsDatasetVariablesVarGet

> RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SDTMIG Dataset Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String dataset = DM; // String | SDTMIG Dataset Identifier
String var = SUBJID; // String | SDTMIG Variable Identifier
try {
    RootSdtmigDatasetVariable result = apiInstance.mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrRootSdtmigDatasetsDatasetVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SDTMIG Dataset Identifier | [default to null]
 **var** | **String**| SDTMIG Variable Identifier | [default to null]

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionClassesClassDatasetsGet

> SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet(version, _class)



Get SDTMIG Class Dataset List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
String _class = Findings; // String | SDTMIG Class Identifier
try {
    SdtmigClassDatasets result = apiInstance.mdrSdtmigVersionClassesClassDatasetsGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesClassDatasetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SDTMIG Class Identifier | [default to null]

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionClassesClassGet

> SdtmigClass mdrSdtmigVersionClassesClassGet(version, _class)



Get SDTMIG Class

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
String _class = Findings; // String | SDTMIG Class Identifier
try {
    SdtmigClass result = apiInstance.mdrSdtmigVersionClassesClassGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesClassGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SDTMIG Class Identifier | [default to null]

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionClassesGet

> SdtmigClasses mdrSdtmigVersionClassesGet(version)



Get SDTMIG Class List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
try {
    SdtmigClasses result = apiInstance.mdrSdtmigVersionClassesGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionClassesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsDatasetGet

> SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet(version, dataset)



Get SDTMIG Dataset

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
String dataset = LB; // String | SDTMIG Dataset Identifier
try {
    SdtmigDataset result = apiInstance.mdrSdtmigVersionDatasetsDatasetGet(version, dataset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SDTMIG Dataset Identifier | [default to null]

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsDatasetVariablesGet

> SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTMIG Dataset Variable List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
String dataset = LB; // String | SDTMIG Dataset Identifier
try {
    SdtmigDatasetVariables result = apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetVariablesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SDTMIG Dataset Identifier | [default to null]

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsDatasetVariablesVarGet

> SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SDTMIG Dataset Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
String dataset = LB; // String | SDTMIG Dataset Identifier
String var = LBDTC; // String | SDTMIG Variable Identifier
try {
    SdtmigDatasetVariable result = apiInstance.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsDatasetVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SDTMIG Dataset Identifier | [default to null]
 **var** | **String**| SDTMIG Variable Identifier | [default to null]

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmigVersionDatasetsGet

> SdtmigDatasets mdrSdtmigVersionDatasetsGet(version)



Get SDTMIG Dataset List

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
try {
    SdtmigDatasets result = apiInstance.mdrSdtmigVersionDatasetsGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionDatasetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrSdtmigVersionGet

> SdtmigProduct mdrSdtmigVersionGet(version)



Get SDTMIG product

### Example

```java
// Import classes:
//import org.openapitools.client.api.SDTMImplementationGuideSDTMIGApi;

SDTMImplementationGuideSDTMIGApi apiInstance = new SDTMImplementationGuideSDTMIGApi();
String version = 3-3; // String | CDISC Library Product Version
try {
    SdtmigProduct result = apiInstance.mdrSdtmigVersionGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SDTMImplementationGuideSDTMIGApi#mdrSdtmigVersionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

