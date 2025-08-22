# openapi.api.SENDImplementationGuideSENDIGApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrrootsendigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesclassdatasetsget) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesclassget) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesget) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetget) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetvariablesget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsget) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](SENDImplementationGuideSENDIGApi.md#mdrsendigversionget) | **GET** /mdr/sendig/{version} | 


# **mdrRootSendigDatasetsDatasetVariablesVarGet**
> RootSendigDatasetVariable mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var_)



Get Root SENDIG Dataset Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final dataset = VS; // String | SENDIG Dataset Identifier
final var_ = VSTEST; // String | SENDIG Variable Identifier

try {
    final result = api_instance.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset, var_);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrRootSendigDatasetsDatasetVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SENDIG Dataset Identifier | 
 **var_** | **String**| SENDIG Variable Identifier | 

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesClassDatasetsGet**
> SendigClassDatasets mdrSendigVersionClassesClassDatasetsGet(version, class_)



Get SENDIG Class Dataset List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version
final class_ = Findings; // String | SENDIG Class Identifier

try {
    final result = api_instance.mdrSendigVersionClassesClassDatasetsGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionClassesClassDatasetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesClassGet**
> SendigClass mdrSendigVersionClassesClassGet(version, class_)



Get SENDIG Class

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version
final class_ = Findings; // String | SENDIG Class Identifier

try {
    final result = api_instance.mdrSendigVersionClassesClassGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionClassesClassGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesGet**
> SendigClasses mdrSendigVersionClassesGet(version)



Get SENDIG Class List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSendigVersionClassesGet(version);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionClassesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetGet**
> SendigDataset mdrSendigVersionDatasetsDatasetGet(version, dataset)



Get SENDIG Dataset

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version
final dataset = VS; // String | SENDIG Class Identifier

try {
    final result = api_instance.mdrSendigVersionDatasetsDatasetGet(version, dataset);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetVariablesGet**
> SendigDatasetVariables mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SENDIG Dataset Variable List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version
final dataset = VS; // String | SENDIG Class Identifier

try {
    final result = api_instance.mdrSendigVersionDatasetsDatasetVariablesGet(version, dataset);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetVariablesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SENDIG Class Identifier | 

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetVariablesVarGet**
> SendigDatasetVariable mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var_)



Get SENDIG Dataset Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version
final dataset = VS; // String | SENDIG Class Identifier
final var_ = VSTEST; // String | SENDIG Variable Identifier

try {
    final result = api_instance.mdrSendigVersionDatasetsDatasetVariablesVarGet(version, dataset, var_);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SENDIG Class Identifier | 
 **var_** | **String**| SENDIG Variable Identifier | 

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsGet**
> SendigDatasets mdrSendigVersionDatasetsGet(version)



Get SENDIG Dataset List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSendigVersionDatasetsGet(version);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionGet**
> SendigProduct mdrSendigVersionGet(version)



Get SENDIG product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SENDImplementationGuideSENDIGApi();
final version = 3-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSendigVersionGet(version);
    print(result);
} catch (e) {
    print('Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

