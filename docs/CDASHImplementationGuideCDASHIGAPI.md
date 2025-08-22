# CDASHImplementationGuideCDASHIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionclassesclassdomainsget) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
[**mdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionclassesclassget) | **GET** /mdr/cdashig/{version}/classes/{class} | 
[**mdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionclassesclassscenariosget) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**mdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionclassesget) | **GET** /mdr/cdashig/{version}/classes | 
[**mdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**mdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversiondomainsdomainfieldsget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**mdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversiondomainsdomainget) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
[**mdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversiondomainsget) | **GET** /mdr/cdashig/{version}/domains | 
[**mdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionget) | **GET** /mdr/cdashig/{version} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionscenariosdomainscenariofieldsfieldget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionscenariosdomainscenariofieldsget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**mdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionscenariosdomainscenarioget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**mdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrcdashigversionscenariosget) | **GET** /mdr/cdashig/{version}/scenarios | 
[**mdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrrootcdashigdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#mdrrootcdashigscenariosdomainscenariofieldsfieldget) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 


# **mdrCdashigVersionClassesClassDomainsGet**
```swift
    open class func mdrCdashigVersionClassesClassDomainsGet(version: String, _class: String, completion: @escaping (_ data: CdashigClassDomains?, _ error: Error?) -> Void)
```



Get CDASHIG Class Domain List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | CDASHIG Class Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionClassesClassDomainsGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | CDASHIG Class Identifier | 

### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesClassGet**
```swift
    open class func mdrCdashigVersionClassesClassGet(version: String, _class: String, completion: @escaping (_ data: CdashigClass?, _ error: Error?) -> Void)
```



Get CDASHIG Class

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | CDASHIG Class Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionClassesClassGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | CDASHIG Class Identifier | 

### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesClassScenariosGet**
```swift
    open class func mdrCdashigVersionClassesClassScenariosGet(version: String, _class: String, completion: @escaping (_ data: CdashigClassScenarios?, _ error: Error?) -> Void)
```



Get CDASHIG Class Scenario List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | CDASHIG Class Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionClassesClassScenariosGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | CDASHIG Class Identifier | 

### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionClassesGet**
```swift
    open class func mdrCdashigVersionClassesGet(version: String, completion: @escaping (_ data: CdashigProductClasses?, _ error: Error?) -> Void)
```



Get CDASHIG Class List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionClassesGet(version: version) { (response, error) in
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

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainFieldsFieldGet**
```swift
    open class func mdrCdashigVersionDomainsDomainFieldsFieldGet(version: String, domain: String, field: String, completion: @escaping (_ data: CdashigDomainField?, _ error: Error?) -> Void)
```



Get CDASHIG Domain Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASHIG Domain Identifier
let field = "field_example" // String | CDASHIG Field Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionDomainsDomainFieldsFieldGet(version: version, domain: domain, field: field) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 
 **field** | **String** | CDASHIG Field Identifier | 

### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainFieldsGet**
```swift
    open class func mdrCdashigVersionDomainsDomainFieldsGet(version: String, domain: String, completion: @escaping (_ data: CdashigDomainFields?, _ error: Error?) -> Void)
```



Get CDASHIG Domain Field List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASHIG Domain Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionDomainsDomainFieldsGet(version: version, domain: domain) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 

### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsDomainGet**
```swift
    open class func mdrCdashigVersionDomainsDomainGet(version: String, domain: String, completion: @escaping (_ data: CdashigDomain?, _ error: Error?) -> Void)
```



Get CDASHIG Domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASHIG Domain Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionDomainsDomainGet(version: version, domain: domain) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 

### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionDomainsGet**
```swift
    open class func mdrCdashigVersionDomainsGet(version: String, completion: @escaping (_ data: CdashigProductDomains?, _ error: Error?) -> Void)
```



Get CDASHIG Domain List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionDomainsGet(version: version) { (response, error) in
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

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionGet**
```swift
    open class func mdrCdashigVersionGet(version: String, completion: @escaping (_ data: CdashigProduct?, _ error: Error?) -> Void)
```



Get CDASHIG Product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionGet(version: version) { (response, error) in
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

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**
```swift
    open class func mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version: String, domain: String, scenario: String, field: String, completion: @escaping (_ data: CdashigScenarioField?, _ error: Error?) -> Void)
```



Get CDASHIG Scenario Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASHIG Domain Identifier
let scenario = "scenario_example" // String | CDASHIG Scenario Identifier
let field = "field_example" // String | CDASHIG Field Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(version: version, domain: domain, scenario: scenario, field: field) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 
 **scenario** | **String** | CDASHIG Scenario Identifier | 
 **field** | **String** | CDASHIG Field Identifier | 

### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioFieldsGet**
```swift
    open class func mdrCdashigVersionScenariosDomainScenarioFieldsGet(version: String, domain: String, scenario: String, completion: @escaping (_ data: CdashigScenarioFields?, _ error: Error?) -> Void)
```



Get CDASHIG Scenario Field List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASHIG Domain Identifier
let scenario = "scenario_example" // String | CDASHIG Scenario Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionScenariosDomainScenarioFieldsGet(version: version, domain: domain, scenario: scenario) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 
 **scenario** | **String** | CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosDomainScenarioGet**
```swift
    open class func mdrCdashigVersionScenariosDomainScenarioGet(version: String, domain: String, scenario: String, completion: @escaping (_ data: CdashigScenario?, _ error: Error?) -> Void)
```



Get CDASHIG Scenario

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let domain = "domain_example" // String | CDASHIG Domain Identifier
let scenario = "scenario_example" // String | CDASHIG Scenario Identifier

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionScenariosDomainScenarioGet(version: version, domain: domain, scenario: scenario) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 
 **scenario** | **String** | CDASHIG Scenario Identifier | 

### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrCdashigVersionScenariosGet**
```swift
    open class func mdrCdashigVersionScenariosGet(version: String, completion: @escaping (_ data: CdashigProductScenarios?, _ error: Error?) -> Void)
```



Get CDASHIG Scenario List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

CDASHImplementationGuideCDASHIGAPI.mdrCdashigVersionScenariosGet(version: version) { (response, error) in
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

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashigDomainsDomainFieldsFieldGet**
```swift
    open class func mdrRootCdashigDomainsDomainFieldsFieldGet(domain: String, field: String, completion: @escaping (_ data: RootCdashigDomainField?, _ error: Error?) -> Void)
```



Get Root CDASHIG Domain Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let domain = "domain_example" // String | CDASHIG Domain Identifier
let field = "field_example" // String | CDASHIG Field Identifier

CDASHImplementationGuideCDASHIGAPI.mdrRootCdashigDomainsDomainFieldsFieldGet(domain: domain, field: field) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 
 **field** | **String** | CDASHIG Field Identifier | 

### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**
```swift
    open class func mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain: String, scenario: String, field: String, completion: @escaping (_ data: RootCdashigScenarioField?, _ error: Error?) -> Void)
```



Get Root CDASHIG Scenario Field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let domain = "domain_example" // String | CDASHIG Domain Identifier
let scenario = "scenario_example" // String | CDASHIG Scenario Identifier
let field = "field_example" // String | CDASHIG Field Identifier

CDASHImplementationGuideCDASHIGAPI.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(domain: domain, scenario: scenario, field: field) { (response, error) in
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
 **domain** | **String** | CDASHIG Domain Identifier | 
 **scenario** | **String** | CDASHIG Scenario Identifier | 
 **field** | **String** | CDASHIG Field Identifier | 

### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

