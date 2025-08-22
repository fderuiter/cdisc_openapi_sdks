# MeasuresAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrQrsMeasureVersionGet**](MeasuresAPI.md#mdrqrsmeasureversionget) | **GET** /mdr/qrs/{measure}/{version} | 
[**mdrQrsMeasureVersionItemsGet**](MeasuresAPI.md#mdrqrsmeasureversionitemsget) | **GET** /mdr/qrs/{measure}/{version}/items | 
[**mdrQrsMeasureVersionItemsItemGet**](MeasuresAPI.md#mdrqrsmeasureversionitemsitemget) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
[**mdrQrsMeasureVersionResponsegroupsGet**](MeasuresAPI.md#mdrqrsmeasureversionresponsegroupsget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
[**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresAPI.md#mdrqrsmeasureversionresponsegroupsresponsegroupget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 


# **mdrQrsMeasureVersionGet**
```swift
    open class func mdrQrsMeasureVersionGet(measure: String, version: String, completion: @escaping (_ data: QrsProduct?, _ error: Error?) -> Void)
```



Get QRS Product

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let measure = "measure_example" // String | QRS Measure Identifier
let version = "version_example" // String | CDISC Library Product Version

MeasuresAPI.mdrQrsMeasureVersionGet(measure: measure, version: version) { (response, error) in
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
 **measure** | **String** | QRS Measure Identifier | 
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionItemsGet**
```swift
    open class func mdrQrsMeasureVersionItemsGet(measure: String, version: String, completion: @escaping (_ data: QrsItems?, _ error: Error?) -> Void)
```



Get QRS Item List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let measure = "measure_example" // String | QRS Measure Identifier
let version = "version_example" // String | CDISC Library Product Version

MeasuresAPI.mdrQrsMeasureVersionItemsGet(measure: measure, version: version) { (response, error) in
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
 **measure** | **String** | QRS Measure Identifier | 
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionItemsItemGet**
```swift
    open class func mdrQrsMeasureVersionItemsItemGet(measure: String, version: String, item: String, completion: @escaping (_ data: QrsItem?, _ error: Error?) -> Void)
```



Get QRS Item

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let measure = "measure_example" // String | QRS Measure Identifier
let version = "version_example" // String | CDISC Library Product Version
let item = "item_example" // String | QRS Measure Item Identifier

MeasuresAPI.mdrQrsMeasureVersionItemsItemGet(measure: measure, version: version, item: item) { (response, error) in
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
 **measure** | **String** | QRS Measure Identifier | 
 **version** | **String** | CDISC Library Product Version | 
 **item** | **String** | QRS Measure Item Identifier | 

### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionResponsegroupsGet**
```swift
    open class func mdrQrsMeasureVersionResponsegroupsGet(measure: String, version: String, completion: @escaping (_ data: QrsResponsegroups?, _ error: Error?) -> Void)
```



Get QRS Response Group List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let measure = "measure_example" // String | QRS Measure Identifier
let version = "version_example" // String | CDISC Library Product Version

MeasuresAPI.mdrQrsMeasureVersionResponsegroupsGet(measure: measure, version: version) { (response, error) in
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
 **measure** | **String** | QRS Measure Identifier | 
 **version** | **String** | CDISC Library Product Version | 

### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrQrsMeasureVersionResponsegroupsResponsegroupGet**
```swift
    open class func mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure: String, version: String, responsegroup: String, completion: @escaping (_ data: QrsResponsegroup?, _ error: Error?) -> Void)
```



Get QRS Response Group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let measure = "measure_example" // String | QRS Measure Identifier
let version = "version_example" // String | CDISC Library Product Version
let responsegroup = "responsegroup_example" // String | QRS Measure's Response Group Identifier

MeasuresAPI.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(measure: measure, version: version, responsegroup: responsegroup) { (response, error) in
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
 **measure** | **String** | QRS Measure Identifier | 
 **version** | **String** | CDISC Library Product Version | 
 **responsegroup** | **String** | QRS Measure&#39;s Response Group Identifier | 

### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

