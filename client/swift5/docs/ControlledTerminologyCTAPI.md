# ControlledTerminologyCTAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCtPackagesGet**](ControlledTerminologyCTAPI.md#mdrctpackagesget) | **GET** /mdr/ct/packages | 
[**mdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTAPI.md#mdrctpackagespackagecodelistscodelistget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**mdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTAPI.md#mdrctpackagespackagecodelistscodelisttermsget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTAPI.md#mdrctpackagespackagecodelistscodelisttermstermget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**mdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTAPI.md#mdrctpackagespackagecodelistsget) | **GET** /mdr/ct/packages/{package}/codelists | 
[**mdrCtPackagesProductGet**](ControlledTerminologyCTAPI.md#mdrctpackagesproductget) | **GET** /mdr/ct/packages/{product} | 
[**mdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTAPI.md#mdrrootctproductgroupcodelistscodelistget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTAPI.md#mdrrootctproductgroupcodelistscodelisttermstermget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 


# **mdrCtPackagesGet**
```swift
    open class func mdrCtPackagesGet(completion: @escaping (_ data: CtPackages?, _ error: Error?) -> Void)
```



Get CDISC Library CT Package List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ControlledTerminologyCTAPI.mdrCtPackagesGet() { (response, error) in
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
```swift
    open class func mdrCtPackagesPackageCodelistsCodelistGet(package: String, codelist: String, completion: @escaping (_ data: CtCodelist?, _ error: Error?) -> Void)
```



Get CDISC Library CT Package Codelist

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let package = "package_example" // String | CT Package Identifier
let codelist = "codelist_example" // String | CT Codelist Identifier

ControlledTerminologyCTAPI.mdrCtPackagesPackageCodelistsCodelistGet(package: package, codelist: codelist) { (response, error) in
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
 **package** | **String** | CT Package Identifier | 
 **codelist** | **String** | CT Codelist Identifier | 

### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsGet**
```swift
    open class func mdrCtPackagesPackageCodelistsCodelistTermsGet(package: String, codelist: String, completion: @escaping (_ data: CtCodelistTerms?, _ error: Error?) -> Void)
```



Get CDISC Library CT Package Codelist Term List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let package = "package_example" // String | CT Package Identifier
let codelist = "codelist_example" // String | CT Codelist Identifier

ControlledTerminologyCTAPI.mdrCtPackagesPackageCodelistsCodelistTermsGet(package: package, codelist: codelist) { (response, error) in
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
 **package** | **String** | CT Package Identifier | 
 **codelist** | **String** | CT Codelist Identifier | 

### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsCodelistTermsTermGet**
```swift
    open class func mdrCtPackagesPackageCodelistsCodelistTermsTermGet(package: String, codelist: String, term: String, completion: @escaping (_ data: CtTerm?, _ error: Error?) -> Void)
```



Get CDISC Library CT Package Codelist Term

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let package = "package_example" // String | CT Package Product Identifier
let codelist = "codelist_example" // String | CT Codelist Identifier
let term = "term_example" // String | CT Codelist Term Identifier

ControlledTerminologyCTAPI.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(package: package, codelist: codelist, term: term) { (response, error) in
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
 **package** | **String** | CT Package Product Identifier | 
 **codelist** | **String** | CT Codelist Identifier | 
 **term** | **String** | CT Codelist Term Identifier | 

### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesPackageCodelistsGet**
```swift
    open class func mdrCtPackagesPackageCodelistsGet(package: String, completion: @escaping (_ data: CtPackageCodelists?, _ error: Error?) -> Void)
```



Get CDISC Library CT Package Codelist List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let package = "package_example" // String | CT Package Identifier

ControlledTerminologyCTAPI.mdrCtPackagesPackageCodelistsGet(package: package) { (response, error) in
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
 **package** | **String** | CT Package Identifier | 

### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCtPackagesProductGet**
```swift
    open class func mdrCtPackagesProductGet(product: String, completion: @escaping (_ data: CtPackage?, _ error: Error?) -> Void)
```



Get CDISC Library CT Package

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let product = "product_example" // String | CT Package Product Identifier

ControlledTerminologyCTAPI.mdrCtPackagesProductGet(product: product) { (response, error) in
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
 **product** | **String** | CT Package Product Identifier | 

### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistGet**
```swift
    open class func mdrRootCtProductGroupCodelistsCodelistGet(productGroup: String, codelist: String, completion: @escaping (_ data: RootCtCodelist?, _ error: Error?) -> Void)
```



Get CDISC Library Root CT Codelist

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productGroup = "productGroup_example" // String | CT Product Group Identifier
let codelist = "codelist_example" // String | CT Codelist Identifier

ControlledTerminologyCTAPI.mdrRootCtProductGroupCodelistsCodelistGet(productGroup: productGroup, codelist: codelist) { (response, error) in
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
 **productGroup** | **String** | CT Product Group Identifier | 
 **codelist** | **String** | CT Codelist Identifier | 

### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCtProductGroupCodelistsCodelistTermsTermGet**
```swift
    open class func mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup: String, codelist: String, term: String, completion: @escaping (_ data: RootCtTerm?, _ error: Error?) -> Void)
```



Get CDISC Library Root CT Term

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productGroup = "productGroup_example" // String | CT Product Group Identifier
let codelist = "codelist_example" // String | CT Codelist Identifier
let term = "term_example" // String | CT Codelist Term Identifier

ControlledTerminologyCTAPI.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(productGroup: productGroup, codelist: codelist, term: term) { (response, error) in
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
 **productGroup** | **String** | CT Product Group Identifier | 
 **codelist** | **String** | CT Codelist Identifier | 
 **term** | **String** | CT Codelist Term Identifier | 

### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

