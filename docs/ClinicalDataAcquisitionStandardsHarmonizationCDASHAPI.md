# \ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrCdashVersionClassesClassDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionClassesClassDomainsGet) | **Get** /mdr/cdash/{version}/classes/{class}/domains | 
[**MdrCdashVersionClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionClassesClassFieldsFieldGet) | **Get** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
[**MdrCdashVersionClassesClassGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionClassesClassGet) | **Get** /mdr/cdash/{version}/classes/{class} | 
[**MdrCdashVersionClassesGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionClassesGet) | **Get** /mdr/cdash/{version}/classes | 
[**MdrCdashVersionDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionDomainsDomainFieldsFieldGet) | **Get** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
[**MdrCdashVersionDomainsDomainFieldsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionDomainsDomainFieldsGet) | **Get** /mdr/cdash/{version}/domains/{domain}/fields | 
[**MdrCdashVersionDomainsDomainGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionDomainsDomainGet) | **Get** /mdr/cdash/{version}/domains/{domain} | 
[**MdrCdashVersionDomainsGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionDomainsGet) | **Get** /mdr/cdash/{version}/domains | 
[**MdrCdashVersionGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrCdashVersionGet) | **Get** /mdr/cdash/{version} | 
[**MdrRootCdashClassesClassFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrRootCdashClassesClassFieldsFieldGet) | **Get** /mdr/root/cdash/classes/{class}/fields/{field} | 
[**MdrRootCdashDomainsDomainFieldsFieldGet**](ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.md#MdrRootCdashDomainsDomainFieldsFieldGet) | **Get** /mdr/root/cdash/domains/{domain}/fields/{field} | 



## MdrCdashVersionClassesClassDomainsGet

> CdashClassDomains MdrCdashVersionClassesClassDomainsGet(ctx, version, class).Execute()





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
	version := "1-1" // string | CDISC Library Product Version
	class := "SpecialPurpose" // string | CDASH Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassDomainsGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassDomainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionClassesClassDomainsGet`: CdashClassDomains
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassDomainsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | CDASH Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionClassesClassDomainsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashClassDomains**](CdashClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionClassesClassFieldsFieldGet

> CdashClassField MdrCdashVersionClassesClassFieldsFieldGet(ctx, version, class, field).Execute()





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
	version := "1-1" // string | CDISC Library Product Version
	class := "Timing" // string | CDASH Class Identifier
	field := "--DAT" // string | CDASH Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassFieldsFieldGet(context.Background(), version, class, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionClassesClassFieldsFieldGet`: CdashClassField
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | CDASH Class Identifier | 
**field** | **string** | CDASH Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionClassesClassFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**CdashClassField**](CdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionClassesClassGet

> CdashClass MdrCdashVersionClassesClassGet(ctx, version, class).Execute()





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
	version := "1-1" // string | CDISC Library Product Version
	class := "Timing" // string | CDASH Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionClassesClassGet`: CdashClass
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesClassGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | CDASH Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionClassesClassGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashClass**](CdashClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionClassesGet

> CdashProductClasses MdrCdashVersionClassesGet(ctx, version).Execute()





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
	version := "1-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionClassesGet`: CdashProductClasses
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionClassesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionClassesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashProductClasses**](CdashProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionDomainsDomainFieldsFieldGet

> CdashDomainField MdrCdashVersionDomainsDomainFieldsFieldGet(ctx, version, domain, field).Execute()





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
	version := "1-1" // string | CDISC Library Product Version
	domain := "DM" // string | CDASH Domain Identifier
	field := "AGE" // string | CDASH Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainFieldsFieldGet(context.Background(), version, domain, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionDomainsDomainFieldsFieldGet`: CdashDomainField
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASH Domain Identifier | 
**field** | **string** | CDASH Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionDomainsDomainFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**CdashDomainField**](CdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionDomainsDomainFieldsGet

> CdashDomainFields MdrCdashVersionDomainsDomainFieldsGet(ctx, version, domain).Execute()





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
	version := "1-1" // string | CDISC Library Product Version
	domain := "DM" // string | CDASH Domain Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainFieldsGet(context.Background(), version, domain).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainFieldsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionDomainsDomainFieldsGet`: CdashDomainFields
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainFieldsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASH Domain Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionDomainsDomainFieldsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashDomainFields**](CdashDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionDomainsDomainGet

> CdashDomain MdrCdashVersionDomainsDomainGet(ctx, version, domain).Execute()





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
	version := "1-1" // string | CDISC Library Product Version
	domain := "DM" // string | CDASH Domain Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainGet(context.Background(), version, domain).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionDomainsDomainGet`: CdashDomain
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsDomainGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASH Domain Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionDomainsDomainGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashDomain**](CdashDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionDomainsGet

> CdashProductDomains MdrCdashVersionDomainsGet(ctx, version).Execute()





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
	version := "1-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionDomainsGet`: CdashProductDomains
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionDomainsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionDomainsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashProductDomains**](CdashProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashVersionGet

> CdashProduct MdrCdashVersionGet(ctx, version).Execute()





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
	version := "1-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashVersionGet`: CdashProduct
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrCdashVersionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashVersionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashProduct**](CdashProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootCdashClassesClassFieldsFieldGet

> RootCdashClassField MdrRootCdashClassesClassFieldsFieldGet(ctx, class, field).Execute()





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
	class := "Timing" // string | CDASH Class Identifier
	field := "--DAT" // string | CDASH Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrRootCdashClassesClassFieldsFieldGet(context.Background(), class, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrRootCdashClassesClassFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootCdashClassesClassFieldsFieldGet`: RootCdashClassField
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrRootCdashClassesClassFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**class** | **string** | CDASH Class Identifier | 
**field** | **string** | CDASH Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootCdashClassesClassFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootCdashClassField**](RootCdashClassField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootCdashDomainsDomainFieldsFieldGet

> RootCdashDomainField MdrRootCdashDomainsDomainFieldsFieldGet(ctx, domain, field).Execute()





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
	domain := "DM" // string | CDASH Domain Identifier
	field := "AGE" // string | CDASH Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrRootCdashDomainsDomainFieldsFieldGet(context.Background(), domain, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrRootCdashDomainsDomainFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootCdashDomainsDomainFieldsFieldGet`: RootCdashDomainField
	fmt.Fprintf(os.Stdout, "Response from `ClinicalDataAcquisitionStandardsHarmonizationCDASHAPI.MdrRootCdashDomainsDomainFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domain** | **string** | CDASH Domain Identifier | 
**field** | **string** | CDASH Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootCdashDomainsDomainFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootCdashDomainField**](RootCdashDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

