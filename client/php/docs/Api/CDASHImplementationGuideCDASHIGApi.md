# OpenAPI\Client\CDASHImplementationGuideCDASHIGApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrCdashigVersionClassesClassDomainsGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains |  |
| [**mdrCdashigVersionClassesClassGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} |  |
| [**mdrCdashigVersionClassesClassScenariosGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios |  |
| [**mdrCdashigVersionClassesGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes |  |
| [**mdrCdashigVersionDomainsDomainFieldsFieldGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} |  |
| [**mdrCdashigVersionDomainsDomainFieldsGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields |  |
| [**mdrCdashigVersionDomainsDomainGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} |  |
| [**mdrCdashigVersionDomainsGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains |  |
| [**mdrCdashigVersionGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} |  |
| [**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} |  |
| [**mdrCdashigVersionScenariosDomainScenarioFieldsGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields |  |
| [**mdrCdashigVersionScenariosDomainScenarioGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} |  |
| [**mdrCdashigVersionScenariosGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios |  |
| [**mdrRootCdashigDomainsDomainFieldsFieldGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} |  |
| [**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet()**](CDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} |  |


## `mdrCdashigVersionClassesClassDomainsGet()`

```php
mdrCdashigVersionClassesClassDomainsGet($version, $class): \OpenAPI\Client\Model\CdashigClassDomains
```



Get CDASHIG Class Domain List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$class = Findings; // string | CDASHIG Class Identifier

try {
    $result = $apiInstance->mdrCdashigVersionClassesClassDomainsGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassDomainsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| CDASHIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigClassDomains**](../Model/CdashigClassDomains.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionClassesClassGet()`

```php
mdrCdashigVersionClassesClassGet($version, $class): \OpenAPI\Client\Model\CdashigClass
```



Get CDASHIG Class

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$class = Findings; // string | CDASHIG Class Identifier

try {
    $result = $apiInstance->mdrCdashigVersionClassesClassGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| CDASHIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigClass**](../Model/CdashigClass.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionClassesClassScenariosGet()`

```php
mdrCdashigVersionClassesClassScenariosGet($version, $class): \OpenAPI\Client\Model\CdashigClassScenarios
```



Get CDASHIG Class Scenario List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$class = Findings; // string | CDASHIG Class Identifier

try {
    $result = $apiInstance->mdrCdashigVersionClassesClassScenariosGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesClassScenariosGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| CDASHIG Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigClassScenarios**](../Model/CdashigClassScenarios.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionClassesGet()`

```php
mdrCdashigVersionClassesGet($version): \OpenAPI\Client\Model\CdashigProductClasses
```



Get CDASHIG Class List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashigVersionClassesGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionClassesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashigProductClasses**](../Model/CdashigProductClasses.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionDomainsDomainFieldsFieldGet()`

```php
mdrCdashigVersionDomainsDomainFieldsFieldGet($version, $domain, $field): \OpenAPI\Client\Model\CdashigDomainField
```



Get CDASHIG Domain Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$domain = VS; // string | CDASHIG Domain Identifier
$field = VSDAT; // string | CDASHIG Field Identifier

try {
    $result = $apiInstance->mdrCdashigVersionDomainsDomainFieldsFieldGet($version, $domain, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASHIG Domain Identifier | |
| **field** | **string**| CDASHIG Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigDomainField**](../Model/CdashigDomainField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionDomainsDomainFieldsGet()`

```php
mdrCdashigVersionDomainsDomainFieldsGet($version, $domain): \OpenAPI\Client\Model\CdashigDomainFields
```



Get CDASHIG Domain Field List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$domain = VS; // string | CDASHIG Domain Identifier

try {
    $result = $apiInstance->mdrCdashigVersionDomainsDomainFieldsGet($version, $domain);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainFieldsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASHIG Domain Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigDomainFields**](../Model/CdashigDomainFields.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionDomainsDomainGet()`

```php
mdrCdashigVersionDomainsDomainGet($version, $domain): \OpenAPI\Client\Model\CdashigDomain
```



Get CDASHIG Domain

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$domain = VS; // string | CDASHIG Domain Identifier

try {
    $result = $apiInstance->mdrCdashigVersionDomainsDomainGet($version, $domain);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsDomainGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASHIG Domain Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigDomain**](../Model/CdashigDomain.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionDomainsGet()`

```php
mdrCdashigVersionDomainsGet($version): \OpenAPI\Client\Model\CdashigProductDomains
```



Get CDASHIG Domain List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashigVersionDomainsGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionDomainsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashigProductDomains**](../Model/CdashigProductDomains.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionGet()`

```php
mdrCdashigVersionGet($version): \OpenAPI\Client\Model\CdashigProduct
```



Get CDASHIG Product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashigVersionGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashigProduct**](../Model/CdashigProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet()`

```php
mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet($version, $domain, $scenario, $field): \OpenAPI\Client\Model\CdashigScenarioField
```



Get CDASHIG Scenario Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$domain = VS; // string | CDASHIG Domain Identifier
$scenario = Generic; // string | CDASHIG Scenario Identifier
$field = VSDAT; // string | CDASHIG Field Identifier

try {
    $result = $apiInstance->mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet($version, $domain, $scenario, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASHIG Domain Identifier | |
| **scenario** | **string**| CDASHIG Scenario Identifier | |
| **field** | **string**| CDASHIG Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigScenarioField**](../Model/CdashigScenarioField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionScenariosDomainScenarioFieldsGet()`

```php
mdrCdashigVersionScenariosDomainScenarioFieldsGet($version, $domain, $scenario): \OpenAPI\Client\Model\CdashigScenarioFields
```



Get CDASHIG Scenario Field List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$domain = VS; // string | CDASHIG Domain Identifier
$scenario = HorizontalGeneric; // string | CDASHIG Scenario Identifier

try {
    $result = $apiInstance->mdrCdashigVersionScenariosDomainScenarioFieldsGet($version, $domain, $scenario);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioFieldsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASHIG Domain Identifier | |
| **scenario** | **string**| CDASHIG Scenario Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigScenarioFields**](../Model/CdashigScenarioFields.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionScenariosDomainScenarioGet()`

```php
mdrCdashigVersionScenariosDomainScenarioGet($version, $domain, $scenario): \OpenAPI\Client\Model\CdashigScenario
```



Get CDASHIG Scenario

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version
$domain = VS; // string | CDASHIG Domain Identifier
$scenario = HorizontalGeneric; // string | CDASHIG Scenario Identifier

try {
    $result = $apiInstance->mdrCdashigVersionScenariosDomainScenarioGet($version, $domain, $scenario);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosDomainScenarioGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASHIG Domain Identifier | |
| **scenario** | **string**| CDASHIG Scenario Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashigScenario**](../Model/CdashigScenario.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashigVersionScenariosGet()`

```php
mdrCdashigVersionScenariosGet($version): \OpenAPI\Client\Model\CdashigProductScenarios
```



Get CDASHIG Scenario List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 2-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashigVersionScenariosGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrCdashigVersionScenariosGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashigProductScenarios**](../Model/CdashigProductScenarios.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootCdashigDomainsDomainFieldsFieldGet()`

```php
mdrRootCdashigDomainsDomainFieldsFieldGet($domain, $field): \OpenAPI\Client\Model\RootCdashigDomainField
```



Get Root CDASHIG Domain Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$domain = VS; // string | CDASHIG Domain Identifier
$field = VSDAT; // string | CDASHIG Field Identifier

try {
    $result = $apiInstance->mdrRootCdashigDomainsDomainFieldsFieldGet($domain, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrRootCdashigDomainsDomainFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **string**| CDASHIG Domain Identifier | |
| **field** | **string**| CDASHIG Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootCdashigDomainField**](../Model/RootCdashigDomainField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootCdashigScenariosDomainScenarioFieldsFieldGet()`

```php
mdrRootCdashigScenariosDomainScenarioFieldsFieldGet($domain, $scenario, $field): \OpenAPI\Client\Model\RootCdashigScenarioField
```



Get Root CDASHIG Scenario Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\CDASHImplementationGuideCDASHIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$domain = VS; // string | CDASHIG Domain Identifier
$scenario = Generic; // string | CDASHIG Scenario Identifier
$field = VSDAT; // string | CDASHIG Field Identifier

try {
    $result = $apiInstance->mdrRootCdashigScenariosDomainScenarioFieldsFieldGet($domain, $scenario, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CDASHImplementationGuideCDASHIGApi->mdrRootCdashigScenariosDomainScenarioFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **string**| CDASHIG Domain Identifier | |
| **scenario** | **string**| CDASHIG Scenario Identifier | |
| **field** | **string**| CDASHIG Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootCdashigScenarioField**](../Model/RootCdashigScenarioField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
