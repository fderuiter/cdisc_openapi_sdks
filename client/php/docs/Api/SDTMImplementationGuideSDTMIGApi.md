# OpenAPI\Client\SDTMImplementationGuideSDTMIGApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrRootSdtmigDatasetsDatasetVariablesVarGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmigVersionClassesClassDatasetsGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets |  |
| [**mdrSdtmigVersionClassesClassGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} |  |
| [**mdrSdtmigVersionClassesGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes |  |
| [**mdrSdtmigVersionDatasetsDatasetGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} |  |
| [**mdrSdtmigVersionDatasetsDatasetVariablesGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables |  |
| [**mdrSdtmigVersionDatasetsDatasetVariablesVarGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmigVersionDatasetsGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets |  |
| [**mdrSdtmigVersionGet()**](SDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} |  |


## `mdrRootSdtmigDatasetsDatasetVariablesVarGet()`

```php
mdrRootSdtmigDatasetsDatasetVariablesVarGet($dataset, $var): \OpenAPI\Client\Model\RootSdtmigDatasetVariable
```



Get Root SDTMIG Dataset Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$dataset = DM; // string | SDTMIG Dataset Identifier
$var = SUBJID; // string | SDTMIG Variable Identifier

try {
    $result = $apiInstance->mdrRootSdtmigDatasetsDatasetVariablesVarGet($dataset, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrRootSdtmigDatasetsDatasetVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **string**| SDTMIG Dataset Identifier | |
| **var** | **string**| SDTMIG Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootSdtmigDatasetVariable**](../Model/RootSdtmigDatasetVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionClassesClassDatasetsGet()`

```php
mdrSdtmigVersionClassesClassDatasetsGet($version, $class): \OpenAPI\Client\Model\SdtmigClassDatasets
```



Get SDTMIG Class Dataset List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version
$class = Findings; // string | SDTMIG Class Identifier

try {
    $result = $apiInstance->mdrSdtmigVersionClassesClassDatasetsGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesClassDatasetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SDTMIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmigClassDatasets**](../Model/SdtmigClassDatasets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionClassesClassGet()`

```php
mdrSdtmigVersionClassesClassGet($version, $class): \OpenAPI\Client\Model\SdtmigClass
```



Get SDTMIG Class

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version
$class = Findings; // string | SDTMIG Class Identifier

try {
    $result = $apiInstance->mdrSdtmigVersionClassesClassGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesClassGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SDTMIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmigClass**](../Model/SdtmigClass.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionClassesGet()`

```php
mdrSdtmigVersionClassesGet($version): \OpenAPI\Client\Model\SdtmigClasses
```



Get SDTMIG Class List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSdtmigVersionClassesGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionClassesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SdtmigClasses**](../Model/SdtmigClasses.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionDatasetsDatasetGet()`

```php
mdrSdtmigVersionDatasetsDatasetGet($version, $dataset): \OpenAPI\Client\Model\SdtmigDataset
```



Get SDTMIG Dataset

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version
$dataset = LB; // string | SDTMIG Dataset Identifier

try {
    $result = $apiInstance->mdrSdtmigVersionDatasetsDatasetGet($version, $dataset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SDTMIG Dataset Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmigDataset**](../Model/SdtmigDataset.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionDatasetsDatasetVariablesGet()`

```php
mdrSdtmigVersionDatasetsDatasetVariablesGet($version, $dataset): \OpenAPI\Client\Model\SdtmigDatasetVariables
```



Get SDTMIG Dataset Variable List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version
$dataset = LB; // string | SDTMIG Dataset Identifier

try {
    $result = $apiInstance->mdrSdtmigVersionDatasetsDatasetVariablesGet($version, $dataset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetVariablesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SDTMIG Dataset Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmigDatasetVariables**](../Model/SdtmigDatasetVariables.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionDatasetsDatasetVariablesVarGet()`

```php
mdrSdtmigVersionDatasetsDatasetVariablesVarGet($version, $dataset, $var): \OpenAPI\Client\Model\SdtmigDatasetVariable
```



Get SDTMIG Dataset Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version
$dataset = LB; // string | SDTMIG Dataset Identifier
$var = LBDTC; // string | SDTMIG Variable Identifier

try {
    $result = $apiInstance->mdrSdtmigVersionDatasetsDatasetVariablesVarGet($version, $dataset, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsDatasetVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SDTMIG Dataset Identifier | |
| **var** | **string**| SDTMIG Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmigDatasetVariable**](../Model/SdtmigDatasetVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionDatasetsGet()`

```php
mdrSdtmigVersionDatasetsGet($version): \OpenAPI\Client\Model\SdtmigDatasets
```



Get SDTMIG Dataset List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSdtmigVersionDatasetsGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionDatasetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SdtmigDatasets**](../Model/SdtmigDatasets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmigVersionGet()`

```php
mdrSdtmigVersionGet($version): \OpenAPI\Client\Model\SdtmigProduct
```



Get SDTMIG product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SDTMImplementationGuideSDTMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 3-3; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSdtmigVersionGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SDTMImplementationGuideSDTMIGApi->mdrSdtmigVersionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SdtmigProduct**](../Model/SdtmigProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
