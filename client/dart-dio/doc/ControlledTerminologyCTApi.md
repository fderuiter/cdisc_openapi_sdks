# openapi.api.ControlledTerminologyCTApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCtPackagesGet**](ControlledTerminologyCTApi.md#mdrctpackagesget) | **GET** /mdr/ct/packages | 
[**mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelistget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelisttermsget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelisttermstermget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistsget) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdrCtPackagesProductGet**](ControlledTerminologyCTApi.md#mdrctpackagesproductget) | **GET** /mdr/ct/packages/{product} | 
[**mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTApi.md#mdrrootctproductgroupcodelistscodelistget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTApi.md#mdrrootctproductgroupcodelistscodelisttermstermget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **mdrCtPackagesGet**
> CtPackages mdrCtPackagesGet()



Get CDISC Library CT Package List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();

try {
    final response = api.mdrCtPackagesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrCtPackagesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistGet**
> CtCodelist mdrCtPackagesPackageCodelistsCodelistGet(package, codelist)



Get CDISC Library CT Package Codelist

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String package = sdtmct-2019-12-20; // String | CT Package Identifier
final String codelist = C67154; // String | CT Codelist Identifier

try {
    final response = api.mdrCtPackagesPackageCodelistsCodelistGet(package, codelist);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **String**| CT Package Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsGet**
> CtCodelistTerms mdrCtPackagesPackageCodelistsCodelistTermsGet(package, codelist)



Get CDISC Library CT Package Codelist Term List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String package = sdtmct-2019-12-20; // String | CT Package Identifier
final String codelist = C67154; // String | CT Codelist Identifier

try {
    final response = api.mdrCtPackagesPackageCodelistsCodelistTermsGet(package, codelist);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistTermsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **String**| CT Package Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
> CtTerm mdrCtPackagesPackageCodelistsCodelistTermsTermGet(package, codelist, term)



Get CDISC Library CT Package Codelist Term

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String package = sdtmct-2019-12-20; // String | CT Package Product Identifier
final String codelist = C67154; // String | CT Codelist Identifier
final String term = C64796; // String | CT Codelist Term Identifier

try {
    final response = api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(package, codelist, term);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistTermsTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **String**| CT Package Product Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 
 **term** | **String**| CT Codelist Term Identifier | 

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsGet**
> CtPackageCodelists mdrCtPackagesPackageCodelistsGet(package)



Get CDISC Library CT Package Codelist List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String package = sdtmct-2019-12-20; // String | CT Package Identifier

try {
    final response = api.mdrCtPackagesPackageCodelistsGet(package);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **String**| CT Package Identifier | 

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesProductGet**
> CtPackage mdrCtPackagesProductGet(product)



Get CDISC Library CT Package

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String product = sdtmct-2019-12-20; // String | CT Package Product Identifier

try {
    final response = api.mdrCtPackagesProductGet(product);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrCtPackagesProductGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CT Package Product Identifier | 

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistGet**
> RootCtCodelist mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist)



Get CDISC Library Root CT Codelist

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String productGroup = sdtmct; // String | CT Product Group Identifier
final String codelist = C67154; // String | CT Codelist Identifier

try {
    final response = api.mdrRootCtProductGroupCodelistsCodelistGet(productGroup, codelist);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrRootCtProductGroupCodelistsCodelistGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **String**| CT Product Group Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
> RootCtTerm mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term)



Get CDISC Library Root CT Term

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getControlledTerminologyCTApi();
final String productGroup = sdtmct; // String | CT Product Group Identifier
final String codelist = C67154; // String | CT Codelist Identifier
final String term = C64796; // String | CT Codelist Term Identifier

try {
    final response = api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup, codelist, term);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlledTerminologyCTApi->mdrRootCtProductGroupCodelistsCodelistTermsTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productGroup** | **String**| CT Product Group Identifier | 
 **codelist** | **String**| CT Codelist Identifier | 
 **term** | **String**| CT Codelist Term Identifier | 

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

