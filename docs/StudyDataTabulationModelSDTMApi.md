# StudyDataTabulationModelSDTMApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 



## mdrRootSdtmClassesClassVariablesVarGet

> RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet(_class, var)



Get Root of SDTM Class Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String _class = GeneralObservations; // String | SDTM Class Identifier
String var = --DTC; // String | SDTM Variable Identifier
try {
    RootSdtmClassVariable result = apiInstance.mdrRootSdtmClassesClassVariablesVarGet(_class, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrRootSdtmClassesClassVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| SDTM Class Identifier | [default to null]
 **var** | **String**| SDTM Variable Identifier | [default to null]

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrRootSdtmDatasetsDatasetVariablesVarGet

> RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var)



Get Root SDTM Dataset Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String dataset = DM; // String | SDTM Dataset Identifier
String var = SUBJID; // String | SDTM Variable Identifier
try {
    RootSdtmDatasetVariable result = apiInstance.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrRootSdtmDatasetsDatasetVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SDTM Dataset Identifier | [default to null]
 **var** | **String**| SDTM Variable Identifier | [default to null]

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassDatasetsGet

> SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet(version, _class)



Get SDTM Class Dataset List

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String _class = SpecialPurpose; // String | SDTM Class Identifier
try {
    SdtmClassDatasets result = apiInstance.mdrSdtmVersionClassesClassDatasetsGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassDatasetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SDTM Class Identifier | [default to null]

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassGet

> SdtmClass mdrSdtmVersionClassesClassGet(version, _class)



Get SDTM Class

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String _class = Findings; // String | SDTM Class Identifier
try {
    SdtmClass result = apiInstance.mdrSdtmVersionClassesClassGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SDTM Class Identifier | [default to null]

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassVariablesGet

> SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet(version, _class)



Get SDTM Class Variable List

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String _class = GeneralObservations; // String | SDTM Class Identifier
try {
    SdtmClassVariables result = apiInstance.mdrSdtmVersionClassesClassVariablesGet(version, _class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SDTM Class Identifier | [default to null]

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesClassVariablesVarGet

> SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet(version, _class, var)



Get SDTM Class Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String _class = GeneralObservations; // String | SDTM Class Identifier
String var = --DTC; // String | SDTM Variable Identifier
try {
    SdtmClassVariable result = apiInstance.mdrSdtmVersionClassesClassVariablesVarGet(version, _class, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesClassVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **_class** | **String**| SDTM Class Identifier | [default to null]
 **var** | **String**| SDTM Variable Identifier | [default to null]

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionClassesGet

> SdtmClasses mdrSdtmVersionClassesGet(version)



Get SDTM Class List

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
try {
    SdtmClasses result = apiInstance.mdrSdtmVersionClassesGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionClassesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsDatasetGet

> SdtmDataset mdrSdtmVersionDatasetsDatasetGet(version, dataset)



Get SDTM Dataset

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String dataset = DM; // String | SDTM Dataset Identifier
try {
    SdtmDataset result = apiInstance.mdrSdtmVersionDatasetsDatasetGet(version, dataset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SDTM Dataset Identifier | [default to null]

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsDatasetVariablesGet

> SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTM Dataset Variable List

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String dataset = DM; // String | SDTM Dataset Identifier
try {
    SdtmDatasetVariables result = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SDTM Dataset Identifier | [default to null]

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsDatasetVariablesVarGet

> SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var)



Get SDTM Dataset Variable

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
String dataset = DM; // String | SDTM Dataset Identifier
String var = SUBJID; // String | SDTM Variable Identifier
try {
    SdtmDatasetVariable result = apiInstance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsDatasetVariablesVarGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]
 **dataset** | **String**| SDTM Dataset Identifier | [default to null]
 **var** | **String**| SDTM Variable Identifier | [default to null]

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrSdtmVersionDatasetsGet

> SdtmDatasets mdrSdtmVersionDatasetsGet(version)



Get SDTM Dataset List

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
try {
    SdtmDatasets result = apiInstance.mdrSdtmVersionDatasetsGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionDatasetsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv


## mdrSdtmVersionGet

> SdtmProduct mdrSdtmVersionGet(version)



Get SDTM product

### Example

```java
// Import classes:
//import org.openapitools.client.api.StudyDataTabulationModelSDTMApi;

StudyDataTabulationModelSDTMApi apiInstance = new StudyDataTabulationModelSDTMApi();
String version = 1-8; // String | CDISC Library Product Version
try {
    SdtmProduct result = apiInstance.mdrSdtmVersionGet(version);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StudyDataTabulationModelSDTMApi#mdrSdtmVersionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | [default to null]

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

