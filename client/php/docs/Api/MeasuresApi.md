# OpenAPI\Client\MeasuresApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrQrsMeasureVersionGet()**](MeasuresApi.md#mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} |  |
| [**mdrQrsMeasureVersionItemsGet()**](MeasuresApi.md#mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items |  |
| [**mdrQrsMeasureVersionItemsItemGet()**](MeasuresApi.md#mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} |  |
| [**mdrQrsMeasureVersionResponsegroupsGet()**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups |  |
| [**mdrQrsMeasureVersionResponsegroupsResponsegroupGet()**](MeasuresApi.md#mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} |  |


## `mdrQrsMeasureVersionGet()`

```php
mdrQrsMeasureVersionGet($measure, $version): \OpenAPI\Client\Model\QrsProduct
```



Get QRS Product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\MeasuresApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$measure = AIMS1; // string | QRS Measure Identifier
$version = 1-0; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrQrsMeasureVersionGet($measure, $version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeasuresApi->mdrQrsMeasureVersionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **measure** | **string**| QRS Measure Identifier | |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\QrsProduct**](../Model/QrsProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrQrsMeasureVersionItemsGet()`

```php
mdrQrsMeasureVersionItemsGet($measure, $version): \OpenAPI\Client\Model\QrsItems
```



Get QRS Item List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\MeasuresApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$measure = AIMS1; // string | QRS Measure Identifier
$version = 1-0; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrQrsMeasureVersionItemsGet($measure, $version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeasuresApi->mdrQrsMeasureVersionItemsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **measure** | **string**| QRS Measure Identifier | |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\QrsItems**](../Model/QrsItems.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrQrsMeasureVersionItemsItemGet()`

```php
mdrQrsMeasureVersionItemsItemGet($measure, $version, $item): \OpenAPI\Client\Model\QrsItem
```



Get QRS Item

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\MeasuresApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$measure = AIMS1; // string | QRS Measure Identifier
$version = 1-0; // string | CDISC Library Product Version
$item = AIMS01.001; // string | QRS Measure Item Identifier

try {
    $result = $apiInstance->mdrQrsMeasureVersionItemsItemGet($measure, $version, $item);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeasuresApi->mdrQrsMeasureVersionItemsItemGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **measure** | **string**| QRS Measure Identifier | |
| **version** | **string**| CDISC Library Product Version | |
| **item** | **string**| QRS Measure Item Identifier | |

### Return type

[**\OpenAPI\Client\Model\QrsItem**](../Model/QrsItem.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrQrsMeasureVersionResponsegroupsGet()`

```php
mdrQrsMeasureVersionResponsegroupsGet($measure, $version): \OpenAPI\Client\Model\QrsResponsegroups
```



Get QRS Response Group List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\MeasuresApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$measure = AIMS1; // string | QRS Measure Identifier
$version = 1-0; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrQrsMeasureVersionResponsegroupsGet($measure, $version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeasuresApi->mdrQrsMeasureVersionResponsegroupsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **measure** | **string**| QRS Measure Identifier | |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\QrsResponsegroups**](../Model/QrsResponsegroups.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrQrsMeasureVersionResponsegroupsResponsegroupGet()`

```php
mdrQrsMeasureVersionResponsegroupsResponsegroupGet($measure, $version, $responsegroup): \OpenAPI\Client\Model\QrsResponsegroup
```



Get QRS Response Group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\MeasuresApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$measure = AIMS1; // string | QRS Measure Identifier
$version = 1-0; // string | CDISC Library Product Version
$responsegroup = AIMS1.11to12; // string | QRS Measure's Response Group Identifier

try {
    $result = $apiInstance->mdrQrsMeasureVersionResponsegroupsResponsegroupGet($measure, $version, $responsegroup);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeasuresApi->mdrQrsMeasureVersionResponsegroupsResponsegroupGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **measure** | **string**| QRS Measure Identifier | |
| **version** | **string**| CDISC Library Product Version | |
| **responsegroup** | **string**| QRS Measure&#39;s Response Group Identifier | |

### Return type

[**\OpenAPI\Client\Model\QrsResponsegroup**](../Model/QrsResponsegroup.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
