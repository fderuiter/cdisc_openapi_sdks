# AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAdamProductDatastructuresGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductdatastructuresget) | **GET** /mdr/adam/{product}/datastructures | 
[**mdrAdamProductDatastructuresStructureGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductdatastructuresstructureget) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
[**mdrAdamProductDatastructuresStructureVariablesGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductdatastructuresstructurevariablesget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
[**mdrAdamProductDatastructuresStructureVariablesVarGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductdatastructuresstructurevariablesvarget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
[**mdrAdamProductDatastructuresStructureVarsetsGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductdatastructuresstructurevarsetsget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
[**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductdatastructuresstructurevarsetsvarsetget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
[**mdrAdamProductGet**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.md#mdradamproductget) | **GET** /mdr/adam/{product} | 


# **mdrAdamProductDatastructuresGet**
```swift
    open class func mdrAdamProductDatastructuresGet(product: String, completion: @escaping (_ data: AdamProductDatastructures?, _ error: Error?) -> Void)
```



Get ADaM Data Structure List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductDatastructuresGet(product: product) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 

### Return type

[**AdamProductDatastructures**](AdamProductDatastructures.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureGet**
```swift
    open class func mdrAdamProductDatastructuresStructureGet(product: String, structure: String, completion: @escaping (_ data: AdamDatastructure?, _ error: Error?) -> Void)
```



Get ADaM Data Structure

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product
let structure = "structure_example" // String | Data structure Identifier

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductDatastructuresStructureGet(product: product, structure: structure) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 
 **structure** | **String** | Data structure Identifier | 

### Return type

[**AdamDatastructure**](AdamDatastructure.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVariablesGet**
```swift
    open class func mdrAdamProductDatastructuresStructureVariablesGet(product: String, structure: String, completion: @escaping (_ data: AdamDatastructureVariables?, _ error: Error?) -> Void)
```



Get ADaM Variable List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product
let structure = "structure_example" // String | ADaM Data Structure Identifier

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductDatastructuresStructureVariablesGet(product: product, structure: structure) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 
 **structure** | **String** | ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVariables**](AdamDatastructureVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVariablesVarGet**
```swift
    open class func mdrAdamProductDatastructuresStructureVariablesVarGet(product: String, structure: String, _var: String, completion: @escaping (_ data: AdamVariable?, _ error: Error?) -> Void)
```



Get ADaM Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product
let structure = "structure_example" // String | ADaM Data Structure Identifier
let _var = "_var_example" // String | ADaM Variable Identifier

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductDatastructuresStructureVariablesVarGet(product: product, structure: structure, _var: _var) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 
 **structure** | **String** | ADaM Data Structure Identifier | 
 **_var** | **String** | ADaM Variable Identifier | 

### Return type

[**AdamVariable**](AdamVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVarsetsGet**
```swift
    open class func mdrAdamProductDatastructuresStructureVarsetsGet(product: String, structure: String, completion: @escaping (_ data: AdamDatastructureVarsets?, _ error: Error?) -> Void)
```



Get ADaM Variable Set List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product
let structure = "structure_example" // String | ADaM Data Structure Identifier

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductDatastructuresStructureVarsetsGet(product: product, structure: structure) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 
 **structure** | **String** | ADaM Data Structure Identifier | 

### Return type

[**AdamDatastructureVarsets**](AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductDatastructuresStructureVarsetsVarsetGet**
```swift
    open class func mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product: String, structure: String, varset: String, completion: @escaping (_ data: AdamVarset?, _ error: Error?) -> Void)
```



Get ADaM Variable Set

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product
let structure = "structure_example" // String | ADaM Data Structure Identifier
let varset = "varset_example" // String | ADaM Variable Set Identifier

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(product: product, structure: structure, varset: varset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 
 **structure** | **String** | ADaM Data Structure Identifier | 
 **varset** | **String** | ADaM Variable Set Identifier | 

### Return type

[**AdamVarset**](AdamVarset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrAdamProductGet**
```swift
    open class func mdrAdamProductGet(product: String, completion: @escaping (_ data: AdamProduct?, _ error: Error?) -> Void)
```



Get ADaM Product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CDISC Library Product

AnalysisDataModelAndImplementationGuideADaMAndADaMIGAPI.mdrAdamProductGet(product: product) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String** | CDISC Library Product | 

### Return type

[**AdamProduct**](AdamProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

