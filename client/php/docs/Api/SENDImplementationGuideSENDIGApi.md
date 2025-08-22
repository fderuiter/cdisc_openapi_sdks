# OpenAPI\Client\SENDImplementationGuideSENDIGApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrRootSendigDatasetsDatasetVariablesVarGet()**](SENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} |  |
| [**mdrSendigVersionClassesClassDatasetsGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets |  |
| [**mdrSendigVersionClassesClassGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} |  |
| [**mdrSendigVersionClassesGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes |  |
| [**mdrSendigVersionDatasetsDatasetGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} |  |
| [**mdrSendigVersionDatasetsDatasetVariablesGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables |  |
| [**mdrSendigVersionDatasetsDatasetVariablesVarGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSendigVersionDatasetsGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets |  |
| [**mdrSendigVersionGet()**](SENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} |  |


## `mdrRootSendigDatasetsDatasetVariablesVarGet()`

```php
mdrRootSendigDatasetsDatasetVariablesVarGet($dataset, $var): \OpenAPI\Client\Model\RootSendigDatasetVariable
```



Get Root SENDIG Dataset Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$dataset = VS; // string | SENDIG Dataset Identifier
$var = VSTEST; // string | SENDIG Variable Identifier

try {
    $result = $apiInstance->mdrRootSendigDatasetsDatasetVariablesVarGet($dataset, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrRootSendigDatasetsDatasetVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **string**| SENDIG Dataset Identifier | |
| **var** | **string**| SENDIG Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootSendigDatasetVariable**](../Model/RootSendigDatasetVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionClassesClassDatasetsGet()`

```php
mdrSendigVersionClassesClassDatasetsGet($version, $class): \OpenAPI\Client\Model\SendigClassDatasets
```



Get SENDIG Class Dataset List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version
$class = Findings; // string | SENDIG Class Identifier

try {
    $result = $apiInstance->mdrSendigVersionClassesClassDatasetsGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionClassesClassDatasetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SENDIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SendigClassDatasets**](../Model/SendigClassDatasets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionClassesClassGet()`

```php
mdrSendigVersionClassesClassGet($version, $class): \OpenAPI\Client\Model\SendigClass
```



Get SENDIG Class

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version
$class = Findings; // string | SENDIG Class Identifier

try {
    $result = $apiInstance->mdrSendigVersionClassesClassGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionClassesClassGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SENDIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SendigClass**](../Model/SendigClass.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionClassesGet()`

```php
mdrSendigVersionClassesGet($version): \OpenAPI\Client\Model\SendigClasses
```



Get SENDIG Class List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSendigVersionClassesGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionClassesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SendigClasses**](../Model/SendigClasses.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionDatasetsDatasetGet()`

```php
mdrSendigVersionDatasetsDatasetGet($version, $dataset): \OpenAPI\Client\Model\SendigDataset
```



Get SENDIG Dataset

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version
$dataset = VS; // string | SENDIG Class Identifier

try {
    $result = $apiInstance->mdrSendigVersionDatasetsDatasetGet($version, $dataset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SENDIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SendigDataset**](../Model/SendigDataset.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionDatasetsDatasetVariablesGet()`

```php
mdrSendigVersionDatasetsDatasetVariablesGet($version, $dataset): \OpenAPI\Client\Model\SendigDatasetVariables
```



Get SENDIG Dataset Variable List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version
$dataset = VS; // string | SENDIG Class Identifier

try {
    $result = $apiInstance->mdrSendigVersionDatasetsDatasetVariablesGet($version, $dataset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetVariablesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SENDIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SendigDatasetVariables**](../Model/SendigDatasetVariables.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionDatasetsDatasetVariablesVarGet()`

```php
mdrSendigVersionDatasetsDatasetVariablesVarGet($version, $dataset, $var): \OpenAPI\Client\Model\SendigDatasetVariable
```



Get SENDIG Dataset Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version
$dataset = VS; // string | SENDIG Class Identifier
$var = VSTEST; // string | SENDIG Variable Identifier

try {
    $result = $apiInstance->mdrSendigVersionDatasetsDatasetVariablesVarGet($version, $dataset, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsDatasetVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SENDIG Class Identifier | |
| **var** | **string**| SENDIG Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\SendigDatasetVariable**](../Model/SendigDatasetVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionDatasetsGet()`

```php
mdrSendigVersionDatasetsGet($version): \OpenAPI\Client\Model\SendigDatasets
```



Get SENDIG Dataset List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSendigVersionDatasetsGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionDatasetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SendigDatasets**](../Model/SendigDatasets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSendigVersionGet()`

```php
mdrSendigVersionGet($version): \OpenAPI\Client\Model\SendigProduct
```



Get SENDIG product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SENDImplementationGuideSENDIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSendigVersionGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SENDImplementationGuideSENDIGApi->mdrSendigVersionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SendigProduct**](../Model/SendigProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
