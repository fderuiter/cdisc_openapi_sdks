# openapi.api.StudyDataTabulationModelSDTMApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSdtmClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrrootsdtmclassesclassvariablesvarget) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
[**mdrRootSdtmDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrrootsdtmdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionClassesClassDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassdatasetsget) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
[**mdrSdtmVersionClassesClassGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassget) | **GET** /mdr/sdtm/{version}/classes/{class} | 
[**mdrSdtmVersionClassesClassVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassvariablesget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
[**mdrSdtmVersionClassesClassVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassvariablesvarget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
[**mdrSdtmVersionClassesGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesget) | **GET** /mdr/sdtm/{version}/classes | 
[**mdrSdtmVersionDatasetsDatasetGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetget) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
[**mdrSdtmVersionDatasetsDatasetVariablesGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
[**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSdtmVersionDatasetsGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsget) | **GET** /mdr/sdtm/{version}/datasets | 
[**mdrSdtmVersionGet**](StudyDataTabulationModelSDTMApi.md#mdrsdtmversionget) | **GET** /mdr/sdtm/{version} | 


# **mdrRootSdtmClassesClassVariablesVarGet**
> RootSdtmClassVariable mdrRootSdtmClassesClassVariablesVarGet(class_, var_)



Get Root of SDTM Class Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final class_ = GeneralObservations; // String | SDTM Class Identifier
final var_ = --DTC; // String | SDTM Variable Identifier

try {
    final result = api_instance.mdrRootSdtmClassesClassVariablesVarGet(class_, var_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrRootSdtmClassesClassVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_** | **String**| SDTM Class Identifier | 
 **var_** | **String**| SDTM Variable Identifier | 

### Return type

[**RootSdtmClassVariable**](RootSdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootSdtmDatasetsDatasetVariablesVarGet**
> RootSdtmDatasetVariable mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var_)



Get Root SDTM Dataset Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final dataset = DM; // String | SDTM Dataset Identifier
final var_ = SUBJID; // String | SDTM Variable Identifier

try {
    final result = api_instance.mdrRootSdtmDatasetsDatasetVariablesVarGet(dataset, var_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrRootSdtmDatasetsDatasetVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataset** | **String**| SDTM Dataset Identifier | 
 **var_** | **String**| SDTM Variable Identifier | 

### Return type

[**RootSdtmDatasetVariable**](RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassDatasetsGet**
> SdtmClassDatasets mdrSdtmVersionClassesClassDatasetsGet(version, class_)



Get SDTM Class Dataset List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final class_ = SpecialPurpose; // String | SDTM Class Identifier

try {
    final result = api_instance.mdrSdtmVersionClassesClassDatasetsGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassDatasetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SDTM Class Identifier | 

### Return type

[**SdtmClassDatasets**](SdtmClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassGet**
> SdtmClass mdrSdtmVersionClassesClassGet(version, class_)



Get SDTM Class

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final class_ = Findings; // String | SDTM Class Identifier

try {
    final result = api_instance.mdrSdtmVersionClassesClassGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SDTM Class Identifier | 

### Return type

[**SdtmClass**](SdtmClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassVariablesGet**
> SdtmClassVariables mdrSdtmVersionClassesClassVariablesGet(version, class_)



Get SDTM Class Variable List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final class_ = GeneralObservations; // String | SDTM Class Identifier

try {
    final result = api_instance.mdrSdtmVersionClassesClassVariablesGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassVariablesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SDTM Class Identifier | 

### Return type

[**SdtmClassVariables**](SdtmClassVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesClassVariablesVarGet**
> SdtmClassVariable mdrSdtmVersionClassesClassVariablesVarGet(version, class_, var_)



Get SDTM Class Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final class_ = GeneralObservations; // String | SDTM Class Identifier
final var_ = --DTC; // String | SDTM Variable Identifier

try {
    final result = api_instance.mdrSdtmVersionClassesClassVariablesVarGet(version, class_, var_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| SDTM Class Identifier | 
 **var_** | **String**| SDTM Variable Identifier | 

### Return type

[**SdtmClassVariable**](SdtmClassVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionClassesGet**
> SdtmClasses mdrSdtmVersionClassesGet(version)



Get SDTM Class List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSdtmVersionClassesGet(version);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SdtmClasses**](SdtmClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetGet**
> SdtmDataset mdrSdtmVersionDatasetsDatasetGet(version, dataset)



Get SDTM Dataset

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final dataset = DM; // String | SDTM Dataset Identifier

try {
    final result = api_instance.mdrSdtmVersionDatasetsDatasetGet(version, dataset);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SDTM Dataset Identifier | 

### Return type

[**SdtmDataset**](SdtmDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetVariablesGet**
> SdtmDatasetVariables mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset)



Get SDTM Dataset Variable List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final dataset = DM; // String | SDTM Dataset Identifier

try {
    final result = api_instance.mdrSdtmVersionDatasetsDatasetVariablesGet(version, dataset);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetVariablesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SDTM Dataset Identifier | 

### Return type

[**SdtmDatasetVariables**](SdtmDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsDatasetVariablesVarGet**
> SdtmDatasetVariable mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var_)



Get SDTM Dataset Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version
final dataset = DM; // String | SDTM Dataset Identifier
final var_ = SUBJID; // String | SDTM Variable Identifier

try {
    final result = api_instance.mdrSdtmVersionDatasetsDatasetVariablesVarGet(version, dataset, var_);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **dataset** | **String**| SDTM Dataset Identifier | 
 **var_** | **String**| SDTM Variable Identifier | 

### Return type

[**SdtmDatasetVariable**](SdtmDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionDatasetsGet**
> SdtmDatasets mdrSdtmVersionDatasetsGet(version)



Get SDTM Dataset List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSdtmVersionDatasetsGet(version);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SdtmDatasets**](SdtmDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSdtmVersionGet**
> SdtmProduct mdrSdtmVersionGet(version)



Get SDTM product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StudyDataTabulationModelSDTMApi();
final version = 1-8; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrSdtmVersionGet(version);
    print(result);
} catch (e) {
    print('Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**SdtmProduct**](SdtmProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

