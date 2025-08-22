# openapi.api.SDTMImplementationGuideSDTMIGApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrrootsdtmigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionClassesClassDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesclassdatasetsget) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
[**mdrSdtmigVersionClassesClassGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesclassget) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
[**mdrSdtmigVersionClassesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesget) | **GET** /mdr/sdtmig/{version}/classes | 
[**mdrSdtmigVersionDatasetsDatasetGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
[**mdrSdtmigVersionDatasetsDatasetVariablesGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
[**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmigVersionDatasetsGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsget) | **GET** /mdr/sdtmig/{version}/datasets | 
[**mdrSdtmigVersionGet**](SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionget) | **GET** /mdr/sdtmig/{version} | 


# **mdrRootSdtmigDatasetsDatasetVariablesVarGet**
> RootSdtmigDatasetVariable mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var_)



Get Root SDTMIG Dataset Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final dataset = DM; // String | SDTMIG Dataset Identifier
final var_ = SUBJID; // String | SDTMIG Variable Identifier

try {
    final result = api_instance.mdrRootSdtmigDatasetsDatasetVariablesVarGet(dataset, var_);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrRootSdtmigDatasetsDatasetVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SDTMIG Dataset Identifier | 
 **var_** | **String**| SDTMIG Variable Identifier | 

### Return type

[**RootSdtmigDatasetVariable**](RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesClassDatasetsGet**
> SdtmigClassDatasets mdrSdtmigVersionClassesClassDatasetsGet(version, class_)



Get SDTMIG Class Dataset List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version
final class_ = Findings; // String | SDTMIG Class Identifier

try {
    final result = api_instance.mdrSdtmigVersionClassesClassDatasetsGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesClassDatasetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClassDatasets**](SdtmigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesClassGet**
> SdtmigClass mdrSdtmigVersionClassesClassGet(version, class_)



Get SDTMIG Class

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version
final class_ = Findings; // String | SDTMIG Class Identifier

try {
    final result = api_instance.mdrSdtmigVersionClassesClassGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesClassGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SDTMIG Class Identifier | 

### Return type

[**SdtmigClass**](SdtmigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionClassesGet**
> SdtmigClasses mdrSdtmigVersionClassesGet(version)



Get SDTMIG Class List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSdtmigVersionClassesGet(version);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SdtmigClasses**](SdtmigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetGet**
> SdtmigDataset mdrSdtmigVersionDatasetsDatasetGet(version, dataset)



Get SDTMIG Dataset

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version
final dataset = LB; // String | SDTMIG Dataset Identifier

try {
    final result = api_instance.mdrSdtmigVersionDatasetsDatasetGet(version, dataset);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDataset**](SdtmigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetVariablesGet**
> SdtmigDatasetVariables mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTMIG Dataset Variable List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version
final dataset = LB; // String | SDTMIG Dataset Identifier

try {
    final result = api_instance.mdrSdtmigVersionDatasetsDatasetVariablesGet(version, dataset);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetVariablesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SDTMIG Dataset Identifier | 

### Return type

[**SdtmigDatasetVariables**](SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsDatasetVariablesVarGet**
> SdtmigDatasetVariable mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var_)



Get SDTMIG Dataset Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version
final dataset = LB; // String | SDTMIG Dataset Identifier
final var_ = LBDTC; // String | SDTMIG Variable Identifier

try {
    final result = api_instance.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(version, dataset, var_);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SDTMIG Dataset Identifier | 
 **var_** | **String**| SDTMIG Variable Identifier | 

### Return type

[**SdtmigDatasetVariable**](SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionDatasetsGet**
> SdtmigDatasets mdrSdtmigVersionDatasetsGet(version)



Get SDTMIG Dataset List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSdtmigVersionDatasetsGet(version);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SdtmigDatasets**](SdtmigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmigVersionGet**
> SdtmigProduct mdrSdtmigVersionGet(version)



Get SDTMIG product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = SDTMImplementationGuideSDTMIGApi();
final version = 3-3; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSdtmigVersionGet(version);
    print(result);
} catch (e) {
    print('Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SdtmigProduct**](SdtmigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

