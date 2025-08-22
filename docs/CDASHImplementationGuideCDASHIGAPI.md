# \CDASHImplementationGuideCDASHIGAPI

All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MdrCdashigVersionClassesClassDomainsGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionClassesClassDomainsGet) | **Get** /mdr/cdashig/{version}/classes/{class}/domains | 
[**MdrCdashigVersionClassesClassGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionClassesClassGet) | **Get** /mdr/cdashig/{version}/classes/{class} | 
[**MdrCdashigVersionClassesClassScenariosGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionClassesClassScenariosGet) | **Get** /mdr/cdashig/{version}/classes/{class}/scenarios | 
[**MdrCdashigVersionClassesGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionClassesGet) | **Get** /mdr/cdashig/{version}/classes | 
[**MdrCdashigVersionDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionDomainsDomainFieldsFieldGet) | **Get** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
[**MdrCdashigVersionDomainsDomainFieldsGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionDomainsDomainFieldsGet) | **Get** /mdr/cdashig/{version}/domains/{domain}/fields | 
[**MdrCdashigVersionDomainsDomainGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionDomainsDomainGet) | **Get** /mdr/cdashig/{version}/domains/{domain} | 
[**MdrCdashigVersionDomainsGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionDomainsGet) | **Get** /mdr/cdashig/{version}/domains | 
[**MdrCdashigVersionGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionGet) | **Get** /mdr/cdashig/{version} | 
[**MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **Get** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
[**MdrCdashigVersionScenariosDomainScenarioFieldsGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionScenariosDomainScenarioFieldsGet) | **Get** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
[**MdrCdashigVersionScenariosDomainScenarioGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionScenariosDomainScenarioGet) | **Get** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
[**MdrCdashigVersionScenariosGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrCdashigVersionScenariosGet) | **Get** /mdr/cdashig/{version}/scenarios | 
[**MdrRootCdashigDomainsDomainFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrRootCdashigDomainsDomainFieldsFieldGet) | **Get** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
[**MdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](CDASHImplementationGuideCDASHIGAPI.md#MdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **Get** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 



## MdrCdashigVersionClassesClassDomainsGet

> CdashigClassDomains MdrCdashigVersionClassesClassDomainsGet(ctx, version, class).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	class := "Findings" // string | CDASHIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassDomainsGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassDomainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionClassesClassDomainsGet`: CdashigClassDomains
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassDomainsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | CDASHIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionClassesClassDomainsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashigClassDomains**](CdashigClassDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionClassesClassGet

> CdashigClass MdrCdashigVersionClassesClassGet(ctx, version, class).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	class := "Findings" // string | CDASHIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionClassesClassGet`: CdashigClass
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | CDASHIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionClassesClassGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashigClass**](CdashigClass.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionClassesClassScenariosGet

> CdashigClassScenarios MdrCdashigVersionClassesClassScenariosGet(ctx, version, class).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	class := "Findings" // string | CDASHIG Class Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassScenariosGet(context.Background(), version, class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassScenariosGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionClassesClassScenariosGet`: CdashigClassScenarios
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesClassScenariosGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**class** | **string** | CDASHIG Class Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionClassesClassScenariosGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashigClassScenarios**](CdashigClassScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionClassesGet

> CdashigProductClasses MdrCdashigVersionClassesGet(ctx, version).Execute()





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
	version := "2-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionClassesGet`: CdashigProductClasses
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionClassesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionClassesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashigProductClasses**](CdashigProductClasses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionDomainsDomainFieldsFieldGet

> CdashigDomainField MdrCdashigVersionDomainsDomainFieldsFieldGet(ctx, version, domain, field).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	domain := "VS" // string | CDASHIG Domain Identifier
	field := "VSDAT" // string | CDASHIG Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainFieldsFieldGet(context.Background(), version, domain, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionDomainsDomainFieldsFieldGet`: CdashigDomainField
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASHIG Domain Identifier | 
**field** | **string** | CDASHIG Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionDomainsDomainFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**CdashigDomainField**](CdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionDomainsDomainFieldsGet

> CdashigDomainFields MdrCdashigVersionDomainsDomainFieldsGet(ctx, version, domain).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	domain := "VS" // string | CDASHIG Domain Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainFieldsGet(context.Background(), version, domain).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainFieldsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionDomainsDomainFieldsGet`: CdashigDomainFields
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainFieldsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASHIG Domain Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionDomainsDomainFieldsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashigDomainFields**](CdashigDomainFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionDomainsDomainGet

> CdashigDomain MdrCdashigVersionDomainsDomainGet(ctx, version, domain).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	domain := "VS" // string | CDASHIG Domain Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainGet(context.Background(), version, domain).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionDomainsDomainGet`: CdashigDomain
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsDomainGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASHIG Domain Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionDomainsDomainGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**CdashigDomain**](CdashigDomain.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionDomainsGet

> CdashigProductDomains MdrCdashigVersionDomainsGet(ctx, version).Execute()





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
	version := "2-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionDomainsGet`: CdashigProductDomains
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionDomainsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionDomainsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashigProductDomains**](CdashigProductDomains.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionGet

> CdashigProduct MdrCdashigVersionGet(ctx, version).Execute()





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
	version := "2-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionGet`: CdashigProduct
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashigProduct**](CdashigProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet

> CdashigScenarioField MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(ctx, version, domain, scenario, field).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	domain := "VS" // string | CDASHIG Domain Identifier
	scenario := "Generic" // string | CDASHIG Scenario Identifier
	field := "VSDAT" // string | CDASHIG Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(context.Background(), version, domain, scenario, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet`: CdashigScenarioField
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASHIG Domain Identifier | 
**scenario** | **string** | CDASHIG Scenario Identifier | 
**field** | **string** | CDASHIG Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionScenariosDomainScenarioFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

[**CdashigScenarioField**](CdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionScenariosDomainScenarioFieldsGet

> CdashigScenarioFields MdrCdashigVersionScenariosDomainScenarioFieldsGet(ctx, version, domain, scenario).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	domain := "VS" // string | CDASHIG Domain Identifier
	scenario := "HorizontalGeneric" // string | CDASHIG Scenario Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioFieldsGet(context.Background(), version, domain, scenario).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioFieldsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionScenariosDomainScenarioFieldsGet`: CdashigScenarioFields
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioFieldsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASHIG Domain Identifier | 
**scenario** | **string** | CDASHIG Scenario Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionScenariosDomainScenarioFieldsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**CdashigScenarioFields**](CdashigScenarioFields.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionScenariosDomainScenarioGet

> CdashigScenario MdrCdashigVersionScenariosDomainScenarioGet(ctx, version, domain, scenario).Execute()





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
	version := "2-1" // string | CDISC Library Product Version
	domain := "VS" // string | CDASHIG Domain Identifier
	scenario := "HorizontalGeneric" // string | CDASHIG Scenario Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioGet(context.Background(), version, domain, scenario).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionScenariosDomainScenarioGet`: CdashigScenario
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosDomainScenarioGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 
**domain** | **string** | CDASHIG Domain Identifier | 
**scenario** | **string** | CDASHIG Scenario Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionScenariosDomainScenarioGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**CdashigScenario**](CdashigScenario.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrCdashigVersionScenariosGet

> CdashigProductScenarios MdrCdashigVersionScenariosGet(ctx, version).Execute()





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
	version := "2-1" // string | CDISC Library Product Version

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosGet(context.Background(), version).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrCdashigVersionScenariosGet`: CdashigProductScenarios
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrCdashigVersionScenariosGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**version** | **string** | CDISC Library Product Version | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrCdashigVersionScenariosGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CdashigProductScenarios**](CdashigProductScenarios.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootCdashigDomainsDomainFieldsFieldGet

> RootCdashigDomainField MdrRootCdashigDomainsDomainFieldsFieldGet(ctx, domain, field).Execute()





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
	domain := "VS" // string | CDASHIG Domain Identifier
	field := "VSDAT" // string | CDASHIG Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrRootCdashigDomainsDomainFieldsFieldGet(context.Background(), domain, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrRootCdashigDomainsDomainFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootCdashigDomainsDomainFieldsFieldGet`: RootCdashigDomainField
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrRootCdashigDomainsDomainFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domain** | **string** | CDASHIG Domain Identifier | 
**field** | **string** | CDASHIG Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootCdashigDomainsDomainFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**RootCdashigDomainField**](RootCdashigDomainField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MdrRootCdashigScenariosDomainScenarioFieldsFieldGet

> RootCdashigScenarioField MdrRootCdashigScenariosDomainScenarioFieldsFieldGet(ctx, domain, scenario, field).Execute()





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
	domain := "VS" // string | CDASHIG Domain Identifier
	scenario := "Generic" // string | CDASHIG Scenario Identifier
	field := "VSDAT" // string | CDASHIG Field Identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CDASHImplementationGuideCDASHIGAPI.MdrRootCdashigScenariosDomainScenarioFieldsFieldGet(context.Background(), domain, scenario, field).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CDASHImplementationGuideCDASHIGAPI.MdrRootCdashigScenariosDomainScenarioFieldsFieldGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MdrRootCdashigScenariosDomainScenarioFieldsFieldGet`: RootCdashigScenarioField
	fmt.Fprintf(os.Stdout, "Response from `CDASHImplementationGuideCDASHIGAPI.MdrRootCdashigScenariosDomainScenarioFieldsFieldGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domain** | **string** | CDASHIG Domain Identifier | 
**scenario** | **string** | CDASHIG Scenario Identifier | 
**field** | **string** | CDASHIG Field Identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiMdrRootCdashigScenariosDomainScenarioFieldsFieldGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**RootCdashigScenarioField**](RootCdashigScenarioField.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

