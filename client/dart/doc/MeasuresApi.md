# openapi.api.MeasuresApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrQrsMeasureVersionGet**](MeasuresApi.md#mdrqrsmeasureversionget) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdrQrsMeasureVersionItemsGet**](MeasuresApi.md#mdrqrsmeasureversionitemsget) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdrQrsMeasureVersionItemsItemGet**](MeasuresApi.md#mdrqrsmeasureversionitemsitemget) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdrQrsMeasureVersionResponsegroupsGet**](MeasuresApi.md#mdrqrsmeasureversionresponsegroupsget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresApi.md#mdrqrsmeasureversionresponsegroupsresponsegroupget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **mdrQrsMeasureVersionGet**
> QrsProduct mdrQrsMeasureVersionGet(measure, version)



Get QRS Product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MeasuresApi();
final measure = AIMS1; // String | QRS Measure Identifier
final version = 1-0; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrQrsMeasureVersionGet(measure, version);
    print(result);
} catch (e) {
    print('Exception when calling MeasuresApi->mdrQrsMeasureVersionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionItemsGet**
> QrsItems mdrQrsMeasureVersionItemsGet(measure, version)



Get QRS Item List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MeasuresApi();
final measure = AIMS1; // String | QRS Measure Identifier
final version = 1-0; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrQrsMeasureVersionItemsGet(measure, version);
    print(result);
} catch (e) {
    print('Exception when calling MeasuresApi->mdrQrsMeasureVersionItemsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionItemsItemGet**
> QrsItem mdrQrsMeasureVersionItemsItemGet(measure, version, item)



Get QRS Item

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MeasuresApi();
final measure = AIMS1; // String | QRS Measure Identifier
final version = 1-0; // String | CDISC Library Product Version
final item = AIMS01.001; // String | QRS Measure Item Identifier

try {
    final result = api_instance.mdrQrsMeasureVersionItemsItemGet(measure, version, item);
    print(result);
} catch (e) {
    print('Exception when calling MeasuresApi->mdrQrsMeasureVersionItemsItemGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 
 **item** | **String**| QRS Measure Item Identifier | 

### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionResponsegroupsGet**
> QrsResponsegroups mdrQrsMeasureVersionResponsegroupsGet(measure, version)



Get QRS Response Group List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MeasuresApi();
final measure = AIMS1; // String | QRS Measure Identifier
final version = 1-0; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrQrsMeasureVersionResponsegroupsGet(measure, version);
    print(result);
} catch (e) {
    print('Exception when calling MeasuresApi->mdrQrsMeasureVersionResponsegroupsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
> QrsResponsegroup mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup)



Get QRS Response Group

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MeasuresApi();
final measure = AIMS1; // String | QRS Measure Identifier
final version = 1-0; // String | CDISC Library Product Version
final responsegroup = AIMS1.11to12; // String | QRS Measure's Response Group Identifier

try {
    final result = api_instance.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure, version, responsegroup);
    print(result);
} catch (e) {
    print('Exception when calling MeasuresApi->mdrQrsMeasureVersionResponsegroupsResponsegroupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **measure** | **String**| QRS Measure Identifier | 
 **version** | **String**| CDISC Library Product Version | 
 **responsegroup** | **String**| QRS Measure's Response Group Identifier | 

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

