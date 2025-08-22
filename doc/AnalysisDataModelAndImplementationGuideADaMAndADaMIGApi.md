# openapi.api.AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresget) | **GET** /mdr/adam/{product}/datastructures | 
[**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructureget) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevariablesget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevariablesvarget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevarsetsget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevarsetsvarsetget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductget) | **GET** /mdr/adam/{product} | 


# **mdrAdamProductDatastructuresGet**
> AdamProductDatastructures mdrAdamProductDatastructuresGet(product)



Get ADaM Data Structure List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product

try {
    final response = api.mdrAdamProductDatastructuresGet(product);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureGet**
> AdamDatastructure mdrAdamProductDatastructuresStructureGet(product, structure)



Get ADaM Data Structure

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product
final String structure = ADSL; // String | Data structure Identifier

try {
    final response = api.mdrAdamProductDatastructuresStructureGet(product, structure);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| Data structure Identifier | 

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVariablesGet**
> AdamDatastructureVariables mdrAdamProductDatastructuresStructureVariablesGet(product, structure)



Get ADaM Variable List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product
final String structure = ADSL; // String | ADaM Data Structure Identifier

try {
    final response = api.mdrAdamProductDatastructuresStructureVariablesGet(product, structure);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVariablesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVariablesVarGet**
> AdamVariable mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var_)



Get ADaM Variable

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product
final String structure = ADSL; // String | ADaM Data Structure Identifier
final String var_ = SITEGRy; // String | ADaM Variable Identifier

try {
    final response = api.mdrAdamProductDatastructuresStructureVariablesVarGet(product, structure, var_);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVariablesVarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 
 **var_** | **String**| ADaM Variable Identifier | 

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVarsetsGet**
> AdamDatastructureVarsets mdrAdamProductDatastructuresStructureVarsetsGet(product, structure)



Get ADaM Variable Set List

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product
final String structure = ADSL; // String | ADaM Data Structure Identifier

try {
    final response = api.mdrAdamProductDatastructuresStructureVarsetsGet(product, structure);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVarsetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
> AdamVarset mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset)



Get ADaM Variable Set

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product
final String structure = ADSL; // String | ADaM Data Structure Identifier
final String varset = Identifier; // String | ADaM Variable Set Identifier

try {
    final response = api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product, structure, varset);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVarsetsVarsetGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 
 **structure** | **String**| ADaM Data Structure Identifier | 
 **varset** | **String**| ADaM Variable Set Identifier | 

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductGet**
> AdamProduct mdrAdamProductGet(product)



Get ADaM Product

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api = Openapi().getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
final String product = adamig-1-1; // String | CDISC Library Product

try {
    final response = api.mdrAdamProductGet(product);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| CDISC Library Product | 

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

