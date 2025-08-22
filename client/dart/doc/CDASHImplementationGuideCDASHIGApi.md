# openapi.api.CDASHImplementationGuideCDASHIGApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassdomainsget) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassget) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassscenariosget) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesget) | **GET** /mdr/cdashig/{version}/classes | 
[**mdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainfieldsget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainget) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsget) | **GET** /mdr/cdashig/{version}/domains | 
[**mdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionget) | **GET** /mdr/cdashig/{version} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenariofieldsfieldget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenariofieldsget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenarioget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosget) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrrootcdashigdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGApi.md#mdrrootcdashigscenariosdomainscenariofieldsfieldget) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **mdrCdashigVersionClassesClassDomainsGet**
> CdashigClassDomains mdrCdashigVersionClassesClassDomainsGet(version, class_)



Get CDASHIG Class Domain List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final class_ = Findings; // String | CDASHIG Class Identifier

try {
    final result = api_instance.mdrCdashigVersionClassesClassDomainsGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassDomainsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesClassGet**
> CdashigClass mdrCdashigVersionClassesClassGet(version, class_)



Get CDASHIG Class

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final class_ = Findings; // String | CDASHIG Class Identifier

try {
    final result = api_instance.mdrCdashigVersionClassesClassGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| CDASHIG Class Identifier | 

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesClassScenariosGet**
> CdashigClassScenarios mdrCdashigVersionClassesClassScenariosGet(version, class_)



Get CDASHIG Class Scenario List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final class_ = Findings; // String | CDASHIG Class Identifier

try {
    final result = api_instance.mdrCdashigVersionClassesClassScenariosGet(version, class_);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassScenariosGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **class_** | **String**| CDASHIG Class Identifier | 

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesGet**
> CdashigProductClasses mdrCdashigVersionClassesGet(version)



Get CDASHIG Class List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashigVersionClassesGet(version);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainFieldsFieldGet**
> CdashigDomainField mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field)



Get CDASHIG Domain Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final domain = VS; // String | CDASHIG Domain Identifier
final field = VSDAT; // String | CDASHIG Field Identifier

try {
    final result = api_instance.mdrCdashigVersionDomainsDomainFieldsFieldGet(version, domain, field);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASHIG Domain Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainFieldsGet**
> CdashigDomainFields mdrCdashigVersionDomainsDomainFieldsGet(version, domain)



Get CDASHIG Domain Field List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final domain = VS; // String | CDASHIG Domain Identifier

try {
    final result = api_instance.mdrCdashigVersionDomainsDomainFieldsGet(version, domain);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainFieldsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainGet**
> CdashigDomain mdrCdashigVersionDomainsDomainGet(version, domain)



Get CDASHIG Domain

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final domain = VS; // String | CDASHIG Domain Identifier

try {
    final result = api_instance.mdrCdashigVersionDomainsDomainGet(version, domain);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASHIG Domain Identifier | 

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsGet**
> CdashigProductDomains mdrCdashigVersionDomainsGet(version)



Get CDASHIG Domain List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashigVersionDomainsGet(version);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionGet**
> CdashigProduct mdrCdashigVersionGet(version)



Get CDASHIG Product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashigVersionGet(version);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
> CdashigScenarioField mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field)



Get CDASHIG Scenario Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final domain = VS; // String | CDASHIG Domain Identifier
final scenario = Generic; // String | CDASHIG Scenario Identifier
final field = VSDAT; // String | CDASHIG Field Identifier

try {
    final result = api_instance.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version, domain, scenario, field);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioFieldsGet**
> CdashigScenarioFields mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario)



Get CDASHIG Scenario Field List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final domain = VS; // String | CDASHIG Domain Identifier
final scenario = HorizontalGeneric; // String | CDASHIG Scenario Identifier

try {
    final result = api_instance.mdrCdashigVersionScenariosDomainScenarioFieldsGet(version, domain, scenario);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioFieldsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioGet**
> CdashigScenario mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario)



Get CDASHIG Scenario

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version
final domain = VS; // String | CDASHIG Domain Identifier
final scenario = HorizontalGeneric; // String | CDASHIG Scenario Identifier

try {
    final result = api_instance.mdrCdashigVersionScenariosDomainScenarioGet(version, domain, scenario);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosGet**
> CdashigProductScenarios mdrCdashigVersionScenariosGet(version)



Get CDASHIG Scenario List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final version = 2-1; // String | CDISC Library Product Version

try {
    final result = api_instance.mdrCdashigVersionScenariosGet(version);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| CDISC Library Product Version | 

### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashigDomainsDomainFieldsFieldGet**
> RootCdashigDomainField mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field)



Get Root CDASHIG Domain Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final domain = VS; // String | CDASHIG Domain Identifier
final field = VSDAT; // String | CDASHIG Field Identifier

try {
    final result = api_instance.mdrRootCdashigDomainsDomainFieldsFieldGet(domain, field);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrRootCdashigDomainsDomainFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASHIG Domain Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
> RootCdashigScenarioField mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field)



Get Root CDASHIG Scenario Field

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CDASHImplementationGuideCDASHIGApi();
final domain = VS; // String | CDASHIG Domain Identifier
final scenario = Generic; // String | CDASHIG Scenario Identifier
final field = VSDAT; // String | CDASHIG Field Identifier

try {
    final result = api_instance.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain, scenario, field);
    print(result);
} catch (e) {
    print('Exception when calling CDASHImplementationGuideCDASHIGApi->mdrRootCdashigScenariosDomainScenarioFieldsFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| CDASHIG Domain Identifier | 
 **scenario** | **String**| CDASHIG Scenario Identifier | 
 **field** | **String**| CDASHIG Field Identifier | 

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

