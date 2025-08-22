# OpenAPI\Client\StudyDataTabulationModelSDTMApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrRootSdtmClassesClassVariablesVarGet()**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} |  |
| [**mdrRootSdtmDatasetsDatasetVariablesVarGet()**](StudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmVersionClassesClassDatasetsGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets |  |
| [**mdrSdtmVersionClassesClassGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} |  |
| [**mdrSdtmVersionClassesClassVariablesGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables |  |
| [**mdrSdtmVersionClassesClassVariablesVarGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} |  |
| [**mdrSdtmVersionClassesGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes |  |
| [**mdrSdtmVersionDatasetsDatasetGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} |  |
| [**mdrSdtmVersionDatasetsDatasetVariablesGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables |  |
| [**mdrSdtmVersionDatasetsDatasetVariablesVarGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} |  |
| [**mdrSdtmVersionDatasetsGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets |  |
| [**mdrSdtmVersionGet()**](StudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} |  |


## `mdrRootSdtmClassesClassVariablesVarGet()`

```php
mdrRootSdtmClassesClassVariablesVarGet($class, $var): \OpenAPI\Client\Model\RootSdtmClassVariable
```



Get Root of SDTM Class Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$class = GeneralObservations; // string | SDTM Class Identifier
$var = --DTC; // string | SDTM Variable Identifier

try {
    $result = $apiInstance->mdrRootSdtmClassesClassVariablesVarGet($class, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrRootSdtmClassesClassVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **class** | **string**| SDTM Class Identifier | |
| **var** | **string**| SDTM Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootSdtmClassVariable**](../Model/RootSdtmClassVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootSdtmDatasetsDatasetVariablesVarGet()`

```php
mdrRootSdtmDatasetsDatasetVariablesVarGet($dataset, $var): \OpenAPI\Client\Model\RootSdtmDatasetVariable
```



Get Root SDTM Dataset Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$dataset = DM; // string | SDTM Dataset Identifier
$var = SUBJID; // string | SDTM Variable Identifier

try {
    $result = $apiInstance->mdrRootSdtmDatasetsDatasetVariablesVarGet($dataset, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrRootSdtmDatasetsDatasetVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **dataset** | **string**| SDTM Dataset Identifier | |
| **var** | **string**| SDTM Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootSdtmDatasetVariable**](../Model/RootSdtmDatasetVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionClassesClassDatasetsGet()`

```php
mdrSdtmVersionClassesClassDatasetsGet($version, $class): \OpenAPI\Client\Model\SdtmClassDatasets
```



Get SDTM Class Dataset List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$class = SpecialPurpose; // string | SDTM Class Identifier

try {
    $result = $apiInstance->mdrSdtmVersionClassesClassDatasetsGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassDatasetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SDTM Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmClassDatasets**](../Model/SdtmClassDatasets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionClassesClassGet()`

```php
mdrSdtmVersionClassesClassGet($version, $class): \OpenAPI\Client\Model\SdtmClass
```



Get SDTM Class

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$class = Findings; // string | SDTM Class Identifier

try {
    $result = $apiInstance->mdrSdtmVersionClassesClassGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SDTM Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmClass**](../Model/SdtmClass.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionClassesClassVariablesGet()`

```php
mdrSdtmVersionClassesClassVariablesGet($version, $class): \OpenAPI\Client\Model\SdtmClassVariables
```



Get SDTM Class Variable List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$class = GeneralObservations; // string | SDTM Class Identifier

try {
    $result = $apiInstance->mdrSdtmVersionClassesClassVariablesGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassVariablesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SDTM Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmClassVariables**](../Model/SdtmClassVariables.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionClassesClassVariablesVarGet()`

```php
mdrSdtmVersionClassesClassVariablesVarGet($version, $class, $var): \OpenAPI\Client\Model\SdtmClassVariable
```



Get SDTM Class Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$class = GeneralObservations; // string | SDTM Class Identifier
$var = --DTC; // string | SDTM Variable Identifier

try {
    $result = $apiInstance->mdrSdtmVersionClassesClassVariablesVarGet($version, $class, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesClassVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| SDTM Class Identifier | |
| **var** | **string**| SDTM Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmClassVariable**](../Model/SdtmClassVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionClassesGet()`

```php
mdrSdtmVersionClassesGet($version): \OpenAPI\Client\Model\SdtmClasses
```



Get SDTM Class List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSdtmVersionClassesGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionClassesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SdtmClasses**](../Model/SdtmClasses.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionDatasetsDatasetGet()`

```php
mdrSdtmVersionDatasetsDatasetGet($version, $dataset): \OpenAPI\Client\Model\SdtmDataset
```



Get SDTM Dataset

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$dataset = DM; // string | SDTM Dataset Identifier

try {
    $result = $apiInstance->mdrSdtmVersionDatasetsDatasetGet($version, $dataset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SDTM Dataset Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmDataset**](../Model/SdtmDataset.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionDatasetsDatasetVariablesGet()`

```php
mdrSdtmVersionDatasetsDatasetVariablesGet($version, $dataset): \OpenAPI\Client\Model\SdtmDatasetVariables
```



Get SDTM Dataset Variable List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$dataset = DM; // string | SDTM Dataset Identifier

try {
    $result = $apiInstance->mdrSdtmVersionDatasetsDatasetVariablesGet($version, $dataset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetVariablesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SDTM Dataset Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmDatasetVariables**](../Model/SdtmDatasetVariables.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionDatasetsDatasetVariablesVarGet()`

```php
mdrSdtmVersionDatasetsDatasetVariablesVarGet($version, $dataset, $var): \OpenAPI\Client\Model\SdtmDatasetVariable
```



Get SDTM Dataset Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version
$dataset = DM; // string | SDTM Dataset Identifier
$var = SUBJID; // string | SDTM Variable Identifier

try {
    $result = $apiInstance->mdrSdtmVersionDatasetsDatasetVariablesVarGet($version, $dataset, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsDatasetVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **dataset** | **string**| SDTM Dataset Identifier | |
| **var** | **string**| SDTM Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\SdtmDatasetVariable**](../Model/SdtmDatasetVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionDatasetsGet()`

```php
mdrSdtmVersionDatasetsGet($version): \OpenAPI\Client\Model\SdtmDatasets
```



Get SDTM Dataset List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSdtmVersionDatasetsGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionDatasetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SdtmDatasets**](../Model/SdtmDatasets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSdtmVersionGet()`

```php
mdrSdtmVersionGet($version): \OpenAPI\Client\Model\SdtmProduct
```



Get SDTM product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\StudyDataTabulationModelSDTMApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-8; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrSdtmVersionGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StudyDataTabulationModelSDTMApi->mdrSdtmVersionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\SdtmProduct**](../Model/SdtmProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
