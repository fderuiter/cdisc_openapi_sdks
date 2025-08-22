# OpenAPI\Client\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrCdashVersionClassesClassDomainsGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains |  |
| [**mdrCdashVersionClassesClassFieldsFieldGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} |  |
| [**mdrCdashVersionClassesClassGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} |  |
| [**mdrCdashVersionClassesGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes |  |
| [**mdrCdashVersionDomainsDomainFieldsFieldGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} |  |
| [**mdrCdashVersionDomainsDomainFieldsGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields |  |
| [**mdrCdashVersionDomainsDomainGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} |  |
| [**mdrCdashVersionDomainsGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains |  |
| [**mdrCdashVersionGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} |  |
| [**mdrRootCdashClassesClassFieldsFieldGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} |  |
| [**mdrRootCdashDomainsDomainFieldsFieldGet()**](ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} |  |


## `mdrCdashVersionClassesClassDomainsGet()`

```php
mdrCdashVersionClassesClassDomainsGet($version, $class): \OpenAPI\Client\Model\CdashClassDomains
```



Get CDASH Class Domain List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version
$class = SpecialPurpose; // string | CDASH Class Identifier

try {
    $result = $apiInstance->mdrCdashVersionClassesClassDomainsGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassDomainsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| CDASH Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashClassDomains**](../Model/CdashClassDomains.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionClassesClassFieldsFieldGet()`

```php
mdrCdashVersionClassesClassFieldsFieldGet($version, $class, $field): \OpenAPI\Client\Model\CdashClassField
```



Get CDASH Class Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version
$class = Timing; // string | CDASH Class Identifier
$field = --DAT; // string | CDASH Field Identifier

try {
    $result = $apiInstance->mdrCdashVersionClassesClassFieldsFieldGet($version, $class, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| CDASH Class Identifier | |
| **field** | **string**| CDASH Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashClassField**](../Model/CdashClassField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionClassesClassGet()`

```php
mdrCdashVersionClassesClassGet($version, $class): \OpenAPI\Client\Model\CdashClass
```



Get CDASH Class

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version
$class = Timing; // string | CDASH Class Identifier

try {
    $result = $apiInstance->mdrCdashVersionClassesClassGet($version, $class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesClassGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **class** | **string**| CDASH Class Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashClass**](../Model/CdashClass.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionClassesGet()`

```php
mdrCdashVersionClassesGet($version): \OpenAPI\Client\Model\CdashProductClasses
```



Get CDASH Class List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashVersionClassesGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionClassesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashProductClasses**](../Model/CdashProductClasses.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionDomainsDomainFieldsFieldGet()`

```php
mdrCdashVersionDomainsDomainFieldsFieldGet($version, $domain, $field): \OpenAPI\Client\Model\CdashDomainField
```



Get CDASH Domain Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version
$domain = DM; // string | CDASH Domain Identifier
$field = AGE; // string | CDASH Field Identifier

try {
    $result = $apiInstance->mdrCdashVersionDomainsDomainFieldsFieldGet($version, $domain, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASH Domain Identifier | |
| **field** | **string**| CDASH Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashDomainField**](../Model/CdashDomainField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionDomainsDomainFieldsGet()`

```php
mdrCdashVersionDomainsDomainFieldsGet($version, $domain): \OpenAPI\Client\Model\CdashDomainFields
```



Get CDASH Domain Field List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version
$domain = DM; // string | CDASH Domain Identifier

try {
    $result = $apiInstance->mdrCdashVersionDomainsDomainFieldsGet($version, $domain);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainFieldsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASH Domain Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashDomainFields**](../Model/CdashDomainFields.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionDomainsDomainGet()`

```php
mdrCdashVersionDomainsDomainGet($version, $domain): \OpenAPI\Client\Model\CdashDomain
```



Get CDASH Domain

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version
$domain = DM; // string | CDASH Domain Identifier

try {
    $result = $apiInstance->mdrCdashVersionDomainsDomainGet($version, $domain);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsDomainGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |
| **domain** | **string**| CDASH Domain Identifier | |

### Return type

[**\OpenAPI\Client\Model\CdashDomain**](../Model/CdashDomain.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionDomainsGet()`

```php
mdrCdashVersionDomainsGet($version): \OpenAPI\Client\Model\CdashProductDomains
```



Get CDASH Domain List

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashVersionDomainsGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionDomainsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashProductDomains**](../Model/CdashProductDomains.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrCdashVersionGet()`

```php
mdrCdashVersionGet($version): \OpenAPI\Client\Model\CdashProduct
```



Get CDASH Product

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$version = 1-1; // string | CDISC Library Product Version

try {
    $result = $apiInstance->mdrCdashVersionGet($version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrCdashVersionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **version** | **string**| CDISC Library Product Version | |

### Return type

[**\OpenAPI\Client\Model\CdashProduct**](../Model/CdashProduct.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/csv`, `application/vnd.ms-excel`, `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootCdashClassesClassFieldsFieldGet()`

```php
mdrRootCdashClassesClassFieldsFieldGet($class, $field): \OpenAPI\Client\Model\RootCdashClassField
```



Get Root CDASH Class Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$class = Timing; // string | CDASH Class Identifier
$field = --DAT; // string | CDASH Field Identifier

try {
    $result = $apiInstance->mdrRootCdashClassesClassFieldsFieldGet($class, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrRootCdashClassesClassFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **class** | **string**| CDASH Class Identifier | |
| **field** | **string**| CDASH Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootCdashClassField**](../Model/RootCdashClassField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrRootCdashDomainsDomainFieldsFieldGet()`

```php
mdrRootCdashDomainsDomainFieldsFieldGet($domain, $field): \OpenAPI\Client\Model\RootCdashDomainField
```



Get Root CDASH Domain Field

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$domain = DM; // string | CDASH Domain Identifier
$field = AGE; // string | CDASH Field Identifier

try {
    $result = $apiInstance->mdrRootCdashDomainsDomainFieldsFieldGet($domain, $field);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ClinicalDataAcquisitionStandardsHarmonizationCDASHApi->mdrRootCdashDomainsDomainFieldsFieldGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **string**| CDASH Domain Identifier | |
| **field** | **string**| CDASH Field Identifier | |

### Return type

[**\OpenAPI\Client\Model\RootCdashDomainField**](../Model/RootCdashDomainField.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
