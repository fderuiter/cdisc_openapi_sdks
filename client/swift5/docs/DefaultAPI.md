# DefaultAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdrAboutGet**](DefaultAPI.md#mdraboutget) | **GET** /mdr/about | 
[**mdrLastupdatedGet**](DefaultAPI.md#mdrlastupdatedget) | **GET** /mdr/lastupdated | 
[**mdrProductsDataAnalysisGet**](DefaultAPI.md#mdrproductsdataanalysisget) | **GET** /mdr/products/DataAnalysis | 
[**mdrProductsDataCollectionGet**](DefaultAPI.md#mdrproductsdatacollectionget) | **GET** /mdr/products/DataCollection | 
[**mdrProductsDataTabulationGet**](DefaultAPI.md#mdrproductsdatatabulationget) | **GET** /mdr/products/DataTabulation | 
[**mdrProductsGet**](DefaultAPI.md#mdrproductsget) | **GET** /mdr/products | 
[**mdrProductsMeasuresGet**](DefaultAPI.md#mdrproductsmeasuresget) | **GET** /mdr/products/Measures | 
[**mdrProductsTerminologyGet**](DefaultAPI.md#mdrproductsterminologyget) | **GET** /mdr/products/Terminology | 


# **mdrAboutGet**
```swift
    open class func mdrAboutGet(completion: @escaping (_ data: About?, _ error: Error?) -> Void)
```



Get Information About CDISC Library

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrAboutGet() { (response, error) in
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

[**About**](About.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrLastupdatedGet**
```swift
    open class func mdrLastupdatedGet(completion: @escaping (_ data: Lastupdated?, _ error: Error?) -> Void)
```



Get CDISC Library Last Updated

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrLastupdatedGet() { (response, error) in
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

[**Lastupdated**](Lastupdated.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataAnalysisGet**
```swift
    open class func mdrProductsDataAnalysisGet(completion: @escaping (_ data: ProductgroupDataAnalysis?, _ error: Error?) -> Void)
```



Get CDISC Library Product Group Data Analysis

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrProductsDataAnalysisGet() { (response, error) in
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

[**ProductgroupDataAnalysis**](ProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataCollectionGet**
```swift
    open class func mdrProductsDataCollectionGet(completion: @escaping (_ data: ProductgroupDataCollection?, _ error: Error?) -> Void)
```



Get CDISC Library Product Group Data Collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrProductsDataCollectionGet() { (response, error) in
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

[**ProductgroupDataCollection**](ProductgroupDataCollection.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsDataTabulationGet**
```swift
    open class func mdrProductsDataTabulationGet(completion: @escaping (_ data: ProductgroupDataTabulation?, _ error: Error?) -> Void)
```



Get CDISC Library Product Group Data Tabulation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrProductsDataTabulationGet() { (response, error) in
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

[**ProductgroupDataTabulation**](ProductgroupDataTabulation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsGet**
```swift
    open class func mdrProductsGet(completion: @escaping (_ data: Products?, _ error: Error?) -> Void)
```



Get CDISC Library Products

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrProductsGet() { (response, error) in
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

[**Products**](Products.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsMeasuresGet**
```swift
    open class func mdrProductsMeasuresGet(completion: @escaping (_ data: ProductgroupQrs?, _ error: Error?) -> Void)
```



Get CDISC Library Product Group QRS

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrProductsMeasuresGet() { (response, error) in
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

[**ProductgroupQrs**](ProductgroupQrs.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mdrProductsTerminologyGet**
```swift
    open class func mdrProductsTerminologyGet(completion: @escaping (_ data: ProductgroupTerminology?, _ error: Error?) -> Void)
```



Get CDISC Library Product Group Terminology

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.mdrProductsTerminologyGet() { (response, error) in
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

[**ProductgroupTerminology**](ProductgroupTerminology.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

