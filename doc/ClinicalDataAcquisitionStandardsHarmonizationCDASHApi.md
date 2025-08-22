# openapi.api.ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassdomainsget) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassfieldsfieldget) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassget) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesget) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainfieldsget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainget) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsget) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionget) | **GET** /mdr/cdash/{version} | 
[**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrrootcdashclassesclassfieldsfieldget) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrrootcdashdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **mdrCdashVersionClassesClassDomainsGet**
> CdashClassDomains mdrCdashVersionClassesClassDomainsGet(version, class_)



Get CDASH Class Domain List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version
final class_ = SpecialPurpose; // String | CDASH Class Identifier

try {
    final result = api_instance.mdrCdashVersionClassesClassDomainsGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassDomainsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| CDASH Class Identifier | 

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesClassFieldsFieldGet**
> CdashClassField mdrCdashVersionClassesClassFieldsFieldGet(version, class_, field)



Get CDASH Class Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version
final class_ = Timing; // String | CDASH Class Identifier
final field = --DAT; // String | CDASH Field Identifier

try {
    final result = api_instance.mdrCdashVersionClassesClassFieldsFieldGet(version, class_, field);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| CDASH Class Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesClassGet**
> CdashClass mdrCdashVersionClassesClassGet(version, class_)



Get CDASH Class

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version
final class_ = Timing; // String | CDASH Class Identifier

try {
    final result = api_instance.mdrCdashVersionClassesClassGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| CDASH Class Identifier | 

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesGet**
> CdashProductClasses mdrCdashVersionClassesGet(version)



Get CDASH Class List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashVersionClassesGet(version);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainFieldsFieldGet**
> CdashDomainField mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASH Domain Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version
final domain = DM; // String | CDASH Domain Identifier
final field = AGE; // String | CDASH Field Identifier

try {
    final result = api_instance.mdrCdashVersionDomainsDomainFieldsFieldGet(version, domain, field);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASH Domain Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainFieldsGet**
> CdashDomainFields mdrCdashVersionDomainsDomainFieldsGet(version, domain)



Get CDASH Domain Field List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version
final domain = DM; // String | CDASH Domain Identifier

try {
    final result = api_instance.mdrCdashVersionDomainsDomainFieldsGet(version, domain);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainFieldsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASH Domain Identifier | 

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainGet**
> CdashDomain mdrCdashVersionDomainsDomainGet(version, domain)



Get CDASH Domain

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version
final domain = DM; // String | CDASH Domain Identifier

try {
    final result = api_instance.mdrCdashVersionDomainsDomainGet(version, domain);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASH Domain Identifier | 

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsGet**
> CdashProductDomains mdrCdashVersionDomainsGet(version)



Get CDASH Domain List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashVersionDomainsGet(version);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionGet**
> CdashProduct mdrCdashVersionGet(version)



Get CDASH Product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final version = 1-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashVersionGet(version);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashClassesClassFieldsFieldGet**
> RootCdashClassField mdrRootCdashClassesClassFieldsFieldGet(class_, field)



Get Root CDASH Class Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final class_ = Timing; // String | CDASH Class Identifier
final field = --DAT; // String | CDASH Field Identifier

try {
    final result = api_instance.mdrRootCdashClassesClassFieldsFieldGet(class_, field);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrRootCdashClassesClassFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_** | **String**| CDASH Class Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashDomainsDomainFieldsFieldGet**
> RootCdashDomainField mdrRootCdashDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASH Domain Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi();
final domain = DM; // String | CDASH Domain Identifier
final field = AGE; // String | CDASH Field Identifier

try {
    final result = api_instance.mdrRootCdashDomainsDomainFieldsFieldGet(domain, field);
    print(result);
} catch (e) {
    print('Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrRootCdashDomainsDomainFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASH Domain Identifier | 
 **field** | **String**| CDASH Field Identifier | 

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

