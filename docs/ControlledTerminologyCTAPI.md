# \ControlledTerminologyCTAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrCtPackagesGet**](ControlledTerminologyCTAPI.md#MdrCtPackagesGet) | **Get** /mdr/ct/packages | 
[**MdrCtPackagesPackageCodelistsCodelistGet**](ControlledTerminologyCTAPI.md#MdrCtPackagesPackageCodelistsCodelistGet) | **Get** /mdr/ct/packages/{package}/codelists/{codelist} | 
[**MdrCtPackagesPackageCodelistsCodelistTermsGet**](ControlledTerminologyCTAPI.md#MdrCtPackagesPackageCodelistsCodelistTermsGet) | **Get** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
[**MdrCtPackagesPackageCodelistsCodelistTermsTermGet**](ControlledTerminologyCTAPI.md#MdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **Get** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
[**MdrCtPackagesPackageCodelistsGet**](ControlledTerminologyCTAPI.md#MdrCtPackagesPackageCodelistsGet) | **Get** /mdr/ct/packages/{package}/codelists | 
[**MdrCtPackagesProductGet**](ControlledTerminologyCTAPI.md#MdrCtPackagesProductGet) | **Get** /mdr/ct/packages/{product} | 
[**MdrRootCtProductGroupCodelistsCodelistGet**](ControlledTerminologyCTAPI.md#MdrRootCtProductGroupCodelistsCodelistGet) | **Get** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
[**MdrRootCtProductGroupCodelistsCodelistTermsTermGet**](ControlledTerminologyCTAPI.md#MdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **Get** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 



## MdrCtPackagesGet

> CtPackages MdrCtPackagesGet(ctx).Execute()





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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrCtPackagesGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrCtPackagesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCtPackagesGet`: CtPackages
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrCtPackagesGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCtPackagesGetRequest struct via the builder pattern


### Return type

[**CtPackages**](CtPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCtPackagesPackageCodelistsCodelistGet

> CtCodelist MdrCtPackagesPackageCodelistsCodelistGet(ctx, package_, codelist).Execute()





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
	package_ := "sdtmct-2019-12-20" // string | CT Package Identifier
	codelist := "C67154" // string | CT Codelist Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistGet(context.Background(), package_, codelist).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCtPackagesPackageCodelistsCodelistGet`: CtCodelist
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**package_** | **string** | CT Package Identifier | 
**codelist** | **string** | CT Codelist Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCtPackagesPackageCodelistsCodelistGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CtCodelist**](CtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCtPackagesPackageCodelistsCodelistTermsGet

> CtCodelistTerms MdrCtPackagesPackageCodelistsCodelistTermsGet(ctx, package_, codelist).Execute()





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
	package_ := "sdtmct-2019-12-20" // string | CT Package Identifier
	codelist := "C67154" // string | CT Codelist Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistTermsGet(context.Background(), package_, codelist).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistTermsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCtPackagesPackageCodelistsCodelistTermsGet`: CtCodelistTerms
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistTermsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**package_** | **string** | CT Package Identifier | 
**codelist** | **string** | CT Codelist Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCtPackagesPackageCodelistsCodelistTermsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CtCodelistTerms**](CtCodelistTerms.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCtPackagesPackageCodelistsCodelistTermsTermGet

> CtTerm MdrCtPackagesPackageCodelistsCodelistTermsTermGet(ctx, package_, codelist, term).Execute()





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
	package_ := "sdtmct-2019-12-20" // string | CT Package Product Identifier
	codelist := "C67154" // string | CT Codelist Identifier
	term := "C64796" // string | CT Codelist Term Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistTermsTermGet(context.Background(), package_, codelist, term).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistTermsTermGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCtPackagesPackageCodelistsCodelistTermsTermGet`: CtTerm
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsCodelistTermsTermGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**package_** | **string** | CT Package Product Identifier | 
**codelist** | **string** | CT Codelist Identifier | 
**term** | **string** | CT Codelist Term Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCtPackagesPackageCodelistsCodelistTermsTermGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**CtTerm**](CtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCtPackagesPackageCodelistsGet

> CtPackageCodelists MdrCtPackagesPackageCodelistsGet(ctx, package_).Execute()





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
	package_ := "sdtmct-2019-12-20" // string | CT Package Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsGet(context.Background(), package_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCtPackagesPackageCodelistsGet`: CtPackageCodelists
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrCtPackagesPackageCodelistsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**package_** | **string** | CT Package Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCtPackagesPackageCodelistsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CtPackageCodelists**](CtPackageCodelists.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCtPackagesProductGet

> CtPackage MdrCtPackagesProductGet(ctx, product).Execute()





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
	product := "sdtmct-2019-12-20" // string | CT Package Product Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrCtPackagesProductGet(context.Background(), product).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrCtPackagesProductGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCtPackagesProductGet`: CtPackage
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrCtPackagesProductGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**product** | **string** | CT Package Product Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCtPackagesProductGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CtPackage**](CtPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootCtProductGroupCodelistsCodelistGet

> RootCtCodelist MdrRootCtProductGroupCodelistsCodelistGet(ctx, productGroup, codelist).Execute()





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
	productGroup := "sdtmct" // string | CT Product Group Identifier
	codelist := "C67154" // string | CT Codelist Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrRootCtProductGroupCodelistsCodelistGet(context.Background(), productGroup, codelist).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrRootCtProductGroupCodelistsCodelistGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootCtProductGroupCodelistsCodelistGet`: RootCtCodelist
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrRootCtProductGroupCodelistsCodelistGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**productGroup** | **string** | CT Product Group Identifier | 
**codelist** | **string** | CT Codelist Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootCtProductGroupCodelistsCodelistGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootCtCodelist**](RootCtCodelist.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootCtProductGroupCodelistsCodelistTermsTermGet

> RootCtTerm MdrRootCtProductGroupCodelistsCodelistTermsTermGet(ctx, productGroup, codelist, term).Execute()





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
	productGroup := "sdtmct" // string | CT Product Group Identifier
	codelist := "C67154" // string | CT Codelist Identifier
	term := "C64796" // string | CT Codelist Term Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ControlledTerminologyCTAPI.MdrRootCtProductGroupCodelistsCodelistTermsTermGet(context.Background(), productGroup, codelist, term).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ControlledTerminologyCTAPI.MdrRootCtProductGroupCodelistsCodelistTermsTermGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootCtProductGroupCodelistsCodelistTermsTermGet`: RootCtTerm
	fmt.Fprintf(os.Stdout, "Response from `ControlledTerminologyCTAPI.MdrRootCtProductGroupCodelistsCodelistTermsTermGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**productGroup** | **string** | CT Product Group Identifier | 
**codelist** | **string** | CT Codelist Identifier | 
**term** | **string** | CT Codelist Term Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootCtProductGroupCodelistsCodelistTermsTermGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**RootCtTerm**](RootCtTerm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

