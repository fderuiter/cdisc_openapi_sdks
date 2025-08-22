# \MeasuresAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrQrsMeasureVersionGet**](MeasuresAPI.md#MdrQrsMeasureVersionGet) | **Get** /mdr/qrs/{measure}/{version} | 
[**MdrQrsMeasureVersionItemsGet**](MeasuresAPI.md#MdrQrsMeasureVersionItemsGet) | **Get** /mdr/qrs/{measure}/{version}/items | 
[**MdrQrsMeasureVersionItemsItemGet**](MeasuresAPI.md#MdrQrsMeasureVersionItemsItemGet) | **Get** /mdr/qrs/{measure}/{version}/items/{item} | 
[**MdrQrsMeasureVersionResponsegroupsGet**](MeasuresAPI.md#MdrQrsMeasureVersionResponsegroupsGet) | **Get** /mdr/qrs/{measure}/{version}/responsegroups | 
[**MdrQrsMeasureVersionResponsegroupsResponsegroupGet**](MeasuresAPI.md#MdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **Get** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 



## MdrQrsMeasureVersionGet

> QrsProduct MdrQrsMeasureVersionGet(ctx, measure, version).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	measure := "AIMS1" // string | QRS Measure Identifier
	version := "1-0" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MeasuresAPI.MdrQrsMeasureVersionGet(context.Background(), measure, version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MeasuresAPI.MdrQrsMeasureVersionGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrQrsMeasureVersionGet`: QrsProduct
	fmt.Fprintf(os.Stdout, "Response from `MeasuresAPI.MdrQrsMeasureVersionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**measure** | **string** | QRS Measure Identifier | 
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrQrsMeasureVersionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**QrsProduct**](QrsProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrQrsMeasureVersionItemsGet

> QrsItems MdrQrsMeasureVersionItemsGet(ctx, measure, version).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	measure := "AIMS1" // string | QRS Measure Identifier
	version := "1-0" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MeasuresAPI.MdrQrsMeasureVersionItemsGet(context.Background(), measure, version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MeasuresAPI.MdrQrsMeasureVersionItemsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrQrsMeasureVersionItemsGet`: QrsItems
	fmt.Fprintf(os.Stdout, "Response from `MeasuresAPI.MdrQrsMeasureVersionItemsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**measure** | **string** | QRS Measure Identifier | 
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrQrsMeasureVersionItemsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**QrsItems**](QrsItems.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrQrsMeasureVersionItemsItemGet

> QrsItem MdrQrsMeasureVersionItemsItemGet(ctx, measure, version, item).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	measure := "AIMS1" // string | QRS Measure Identifier
	version := "1-0" // string | CDISC Library Product Version
	item := "AIMS01.001" // string | QRS Measure Item Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MeasuresAPI.MdrQrsMeasureVersionItemsItemGet(context.Background(), measure, version, item).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MeasuresAPI.MdrQrsMeasureVersionItemsItemGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrQrsMeasureVersionItemsItemGet`: QrsItem
	fmt.Fprintf(os.Stdout, "Response from `MeasuresAPI.MdrQrsMeasureVersionItemsItemGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**measure** | **string** | QRS Measure Identifier | 
**version** | **string** | CDISC Library Product Version | 
**item** | **string** | QRS Measure Item Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrQrsMeasureVersionItemsItemGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**QrsItem**](QrsItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrQrsMeasureVersionResponsegroupsGet

> QrsResponsegroups MdrQrsMeasureVersionResponsegroupsGet(ctx, measure, version).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	measure := "AIMS1" // string | QRS Measure Identifier
	version := "1-0" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MeasuresAPI.MdrQrsMeasureVersionResponsegroupsGet(context.Background(), measure, version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MeasuresAPI.MdrQrsMeasureVersionResponsegroupsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrQrsMeasureVersionResponsegroupsGet`: QrsResponsegroups
	fmt.Fprintf(os.Stdout, "Response from `MeasuresAPI.MdrQrsMeasureVersionResponsegroupsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**measure** | **string** | QRS Measure Identifier | 
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrQrsMeasureVersionResponsegroupsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**QrsResponsegroups**](QrsResponsegroups.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrQrsMeasureVersionResponsegroupsResponsegroupGet

> QrsResponsegroup MdrQrsMeasureVersionResponsegroupsResponsegroupGet(ctx, measure, version, responsegroup).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	measure := "AIMS1" // string | QRS Measure Identifier
	version := "1-0" // string | CDISC Library Product Version
	responsegroup := "AIMS1.11to12" // string | QRS Measure's Response Group Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MeasuresAPI.MdrQrsMeasureVersionResponsegroupsResponsegroupGet(context.Background(), measure, version, responsegroup).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MeasuresAPI.MdrQrsMeasureVersionResponsegroupsResponsegroupGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrQrsMeasureVersionResponsegroupsResponsegroupGet`: QrsResponsegroup
	fmt.Fprintf(os.Stdout, "Response from `MeasuresAPI.MdrQrsMeasureVersionResponsegroupsResponsegroupGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**measure** | **string** | QRS Measure Identifier | 
**version** | **string** | CDISC Library Product Version | 
**responsegroup** | **string** | QRS Measure&#39;s Response Group Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrQrsMeasureVersionResponsegroupsResponsegroupGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**QrsResponsegroup**](QrsResponsegroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

