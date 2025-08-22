# SENDImplementationGuideSENDIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrRootSendigDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGAPI.md#mdrrootsendigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionClassesClassDatasetsGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversionclassesclassdatasetsget) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
[**mdrSendigVersionClassesClassGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversionclassesclassget) | **GET** /mdr/sendig/{version}/classes/{class} | 
[**mdrSendigVersionClassesGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversionclassesget) | **GET** /mdr/sendig/{version}/classes | 
[**mdrSendigVersionDatasetsDatasetGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversiondatasetsdatasetget) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
[**mdrSendigVersionDatasetsDatasetVariablesGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversiondatasetsdatasetvariablesget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
[**mdrSendigVersionDatasetsDatasetVariablesVarGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
[**mdrSendigVersionDatasetsGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversiondatasetsget) | **GET** /mdr/sendig/{version}/datasets | 
[**mdrSendigVersionGet**](SENDImplementationGuideSENDIGAPI.md#mdrsendigversionget) | **GET** /mdr/sendig/{version} | 


# **mdrRootSendigDatasetsDatasetVariablesVarGet**
```swift
    open class func mdrRootSendigDatasetsDatasetVariablesVarGet(dataset: String, _var: String, completion: @escaping (_ data: RootSendigDatasetVariable?, _ error: Error?) -> Void)
```



Get Root SENDIG Dataset Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dataset = "dataset_example" // String | SENDIG Dataset Identifier
let _var = "_var_example" // String | SENDIG Variable Identifier

SENDImplementationGuideSENDIGAPI.mdrRootSendigDatasetsDatasetVariablesVarGet(dataset: dataset, _var: _var) { (response, error) in
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
 **dataset** | **String** | SENDIG Dataset Identifier | 
 **_var** | **String** | SENDIG Variable Identifier | 

### Return type

[**RootSendigDatasetVariable**](RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesClassDatasetsGet**
```swift
    open class func mdrSendigVersionClassesClassDatasetsGet(version: String, _class: String, completion: @escaping (_ data: SendigClassDatasets?, _ error: Error?) -> Void)
```



Get SENDIG Class Dataset List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SENDIG Class Identifier

SENDImplementationGuideSENDIGAPI.mdrSendigVersionClassesClassDatasetsGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | SENDIG Class Identifier | 

### Return type

[**SendigClassDatasets**](SendigClassDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesClassGet**
```swift
    open class func mdrSendigVersionClassesClassGet(version: String, _class: String, completion: @escaping (_ data: SendigClass?, _ error: Error?) -> Void)
```



Get SENDIG Class

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let _class = "_class_example" // String | SENDIG Class Identifier

SENDImplementationGuideSENDIGAPI.mdrSendigVersionClassesClassGet(version: version, _class: _class) { (response, error) in
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
 **_class** | **String** | SENDIG Class Identifier | 

### Return type

[**SendigClass**](SendigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionClassesGet**
```swift
    open class func mdrSendigVersionClassesGet(version: String, completion: @escaping (_ data: SendigClasses?, _ error: Error?) -> Void)
```



Get SENDIG Class List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

SENDImplementationGuideSENDIGAPI.mdrSendigVersionClassesGet(version: version) { (response, error) in
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

[**SendigClasses**](SendigClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetGet**
```swift
    open class func mdrSendigVersionDatasetsDatasetGet(version: String, dataset: String, completion: @escaping (_ data: SendigDataset?, _ error: Error?) -> Void)
```



Get SENDIG Dataset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SENDIG Class Identifier

SENDImplementationGuideSENDIGAPI.mdrSendigVersionDatasetsDatasetGet(version: version, dataset: dataset) { (response, error) in
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
 **dataset** | **String** | SENDIG Class Identifier | 

### Return type

[**SendigDataset**](SendigDataset.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetVariablesGet**
```swift
    open class func mdrSendigVersionDatasetsDatasetVariablesGet(version: String, dataset: String, completion: @escaping (_ data: SendigDatasetVariables?, _ error: Error?) -> Void)
```



Get SENDIG Dataset Variable List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SENDIG Class Identifier

SENDImplementationGuideSENDIGAPI.mdrSendigVersionDatasetsDatasetVariablesGet(version: version, dataset: dataset) { (response, error) in
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
 **dataset** | **String** | SENDIG Class Identifier | 

### Return type

[**SendigDatasetVariables**](SendigDatasetVariables.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsDatasetVariablesVarGet**
```swift
    open class func mdrSendigVersionDatasetsDatasetVariablesVarGet(version: String, dataset: String, _var: String, completion: @escaping (_ data: SendigDatasetVariable?, _ error: Error?) -> Void)
```



Get SENDIG Dataset Variable

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version
let dataset = "dataset_example" // String | SENDIG Class Identifier
let _var = "_var_example" // String | SENDIG Variable Identifier

SENDImplementationGuideSENDIGAPI.mdrSendigVersionDatasetsDatasetVariablesVarGet(version: version, dataset: dataset, _var: _var) { (response, error) in
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
 **dataset** | **String** | SENDIG Class Identifier | 
 **_var** | **String** | SENDIG Variable Identifier | 

### Return type

[**SendigDatasetVariable**](SendigDatasetVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionDatasetsGet**
```swift
    open class func mdrSendigVersionDatasetsGet(version: String, completion: @escaping (_ data: SendigDatasets?, _ error: Error?) -> Void)
```



Get SENDIG Dataset List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

SENDImplementationGuideSENDIGAPI.mdrSendigVersionDatasetsGet(version: version) { (response, error) in
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

[**SendigDatasets**](SendigDatasets.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrSendigVersionGet**
```swift
    open class func mdrSendigVersionGet(version: String, completion: @escaping (_ data: SendigProduct?, _ error: Error?) -> Void)
```



Get SENDIG product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = "version_example" // String | CDISC Library Product Version

SENDImplementationGuideSENDIGAPI.mdrSendigVersionGet(version: version) { (response, error) in
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

[**SendigProduct**](SendigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

