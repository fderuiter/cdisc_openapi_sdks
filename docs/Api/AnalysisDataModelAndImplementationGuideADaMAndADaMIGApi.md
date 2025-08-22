# OpenAPI\Client\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrAdamProductDatastructuresGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures |  |
| [**mdrAdamProductDatastructuresStructureGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} |  |
| [**mdrAdamProductDatastructuresStructureVariablesGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables |  |
| [**mdrAdamProductDatastructuresStructureVariablesVarGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} |  |
| [**mdrAdamProductDatastructuresStructureVarsetsGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets |  |
| [**mdrAdamProductDatastructuresStructureVarsetsVarsetGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} |  |
| [**mdrAdamProductGet()**](AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} |  |


## `mdrAdamProductDatastructuresGet()`

```php
mdrAdamProductDatastructuresGet($product): \OpenAPI\Client\Model\AdamProductDatastructures
```



Get ADaM Data Structure List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product

try {
    $result = $apiInstance->mdrAdamProductDatastructuresGet($product);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |

### Return type

[**\OpenAPI\Client\Model\AdamProductDatastructures**](../Model/AdamProductDatastructures.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrAdamProductDatastructuresStructureGet()`

```php
mdrAdamProductDatastructuresStructureGet($product, $structure): \OpenAPI\Client\Model\AdamDatastructure
```



Get ADaM Data Structure

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product
$structure = ADSL; // string | Data structure Identifier

try {
    $result = $apiInstance->mdrAdamProductDatastructuresStructureGet($product, $structure);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |
| **structure** | **string**| Data structure Identifier | |

### Return type

[**\OpenAPI\Client\Model\AdamDatastructure**](../Model/AdamDatastructure.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrAdamProductDatastructuresStructureVariablesGet()`

```php
mdrAdamProductDatastructuresStructureVariablesGet($product, $structure): \OpenAPI\Client\Model\AdamDatastructureVariables
```



Get ADaM Variable List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product
$structure = ADSL; // string | ADaM Data Structure Identifier

try {
    $result = $apiInstance->mdrAdamProductDatastructuresStructureVariablesGet($product, $structure);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVariablesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |
| **structure** | **string**| ADaM Data Structure Identifier | |

### Return type

[**\OpenAPI\Client\Model\AdamDatastructureVariables**](../Model/AdamDatastructureVariables.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrAdamProductDatastructuresStructureVariablesVarGet()`

```php
mdrAdamProductDatastructuresStructureVariablesVarGet($product, $structure, $var): \OpenAPI\Client\Model\AdamVariable
```



Get ADaM Variable

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product
$structure = ADSL; // string | ADaM Data Structure Identifier
$var = SITEGRy; // string | ADaM Variable Identifier

try {
    $result = $apiInstance->mdrAdamProductDatastructuresStructureVariablesVarGet($product, $structure, $var);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVariablesVarGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |
| **structure** | **string**| ADaM Data Structure Identifier | |
| **var** | **string**| ADaM Variable Identifier | |

### Return type

[**\OpenAPI\Client\Model\AdamVariable**](../Model/AdamVariable.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrAdamProductDatastructuresStructureVarsetsGet()`

```php
mdrAdamProductDatastructuresStructureVarsetsGet($product, $structure): \OpenAPI\Client\Model\AdamDatastructureVarsets
```



Get ADaM Variable Set List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product
$structure = ADSL; // string | ADaM Data Structure Identifier

try {
    $result = $apiInstance->mdrAdamProductDatastructuresStructureVarsetsGet($product, $structure);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVarsetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |
| **structure** | **string**| ADaM Data Structure Identifier | |

### Return type

[**\OpenAPI\Client\Model\AdamDatastructureVarsets**](../Model/AdamDatastructureVarsets.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrAdamProductDatastructuresStructureVarsetsVarsetGet()`

```php
mdrAdamProductDatastructuresStructureVarsetsVarsetGet($product, $structure, $varset): \OpenAPI\Client\Model\AdamVarset
```



Get ADaM Variable Set

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product
$structure = ADSL; // string | ADaM Data Structure Identifier
$varset = Identifier; // string | ADaM Variable Set Identifier

try {
    $result = $apiInstance->mdrAdamProductDatastructuresStructureVarsetsVarsetGet($product, $structure, $varset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresStructureVarsetsVarsetGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |
| **structure** | **string**| ADaM Data Structure Identifier | |
| **varset** | **string**| ADaM Variable Set Identifier | |

### Return type

[**\OpenAPI\Client\Model\AdamVarset**](../Model/AdamVarset.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrAdamProductGet()`

```php
mdrAdamProductGet($product): \OpenAPI\Client\Model\AdamProduct
```



Get ADaM Product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product

try {
    $result = $apiInstance->mdrAdamProductGet($product);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **product** | **string**| CDISC Library Product | |

### Return type

[**\OpenAPI\Client\Model\AdamProduct**](../Model/AdamProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
