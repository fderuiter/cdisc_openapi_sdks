# DefaultApi

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAboutGet**](DefaultApi.md#mdrAboutGet) | **GET** /mdr/about | 
[**mdrLastupdatedGet**](DefaultApi.md#mdrLastupdatedGet) | **GET** /mdr/lastupdated | 
[**mdrProductsDataAnalysisGet**](DefaultApi.md#mdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis | 
[**mdrProductsDataCollectionGet**](DefaultApi.md#mdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection | 
[**mdrProductsDataTabulationGet**](DefaultApi.md#mdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation | 
[**mdrProductsGet**](DefaultApi.md#mdrProductsGet) | **GET** /mdr/products | 
[**mdrProductsMeasuresGet**](DefaultApi.md#mdrProductsMeasuresGet) | **GET** /mdr/products/Measures | 
[**mdrProductsTerminologyGet**](DefaultApi.md#mdrProductsTerminologyGet) | **GET** /mdr/products/Terminology | 



## mdrAboutGet

> About mdrAboutGet()



Get Information About CDISC Library

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    About result = apiInstance.mdrAboutGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrAboutGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**About**](About.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrLastupdatedGet

> Lastupdated mdrLastupdatedGet()



Get CDISC Library Last Updated

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    Lastupdated result = apiInstance.mdrLastupdatedGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrLastupdatedGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Lastupdated**](Lastupdated.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsDataAnalysisGet

> ProductgroupDataAnalysis mdrProductsDataAnalysisGet()



Get CDISC Library Product Group Data Analysis

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    ProductgroupDataAnalysis result = apiInstance.mdrProductsDataAnalysisGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrProductsDataAnalysisGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsDataCollectionGet

> ProductgroupDataCollection mdrProductsDataCollectionGet()



Get CDISC Library Product Group Data Collection

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    ProductgroupDataCollection result = apiInstance.mdrProductsDataCollectionGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrProductsDataCollectionGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsDataTabulationGet

> ProductgroupDataTabulation mdrProductsDataTabulationGet()



Get CDISC Library Product Group Data Tabulation

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    ProductgroupDataTabulation result = apiInstance.mdrProductsDataTabulationGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrProductsDataTabulationGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsGet

> Products mdrProductsGet()



Get CDISC Library Products

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    Products result = apiInstance.mdrProductsGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrProductsGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Products**](Products.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## mdrProductsMeasuresGet

> ProductgroupQrs mdrProductsMeasuresGet()



Get CDISC Library Product Group QRS

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    ProductgroupQrs result = apiInstance.mdrProductsMeasuresGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrProductsMeasuresGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mdrProductsTerminologyGet

> ProductgroupTerminology mdrProductsTerminologyGet()



Get CDISC Library Product Group Terminology

### Example

```java
// Import classes:
//import org.openapitools.client.api.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
try {
    ProductgroupTerminology result = apiInstance.mdrProductsTerminologyGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#mdrProductsTerminologyGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProductgroupTerminology**](ProductgroupTerminology.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

