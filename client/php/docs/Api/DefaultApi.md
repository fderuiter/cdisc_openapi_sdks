# OpenAPI\Client\DefaultApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrAboutGet()**](DefaultApi.md#mdrAboutGet) | **GET** /mdr/about |  |
| [**mdrLastupdatedGet()**](DefaultApi.md#mdrLastupdatedGet) | **GET** /mdr/lastupdated |  |
| [**mdrProductsDataAnalysisGet()**](DefaultApi.md#mdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis |  |
| [**mdrProductsDataCollectionGet()**](DefaultApi.md#mdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection |  |
| [**mdrProductsDataTabulationGet()**](DefaultApi.md#mdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation |  |
| [**mdrProductsGet()**](DefaultApi.md#mdrProductsGet) | **GET** /mdr/products |  |
| [**mdrProductsMeasuresGet()**](DefaultApi.md#mdrProductsMeasuresGet) | **GET** /mdr/products/Measures |  |
| [**mdrProductsTerminologyGet()**](DefaultApi.md#mdrProductsTerminologyGet) | **GET** /mdr/products/Terminology |  |


## `mdrAboutGet()`

```php
mdrAboutGet(): \OpenAPI\Client\Model\About
```



Get Information About CDISC Library

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrAboutGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrAboutGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\About**](../Model/About.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrLastupdatedGet()`

```php
mdrLastupdatedGet(): \OpenAPI\Client\Model\Lastupdated
```



Get CDISC Library Last Updated

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrLastupdatedGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrLastupdatedGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Lastupdated**](../Model/Lastupdated.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrProductsDataAnalysisGet()`

```php
mdrProductsDataAnalysisGet(): \OpenAPI\Client\Model\ProductgroupDataAnalysis
```



Get CDISC Library Product Group Data Analysis

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrProductsDataAnalysisGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrProductsDataAnalysisGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ProductgroupDataAnalysis**](../Model/ProductgroupDataAnalysis.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrProductsDataCollectionGet()`

```php
mdrProductsDataCollectionGet(): \OpenAPI\Client\Model\ProductgroupDataCollection
```



Get CDISC Library Product Group Data Collection

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrProductsDataCollectionGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrProductsDataCollectionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ProductgroupDataCollection**](../Model/ProductgroupDataCollection.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrProductsDataTabulationGet()`

```php
mdrProductsDataTabulationGet(): \OpenAPI\Client\Model\ProductgroupDataTabulation
```



Get CDISC Library Product Group Data Tabulation

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrProductsDataTabulationGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrProductsDataTabulationGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ProductgroupDataTabulation**](../Model/ProductgroupDataTabulation.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrProductsGet()`

```php
mdrProductsGet(): \OpenAPI\Client\Model\Products
```



Get CDISC Library Products

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrProductsGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrProductsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Products**](../Model/Products.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrProductsMeasuresGet()`

```php
mdrProductsMeasuresGet(): \OpenAPI\Client\Model\ProductgroupQrs
```



Get CDISC Library Product Group QRS

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrProductsMeasuresGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrProductsMeasuresGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ProductgroupQrs**](../Model/ProductgroupQrs.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrProductsTerminologyGet()`

```php
mdrProductsTerminologyGet(): \OpenAPI\Client\Model\ProductgroupTerminology
```



Get CDISC Library Product Group Terminology

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrProductsTerminologyGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mdrProductsTerminologyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ProductgroupTerminology**](../Model/ProductgroupTerminology.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
