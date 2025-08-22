# OpenAPI\Client\ControlledTerminologyCTApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrCtPackagesGet()**](ControlledTerminologyCTApi.md#mdrCtPackagesGet) | **GET** /mdr/ct/packages |  |
| [**mdrCtPackagesPackageCodelistsCodelistGet()**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} |  |
| [**mdrCtPackagesPackageCodelistsCodelistTermsGet()**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms |  |
| [**mdrCtPackagesPackageCodelistsCodelistTermsTermGet()**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} |  |
| [**mdrCtPackagesPackageCodelistsGet()**](ControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists |  |
| [**mdrCtPackagesProductGet()**](ControlledTerminologyCTApi.md#mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} |  |
| [**mdrRootCtProductGroupCodelistsCodelistGet()**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} |  |
| [**mdrRootCtProductGroupCodelistsCodelistTermsTermGet()**](ControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} |  |


## `mdrCtPackagesGet()`

```php
mdrCtPackagesGet(): \OpenAPI\Client\Model\CtPackages
```



Get CDISC Library CT Package List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrCtPackagesGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrCtPackagesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CtPackages**](../Model/CtPackages.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCtPackagesPackageCodelistsCodelistGet()`

```php
mdrCtPackagesPackageCodelistsCodelistGet($package, $codelist): \OpenAPI\Client\Model\CtCodelist
```



Get CDISC Library CT Package Codelist

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$package = sdtmct-2019-12-20; // string | CT Package Identifier
$codelist = C67154; // string | CT Codelist Identifier

try {
    $result = $apiInstance->mdrCtPackagesPackageCodelistsCodelistGet($package, $codelist);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **package** | **string**| CT Package Identifier | |
| **codelist** | **string**| CT Codelist Identifier | |

### Return type

[**\OpenAPI\Client\Model\CtCodelist**](../Model/CtCodelist.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCtPackagesPackageCodelistsCodelistTermsGet()`

```php
mdrCtPackagesPackageCodelistsCodelistTermsGet($package, $codelist): \OpenAPI\Client\Model\CtCodelistTerms
```



Get CDISC Library CT Package Codelist Term List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$package = sdtmct-2019-12-20; // string | CT Package Identifier
$codelist = C67154; // string | CT Codelist Identifier

try {
    $result = $apiInstance->mdrCtPackagesPackageCodelistsCodelistTermsGet($package, $codelist);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistTermsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **package** | **string**| CT Package Identifier | |
| **codelist** | **string**| CT Codelist Identifier | |

### Return type

[**\OpenAPI\Client\Model\CtCodelistTerms**](../Model/CtCodelistTerms.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCtPackagesPackageCodelistsCodelistTermsTermGet()`

```php
mdrCtPackagesPackageCodelistsCodelistTermsTermGet($package, $codelist, $term): \OpenAPI\Client\Model\CtTerm
```



Get CDISC Library CT Package Codelist Term

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$package = sdtmct-2019-12-20; // string | CT Package Product Identifier
$codelist = C67154; // string | CT Codelist Identifier
$term = C64796; // string | CT Codelist Term Identifier

try {
    $result = $apiInstance->mdrCtPackagesPackageCodelistsCodelistTermsTermGet($package, $codelist, $term);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsCodelistTermsTermGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **package** | **string**| CT Package Product Identifier | |
| **codelist** | **string**| CT Codelist Identifier | |
| **term** | **string**| CT Codelist Term Identifier | |

### Return type

[**\OpenAPI\Client\Model\CtTerm**](../Model/CtTerm.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCtPackagesPackageCodelistsGet()`

```php
mdrCtPackagesPackageCodelistsGet($package): \OpenAPI\Client\Model\CtPackageCodelists
```



Get CDISC Library CT Package Codelist List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$package = sdtmct-2019-12-20; // string | CT Package Identifier

try {
    $result = $apiInstance->mdrCtPackagesPackageCodelistsGet($package);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrCtPackagesPackageCodelistsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **package** | **string**| CT Package Identifier | |

### Return type

[**\OpenAPI\Client\Model\CtPackageCodelists**](../Model/CtPackageCodelists.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCtPackagesProductGet()`

```php
mdrCtPackagesProductGet($product): \OpenAPI\Client\Model\CtPackage
```



Get CDISC Library CT Package

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = sdtmct-2019-12-20; // string | CT Package Product Identifier

try {
    $result = $apiInstance->mdrCtPackagesProductGet($product);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrCtPackagesProductGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CT Package Product Identifier | |

### Return type

[**\OpenAPI\Client\Model\CtPackage**](../Model/CtPackage.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootCtProductGroupCodelistsCodelistGet()`

```php
mdrRootCtProductGroupCodelistsCodelistGet($product_group, $codelist): \OpenAPI\Client\Model\RootCtCodelist
```



Get CDISC Library Root CT Codelist

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product_group = sdtmct; // string | CT Product Group Identifier
$codelist = C67154; // string | CT Codelist Identifier

try {
    $result = $apiInstance->mdrRootCtProductGroupCodelistsCodelistGet($product_group, $codelist);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrRootCtProductGroupCodelistsCodelistGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product_group** | **string**| CT Product Group Identifier | |
| **codelist** | **string**| CT Codelist Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootCtCodelist**](../Model/RootCtCodelist.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootCtProductGroupCodelistsCodelistTermsTermGet()`

```php
mdrRootCtProductGroupCodelistsCodelistTermsTermGet($product_group, $codelist, $term): \OpenAPI\Client\Model\RootCtTerm
```



Get CDISC Library Root CT Term

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ControlledTerminologyCTApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product_group = sdtmct; // string | CT Product Group Identifier
$codelist = C67154; // string | CT Codelist Identifier
$term = C64796; // string | CT Codelist Term Identifier

try {
    $result = $apiInstance->mdrRootCtProductGroupCodelistsCodelistTermsTermGet($product_group, $codelist, $term);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ControlledTerminologyCTApi->mdrRootCtProductGroupCodelistsCodelistTermsTermGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product_group** | **string**| CT Product Group Identifier | |
| **codelist** | **string**| CT Codelist Identifier | |
| **term** | **string**| CT Codelist Term Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootCtTerm**](../Model/RootCtTerm.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
