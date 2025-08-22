# OpenAPI\Client\SearchesApi

All URIs are relative to https://library.cdisc.org/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mdrSearchGet()**](SearchesApi.md#mdrSearchGet) | **GET** /mdr/search |  |
| [**mdrSearchScopesGet()**](SearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes |  |
| [**mdrSearchScopesScopeGet()**](SearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} |  |


## `mdrSearchGet()`

```php
mdrSearchGet($q, $highlight, $start, $page_size, $class, $codelist, $concept_id, $core, $data_structure, $dataset_structure, $definition, $description, $domain, $effective_date, $extensible, $href, $label, $measure_type, $name, $preferred_term, $product, $product_group, $registration_status, $role_description, $sdtm_target, $simple_datatype, $submission_value, $synonyms, $type, $ui_href, $value_domain, $variable_set, $version): \OpenAPI\Client\Model\DefaultSearchResponse
```



Get Search Results Across CDISC Library

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SearchesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$q = 'q_example'; // string | Search Term Expression
$highlight = 'highlight_example'; // string | Search Highlight Expression
$start = 0; // float | Initial Search Result Index
$page_size = 100; // float | Number of Search Results to Return
$class = 'class_example'; // string | Limit Search by Setting Scope to Class
$codelist = 'codelist_example'; // string | Limit Search by Setting Scope to Codelist
$concept_id = 'concept_id_example'; // string | Limit Search by Setting Scope to Concept ID
$core = 'core_example'; // string | Limit Search by Setting Scope to Core
$data_structure = 'data_structure_example'; // string | Limit Search by Setting Scope to Data Structure
$dataset_structure = 'dataset_structure_example'; // string | Limit Search by Setting Scope to Dataset Structure
$definition = 'definition_example'; // string | Limit Search by Setting Scope to Definition
$description = 'description_example'; // string | Limit Search by Setting Scope to Description
$domain = 'domain_example'; // string | Limit Search by Setting Scope to Domain
$effective_date = 'effective_date_example'; // string | Limit Search by Setting Scope to Effective Date
$extensible = 'extensible_example'; // string | Limit Search by Setting Scope to Extensible
$href = 'href_example'; // string | Limit Search by Setting Scope to Href
$label = 'label_example'; // string | Limit Search by Setting Scope to Label
$measure_type = 'measure_type_example'; // string | SLimit Search by Setting Scope to Measure Type
$name = 'name_example'; // string | Limit Search by Setting Scope to Name
$preferred_term = 'preferred_term_example'; // string | Limit Search by Setting Scope to Preferred Term
$product = 'product_example'; // string | Limit Search by Setting Scope to Product
$product_group = 'product_group_example'; // string | Limit Search by Setting Scope to Product Group
$registration_status = 'registration_status_example'; // string | Limit Search by Setting Scope to Registration Status
$role_description = 'role_description_example'; // string | Limit Search by Setting Scope to Role Description
$sdtm_target = 'sdtm_target_example'; // string | Limit Search by Setting Scope to SDTM Target
$simple_datatype = 'simple_datatype_example'; // string | Limit Search by Setting Scope to Simple Datatype
$submission_value = 'submission_value_example'; // string | Limit Search by Setting Scope to Submission Value
$synonyms = 'synonyms_example'; // string | Limit Search by Setting Scope to Synonyms
$type = 'type_example'; // string | Limit Search by Setting Scope to Type
$ui_href = 'ui_href_example'; // string | Limit Search by Setting Scope to UI Href
$value_domain = 'value_domain_example'; // string | Limit Search by Setting Scope to Value Domain
$variable_set = 'variable_set_example'; // string | Limit Search by Setting Scope to Variable Set
$version = 'version_example'; // string | Limit Search by Setting Scope to Version

try {
    $result = $apiInstance->mdrSearchGet($q, $highlight, $start, $page_size, $class, $codelist, $concept_id, $core, $data_structure, $dataset_structure, $definition, $description, $domain, $effective_date, $extensible, $href, $label, $measure_type, $name, $preferred_term, $product, $product_group, $registration_status, $role_description, $sdtm_target, $simple_datatype, $submission_value, $synonyms, $type, $ui_href, $value_domain, $variable_set, $version);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SearchesApi->mdrSearchGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| Search Term Expression | |
| **highlight** | **string**| Search Highlight Expression | [optional] |
| **start** | **float**| Initial Search Result Index | [optional] [default to 0] |
| **page_size** | **float**| Number of Search Results to Return | [optional] [default to 100] |
| **class** | **string**| Limit Search by Setting Scope to Class | [optional] |
| **codelist** | **string**| Limit Search by Setting Scope to Codelist | [optional] |
| **concept_id** | **string**| Limit Search by Setting Scope to Concept ID | [optional] |
| **core** | **string**| Limit Search by Setting Scope to Core | [optional] |
| **data_structure** | **string**| Limit Search by Setting Scope to Data Structure | [optional] |
| **dataset_structure** | **string**| Limit Search by Setting Scope to Dataset Structure | [optional] |
| **definition** | **string**| Limit Search by Setting Scope to Definition | [optional] |
| **description** | **string**| Limit Search by Setting Scope to Description | [optional] |
| **domain** | **string**| Limit Search by Setting Scope to Domain | [optional] |
| **effective_date** | **string**| Limit Search by Setting Scope to Effective Date | [optional] |
| **extensible** | **string**| Limit Search by Setting Scope to Extensible | [optional] |
| **href** | **string**| Limit Search by Setting Scope to Href | [optional] |
| **label** | **string**| Limit Search by Setting Scope to Label | [optional] |
| **measure_type** | **string**| SLimit Search by Setting Scope to Measure Type | [optional] |
| **name** | **string**| Limit Search by Setting Scope to Name | [optional] |
| **preferred_term** | **string**| Limit Search by Setting Scope to Preferred Term | [optional] |
| **product** | **string**| Limit Search by Setting Scope to Product | [optional] |
| **product_group** | **string**| Limit Search by Setting Scope to Product Group | [optional] |
| **registration_status** | **string**| Limit Search by Setting Scope to Registration Status | [optional] |
| **role_description** | **string**| Limit Search by Setting Scope to Role Description | [optional] |
| **sdtm_target** | **string**| Limit Search by Setting Scope to SDTM Target | [optional] |
| **simple_datatype** | **string**| Limit Search by Setting Scope to Simple Datatype | [optional] |
| **submission_value** | **string**| Limit Search by Setting Scope to Submission Value | [optional] |
| **synonyms** | **string**| Limit Search by Setting Scope to Synonyms | [optional] |
| **type** | **string**| Limit Search by Setting Scope to Type | [optional] |
| **ui_href** | **string**| Limit Search by Setting Scope to UI Href | [optional] |
| **value_domain** | **string**| Limit Search by Setting Scope to Value Domain | [optional] |
| **variable_set** | **string**| Limit Search by Setting Scope to Variable Set | [optional] |
| **version** | **string**| Limit Search by Setting Scope to Version | [optional] |

### Return type

[**\OpenAPI\Client\Model\DefaultSearchResponse**](../Model/DefaultSearchResponse.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSearchScopesGet()`

```php
mdrSearchScopesGet(): \OpenAPI\Client\Model\MdrSearchScopesGet200Response
```



Get Search Results Across CDISC Library

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SearchesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mdrSearchScopesGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SearchesApi->mdrSearchScopesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\MdrSearchScopesGet200Response**](../Model/MdrSearchScopesGet200Response.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mdrSearchScopesScopeGet()`

```php
mdrSearchScopesScopeGet($scope): \OpenAPI\Client\Model\ScopeValues
```



Get Search Results Limited to Scope

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\SearchesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$scope = new \OpenAPI\Client\Model\\OpenAPI\Client\Model\DefaultSearchScopes(); // \OpenAPI\Client\Model\DefaultSearchScopes | Search Scope

try {
    $result = $apiInstance->mdrSearchScopesScopeGet($scope);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SearchesApi->mdrSearchScopesScopeGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **scope** | [**\OpenAPI\Client\Model\DefaultSearchScopes**](../Model/.md)| Search Scope | |

### Return type

[**\OpenAPI\Client\Model\ScopeValues**](../Model/ScopeValues.md)

### Authorization

[basicAuth](../../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
