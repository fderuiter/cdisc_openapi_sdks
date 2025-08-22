# ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API

All URIs are relative to *https://library.cdisc.org/api*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**mdr_adam_product_datastructures_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_datastructures_get) | **Get** /mdr/adam/{product}/datastructures | 
[**mdr_adam_product_datastructures_structure_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_datastructures_structure_get) | **Get** /mdr/adam/{product}/datastructures/{structure} | 
[**mdr_adam_product_datastructures_structure_variables_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_datastructures_structure_variables_get) | **Get** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdr_adam_product_datastructures_structure_variables_var_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_datastructures_structure_variables_var_get) | **Get** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdr_adam_product_datastructures_structure_varsets_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_datastructures_structure_varsets_get) | **Get** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdr_adam_product_datastructures_structure_varsets_varset_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_datastructures_structure_varsets_varset_get) | **Get** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdr_adam_product_get**](ANALYSISDATAMODELANDIMPLEMENTATIONGUIDEADAMANDADAMIG_API.md#mdr_adam_product_get) | **Get** /mdr/adam/{product} | 


# **mdr_adam_product_datastructures_get**
> mdr_adam_product_datastructures_get (product: STRING_32 ): detachable ADAM_PRODUCT_DATASTRUCTURES




Get ADaM Data Structure List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]

### Return type

[**ADAM_PRODUCT_DATASTRUCTURES**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_get**
> mdr_adam_product_datastructures_structure_get (product: STRING_32 ; structure: STRING_32 ): detachable ADAM_DATASTRUCTURE




Get ADaM Data Structure


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]
 **structure** | **STRING_32**| Data structure Identifier | [default to null]

### Return type

[**ADAM_DATASTRUCTURE**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_variables_get**
> mdr_adam_product_datastructures_structure_variables_get (product: STRING_32 ; structure: STRING_32 ): detachable ADAM_DATASTRUCTURE_VARIABLES




Get ADaM Variable List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]
 **structure** | **STRING_32**| ADaM Data Structure Identifier | [default to null]

### Return type

[**ADAM_DATASTRUCTURE_VARIABLES**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_variables_var_get**
> mdr_adam_product_datastructures_structure_variables_var_get (product: STRING_32 ; structure: STRING_32 ; var: STRING_32 ): detachable ADAM_VARIABLE




Get ADaM Variable


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]
 **structure** | **STRING_32**| ADaM Data Structure Identifier | [default to null]
 **var** | **STRING_32**| ADaM Variable Identifier | [default to null]

### Return type

[**ADAM_VARIABLE**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_varsets_get**
> mdr_adam_product_datastructures_structure_varsets_get (product: STRING_32 ; structure: STRING_32 ): detachable ADAM_DATASTRUCTURE_VARSETS




Get ADaM Variable Set List


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]
 **structure** | **STRING_32**| ADaM Data Structure Identifier | [default to null]

### Return type

[**ADAM_DATASTRUCTURE_VARSETS**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_datastructures_structure_varsets_varset_get**
> mdr_adam_product_datastructures_structure_varsets_varset_get (product: STRING_32 ; structure: STRING_32 ; varset: STRING_32 ): detachable ADAM_VARSET




Get ADaM Variable Set


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]
 **structure** | **STRING_32**| ADaM Data Structure Identifier | [default to null]
 **varset** | **STRING_32**| ADaM Variable Set Identifier | [default to null]

### Return type

[**ADAM_VARSET**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdr_adam_product_get**
> mdr_adam_product_get (product: STRING_32 ): detachable ADAM_PRODUCT




Get ADaM Product


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **STRING_32**| CDISC Library Product | [default to null]

### Return type

[**ADAM_PRODUCT**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

