# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAboutGet**](DefaultApi.md#mdraboutget) | **GET** /mdr/about | 
[**mdrLastupdatedGet**](DefaultApi.md#mdrlastupdatedget) | **GET** /mdr/lastupdated | 
[**mdrProductsDataAnalysisGet**](DefaultApi.md#mdrproductsdataanalysisget) | **GET** /mdr/products/DataAnalysis | 
[**mdrProductsDataCollectionGet**](DefaultApi.md#mdrproductsdatacollectionget) | **GET** /mdr/products/DataCollection | 
[**mdrProductsDataTabulationGet**](DefaultApi.md#mdrproductsdatatabulationget) | **GET** /mdr/products/DataTabulation | 
[**mdrProductsGet**](DefaultApi.md#mdrproductsget) | **GET** /mdr/products | 
[**mdrProductsMeasuresGet**](DefaultApi.md#mdrproductsmeasuresget) | **GET** /mdr/products/Measures | 
[**mdrProductsTerminologyGet**](DefaultApi.md#mdrproductsterminologyget) | **GET** /mdr/products/Terminology | 


# **mdrAboutGet**
> About mdrAboutGet()



Get Information About CDISC Library

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrAboutGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrAboutGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrLastupdatedGet**
> Lastupdated mdrLastupdatedGet()



Get CDISC Library Last Updated

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrLastupdatedGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrLastupdatedGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataAnalysisGet**
> ProductgroupDataAnalysis mdrProductsDataAnalysisGet()



Get CDISC Library Product Group Data Analysis

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrProductsDataAnalysisGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrProductsDataAnalysisGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataCollectionGet**
> ProductgroupDataCollection mdrProductsDataCollectionGet()



Get CDISC Library Product Group Data Collection

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrProductsDataCollectionGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrProductsDataCollectionGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataTabulationGet**
> ProductgroupDataTabulation mdrProductsDataTabulationGet()



Get CDISC Library Product Group Data Tabulation

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrProductsDataTabulationGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrProductsDataTabulationGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsGet**
> Products mdrProductsGet()



Get CDISC Library Products

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrProductsGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrProductsGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsMeasuresGet**
> ProductgroupQrs mdrProductsMeasuresGet()



Get CDISC Library Product Group QRS

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrProductsMeasuresGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrProductsMeasuresGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsTerminologyGet**
> ProductgroupTerminology mdrProductsTerminologyGet()



Get CDISC Library Product Group Terminology

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DefaultApi();

try {
    final result = api_instance.mdrProductsTerminologyGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->mdrProductsTerminologyGet: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

