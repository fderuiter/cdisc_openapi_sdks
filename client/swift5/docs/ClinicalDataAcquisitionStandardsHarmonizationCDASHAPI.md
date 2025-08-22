# ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversionclassesclassdomainsget) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
[**mdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversionclassesclassfieldsfieldget) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**mdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversionclassesclassget) | **GET** /mdr/cdash/{version}/classes/{class} | 
[**mdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversionclassesget) | **GET** /mdr/cdash/{version}/classes | 
[**mdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversiondomainsdomainfieldsget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
[**mdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversiondomainsdomainget) | **GET** /mdr/cdash/{version}/domains/{domain} | 
[**mdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversiondomainsget) | **GET** /mdr/cdash/{version}/domains | 
[**mdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrcdashversionget) | **GET** /mdr/cdash/{version} | 
[**mdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrrootcdashclassesclassfieldsfieldget) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**mdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#mdrrootcdashdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 


# **mdrCdashVersionClassesClassDomainsGet**
```swift
    open class func mdrCdashVersionClassesClassDomainsGet(version: String, _class: String, completion: @escaping (_ data: CdashClassDomains?, _ error: Error?) -> Void)
```



Get CDASH Class Domain List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | CDASH Class Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionClassesClassDomainsGet(version: version, _class: _class) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | CDASH Class Identifier | 

### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesClassFieldsFieldGet**
```swift
    open class func mdrCdashVersionClassesClassFieldsFieldGet(version: String, _class: String, field: String, completion: @escaping (_ data: CdashClassField?, _ error: Error?) -> Void)
```



Get CDASH Class Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | CDASH Class Identifier
let field = "field_example" // String | CDASH Field Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionClassesClassFieldsFieldGet(version: version, _class: _class, field: field) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | CDASH Class Identifier | 
 **field** | **String** | CDASH Field Identifier | 

### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesClassGet**
```swift
    open class func mdrCdashVersionClassesClassGet(version: String, _class: String, completion: @escaping (_ data: CdashClass?, _ error: Error?) -> Void)
```



Get CDASH Class

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | CDASH Class Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionClassesClassGet(version: version, _class: _class) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 
 **_class** | **String** | CDASH Class Identifier | 

### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionClassesGet**
```swift
    open class func mdrCdashVersionClassesGet(version: String, completion: @escaping (_ data: CdashProductClasses?, _ error: Error?) -> Void)
```



Get CDASH Class List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionClassesGet(version: version) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainFieldsFieldGet**
```swift
    open class func mdrCdashVersionDomainsDomainFieldsFieldGet(version: String, domain: String, field: String, completion: @escaping (_ data: CdashDomainField?, _ error: Error?) -> Void)
```



Get CDASH Domain Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASH Domain Identifier
let field = "field_example" // String | CDASH Field Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionDomainsDomainFieldsFieldGet(version: version, domain: domain, field: field) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 
 **domain** | **String** | CDASH Domain Identifier | 
 **field** | **String** | CDASH Field Identifier | 

### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainFieldsGet**
```swift
    open class func mdrCdashVersionDomainsDomainFieldsGet(version: String, domain: String, completion: @escaping (_ data: CdashDomainFields?, _ error: Error?) -> Void)
```



Get CDASH Domain Field List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASH Domain Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionDomainsDomainFieldsGet(version: version, domain: domain) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 
 **domain** | **String** | CDASH Domain Identifier | 

### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsDomainGet**
```swift
    open class func mdrCdashVersionDomainsDomainGet(version: String, domain: String, completion: @escaping (_ data: CdashDomain?, _ error: Error?) -> Void)
```



Get CDASH Domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASH Domain Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionDomainsDomainGet(version: version, domain: domain) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 
 **domain** | **String** | CDASH Domain Identifier | 

### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionDomainsGet**
```swift
    open class func mdrCdashVersionDomainsGet(version: String, completion: @escaping (_ data: CdashProductDomains?, _ error: Error?) -> Void)
```



Get CDASH Domain List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionDomainsGet(version: version) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashVersionGet**
```swift
    open class func mdrCdashVersionGet(version: String, completion: @escaping (_ data: CdashProduct?, _ error: Error?) -> Void)
```



Get CDASH Product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrCdashVersionGet(version: version) { (response, error) in
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
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashClassesClassFieldsFieldGet**
```swift
    open class func mdrRootCdashClassesClassFieldsFieldGet(_class: String, field: String, completion: @escaping (_ data: RootCdashClassField?, _ error: Error?) -> Void)
```



Get Root CDASH Class Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let _class = "_class_example" // String | CDASH Class Identifier
let field = "field_example" // String | CDASH Field Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrRootCdashClassesClassFieldsFieldGet(_class: _class, field: field) { (response, error) in
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
 **_class** | **String** | CDASH Class Identifier | 
 **field** | **String** | CDASH Field Identifier | 

### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashDomainsDomainFieldsFieldGet**
```swift
    open class func mdrRootCdashDomainsDomainFieldsFieldGet(domain: String, field: String, completion: @escaping (_ data: RootCdashDomainField?, _ error: Error?) -> Void)
```



Get Root CDASH Domain Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let domain = "domain_example" // String | CDASH Domain Identifier
let field = "field_example" // String | CDASH Field Identifier

ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.mdrRootCdashDomainsDomainFieldsFieldGet(domain: domain, field: field) { (response, error) in
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
 **domain** | **String** | CDASH Domain Identifier | 
 **field** | **String** | CDASH Field Identifier | 

### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

